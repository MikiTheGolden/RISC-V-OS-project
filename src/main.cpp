#include "../h/ThreadList.hpp"
#include "../h/RISCV.hpp"


bool finished = false;
extern void userMain();
void userWrapepr(void*){
    userMain();
    finished = true;
}

void idleFunc(void*){
    while (true){
        thread_dispatch();
    }
}

int main(int argc, char** argv){
    uint64 mra;
    asm volatile("mv %0, ra":"=r"(mra));
    RISCV::w_stvec((uint64) &RISCV::setVectorTable | 0x00);
    MemoryAllocator::init();
    IO::initIO();
    thread_t main;
    thread_t idle;
    uint64 arg = 69;
    thread_create(&main, (_thread::Func )main, nullptr);
    thread_t user_thread;
    thread_create(&user_thread, userWrapepr, (void*)arg);
    thread_create(&idle, idleFunc, nullptr);
    //  USER MODE STARTS HERE
    RISCV::setMode(true);
    while (!finished){
        thread_dispatch();
    }
    RISCV::isMain = true;
    RISCV::setMode(false);
    while (IO::outputBuffer.getCount() > 0){
        asm volatile("ecall");
    }
    _thread::running->setFinished();
    asm volatile("mv ra, %0"::"r"(mra));
    return 0;
}