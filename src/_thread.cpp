//
// Created by os on 5/28/24.
//
#include "../h/_thread.hpp"

_thread* _thread::running = nullptr;
uint64  _thread::runningTimeSlice = 0;

void _thread::dispatch() {
    _thread* old = _thread::running;

    if(!running->isFinished() && !running->isBlocked() && !running->isSleeping()){
        Scheduler::put(running);
    }
    _thread* next = Scheduler::get();
    _thread::running = next;
    _thread::runningTimeSlice = 0;
    if(old != _thread::running) {
        switchContext(&old->context, &running->context);
    }
}

_thread *_thread::createThread(_thread::Func func, void *args, uint64 mra) {
    _thread* newThread = new _thread(func, args, mra);
    return newThread;
}

void _thread::wrapper() {
    _thread::running->body(_thread::running->args);
    running->setFinished();
    thread_exit();
}

void _thread::outputThread(void *) {
    while (true){
        if(IO::outputBuffer.getCount() > 0) {
            while (*((char *) CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT) {
                char c = IO::outputBuffer.getc();
                *((char *) CONSOLE_TX_DATA) = c;
            }
        }
    }
}

_thread::_thread(_thread::Func body, void *args, uint64 mra) : body(body), context({0, 0}),args(args),blocked(false), finished(false),
                                                   timedWait(false), isAdmin(false), timeSlice(DEFAULT_TIME_SLICE), stack((uint64*)MemoryAllocator::mem_alloc(DEFAULT_STACK_SIZE)){
    uint64 ra = body != (Func)main ? (uint64)wrapper : 0;
    uint64 sp = body != (Func)main ? (uint64)((char *)stack + DEFAULT_STACK_SIZE) : 0;
    if(RISCV::isMain) {
        isAdmin = true;
    }
    this->context.ra = ra;
    this->context.sp = sp;
}

