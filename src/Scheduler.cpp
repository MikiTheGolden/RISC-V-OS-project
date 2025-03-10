#include "../h/Scheduler.hpp"

ThreadList Scheduler::active;

void Scheduler::put(_thread *tcb) {
    active.addTail(tcb);
}

_thread *Scheduler::get() {
    _thread* ret = active.popHead();
    return ret;
}

//
// Created by os on 5/20/24.
//
