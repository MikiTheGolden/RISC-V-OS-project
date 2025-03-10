#include "../h/_sem.hpp"

void _sem::signal() {
    if(value++ < 0){
        deblock();
    }
}

void _sem::wait() {
    if(--value < 0){
        block();
    }
}

void _sem::deblock() {
    _thread* unblocked = blocked.popHead();
    unblocked->setBlocked(false);
    unblocked->mySem = nullptr;
    Scheduler::put(unblocked);
}

void _sem::block() {
    blocked.addTail(_thread::running);
    _thread::running->setBlocked(true);
    _thread::running->mySem = this;
    _thread::dispatch();
}

void *_sem::operator new(size_t size) {
    return MemoryAllocator::mem_alloc(size);
}

void _sem::operator delete(void *ptr) {
    MemoryAllocator::mem_free(ptr);
}

void _sem::close_sem(sem_t handle) {
    while (handle->blocked.peekHead() != nullptr){
        handle->deblock();
    }
}

int _sem::try_wait() {
    if(value - 1 < 0){
        return -1;
    } else {
        value--;
        return 0;
    }
}

_sem *_sem::init(int val) {
    _sem* ret = new _sem(val);
    return ret;
}

void _sem::timedWait(time_t slice) {
    if(--value < 0){
        RISCV::semTimedWaitList.put(_thread::running, slice);
        blocked.addTail(_thread::running);
        _thread::running->setTimedWait(true);
        _thread::running->setBlocked(true);
        _thread::running->mySem = this;
        _thread::dispatch();
    }
}

void _sem::deblockTimedWait(_thread *wake) {
    blocked.remove(wake);
    value++;
    wake->setBlocked(false);
    wake->mySem = nullptr;
    Scheduler::put(wake);
}
