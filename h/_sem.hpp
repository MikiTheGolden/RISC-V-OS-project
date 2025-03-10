//
// Created by os on 5/29/24.
//

#ifndef PROJECT_BASE_V1_1__SEM_HPP
#define PROJECT_BASE_V1_1__SEM_HPP
class ThreadList;
#include "ThreadList.hpp"
#include "_thread.hpp"


class _sem{
private:
    int value;
    ThreadList blocked;
    friend class RISCV;

    explicit _sem(int value) : value(value){}

    void block();

    void deblock();
public:
    void signal();

    void wait();

    void timedWait(time_t slice);

    void deblockTimedWait(_thread* wake);

    int try_wait();

    static _sem* init(int val);

    static void close_sem(sem_t handle);

    static void* operator new(size_t size);

    static void operator delete (void* ptr);

    _sem(const _sem&) = delete;

    _sem& operator=(const _sem&) = delete;

};
#endif //PROJECT_BASE_V1_1__SEM_HPP
