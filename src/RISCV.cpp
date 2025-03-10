#include "../h/RISCV.hpp"

SleepingList RISCV::sleepingThreads;
SleepingList RISCV::semTimedWaitList;

bool RISCV::isMain = true;
bool RISCV::modeUser = false;

void RISCV::returnFromInter() {
    //ra pokazuje iza ove funkcije na nastavak wrappera
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

#pragma GCC optimize("O0")
extern "C" void RISCV::handleSupervisorTrap() {
    uint64 ra;
    asm volatile("ld %0, 8(s0)": "=r"(ra));
    uint64 scause, sepc, sstatus;
    __asm__ volatile("csrr %[scause], scause":[scause] "=r"(scause));
    __asm__ volatile("csrr %[sepc], sepc":[sepc] "=r"(sepc));
    __asm__ volatile("csrr %[stat], sstatus":[stat] "=r"(sstatus));


    if(scause == 0x0000000000000008 || scause == 0x0000000000000009){
        sepc += 4;
        size_t size;
        void* ptr;
        int retVal;
        uint64 a0, a1, a2, a3;
        __asm__ volatile("mv %[ax], a0":[ax] "=r"(a0));
        __asm__ volatile("mv %[ax], a1":[ax] "=r"(a1));
        __asm__ volatile("mv %[ax], a2":[ax] "=r"(a2));
        __asm__ volatile("mv %[ax], a3":[ax] "=r"(a3));
        //__asm__ volatile("mv %[ax], a4":[ax] "=r"(a4): : "a5", "a0", "a1", "a2", "a3", "a4", "a6", "a7");
        switch (a0) {
            case 0x01:
                //Called mem_alloc
                asm volatile("mv %0, a1":"=r"(size));
                size *= MEM_BLOCK_SIZE;                 //Fix later to have MemoryAllocator::mem_alloc take blocks
                ptr = MemoryAllocator::mem_alloc(size);
                //ptr = __mem_alloc(size);
                asm volatile("mv t0, %0"::"r"(ptr));
                asm volatile ("sw t0, 80(x8)");
                break;
            case 0x02:
                //Called mem_free
                asm volatile("mv %0, a1":"=r"(ptr));
                retVal = MemoryAllocator::mem_free(ptr);
                //retVal = __mem_free(ptr);
                asm volatile("mv t0, %0"::"r"(retVal));
                asm volatile ("sw t0, 80(x8)");
                break;

            case 0x11:
                //Called thread create
                *((thread_t*)a1)= _thread::createThread((_thread::Func )a2, (void*)a3, ra);
                if (*((thread_t*)a1) != nullptr) {

                    if (!isMain) {
                        Scheduler::put(*((thread_t*)a1));
                    } else {
                        isMain = false;
                        _thread::running = *((thread_t*)a1);
                    }
                    __asm__ volatile("li t0, 0");
                } else {
                    __asm__ volatile("li t0, -1");
                }
                asm volatile ("sw t0, 80(x8)");
                break;
            case 0x12:
                //Called thread exit
                _thread::running->setFinished();
                asm volatile("li t0, 0");
                asm volatile ("sw t0, 80(x8)");
                if(!isMain) {
                    _thread::dispatch();
                }
                break;

            case 0x13:
                //Called thread_dispatch
                _thread::runningTimeSlice = 0;
                _thread::dispatch();
                break;
            case 0x21:
                //Called sem_open
                *((sem_t*)a1) = _sem::init((int)a2);
                if(*((sem_t*)a1) != nullptr){
                    asm volatile("li t0, 0");
                } else {
                    asm volatile("li t0, -1");
                }
                asm volatile ("sw t0, 80(x8)");
                break;
            case 0x22:
                //Called sem_close
                _sem::close_sem((sem_t)a1);
                asm volatile("li t0, 0");
                asm volatile ("sw t0, 80(x8)");
                delete (sem_t)a1;
                break;
            case 0x23:
                //Called sem_wait
                ((sem_t)a1)->wait();
                asm volatile ("sw t0, 80(x8)");
                break;
            case 0x24:
                //Called sem_signal
                ((sem_t)a1)->signal();
                asm volatile ("sw t0, 80(x8)");
                break;
            case 0x25:
                //Called sem_timedwait              Implement later
                ((sem_t)a1)->timedWait((time_t)a2);
                asm volatile("li t0, 0");
                asm volatile ("sw t0, 80(x8)");
                break;
            case 0x26:
                //Called sem_trywait
                if(((sem_t)a1)->try_wait() == 0){
                    asm volatile("li t0, 1");
                } else {
                    asm volatile("li t0, 0");
                }
                asm volatile ("sw t0, 80(x8)");
                break;
            case 0x31:
                //Called time_sleep
                if((time_t)a1 != 0){
                    _thread::running->setSleepWait(true);
                    RISCV::sleepingThreads.put(_thread::running, (time_t)a1);
                }
                _thread::dispatch();
                break;
            case 0x41:
                //Called getc
                char read;
                read = IO::_getC();
                asm volatile("mv t0, %0"::"r"(read));
                asm volatile ("sw t0, 80(x8)");
                break;
            case 0x42:
                //Called putc
                char out;
                out = (char )a1;
                IO::_putC(out);
                break;
        }
    }else if (scause == 0x8000000000000009){

        if(plic_claim() == CONSOLE_IRQ){
            if ((*((char*)CONSOLE_STATUS)) & CONSOLE_RX_STATUS_BIT){
                volatile char ch = *(char*)CONSOLE_RX_DATA;
                if(ch != '\000'){
                    IO::inputBuffer.putc(ch);
                }

            }
            plic_complete(CONSOLE_IRQ);
        }

    }else if (scause == 0x8000000000000001){
        //Prekid od tajmera
        time_t firstTimeSleep = sleepingThreads.peekFirst();
        time_t firstTimeWait = semTimedWaitList.peekFirst();
        time_t t1 = -1;
        if(firstTimeSleep != t1){
            sleepingThreads.tickTime();
            if(sleepingThreads.peekFirst() == 0){
                sleepingThreads.wakeThreads();
            }
        }

        if(firstTimeWait != t1){
            semTimedWaitList.tickTime();
            if(semTimedWaitList.peekFirst() == 0){
                semTimedWaitList.wakeThreads();
            }
        }

        _thread::runningTimeSlice++;
        RISCV::mc_sip(RISCV::SIP_SSIP);
        if(_thread::runningTimeSlice >= _thread::running->timeSlice){
            _thread::dispatch();
        }
    } else {
        _thread::running->setFinished();
        if(!isMain) {
            _thread::dispatch();
        }
    }


    if ((*((char*)CONSOLE_STATUS)) & CONSOLE_RX_STATUS_BIT){
        volatile char ch = *(char*)CONSOLE_RX_DATA;
        if(ch != '\0'){
            IO::inputBuffer.putc(ch);
        }

    }

    if(IO::outputBuffer.getCount() > 0) {
        while ((*((char *) CONSOLE_STATUS)) & CONSOLE_TX_STATUS_BIT && IO::outputBuffer.getCount() > 0) {
            char c = IO::outputBuffer.getc();
            *((char *) CONSOLE_TX_DATA) = c;
        }
    }

    if(_thread::running && _thread::running->isAdmin){
        sstatus |= SSTATUS_SPP;
    } else if (_thread::running){
        sstatus &= ~SSTATUS_SPP;
    }
    write_sstatus(sstatus);
    write_sepc(sepc);
}




//
// Created by os on 5/20/24.
//
