//
// Created by os on 5/20/24.
//

#ifndef PROJECT_BASE_V1_1__THREAD_HPP
#define PROJECT_BASE_V1_1__THREAD_HPP
#include "RISCV.hpp"
#include "../lib/hw.h"
#include "MemAlloc.hpp"
#include "Scheduler.hpp"

int main(int, char**);

void userMain(void*);

class _thread{
public:
    using Func = void(*)(void*);
    friend class RISCV;
    struct Context{
        uint64 ra;
        uint64 sp;
    };
    Func body;
    Context context;
    void* args;
    bool blocked;
    bool finished;
    bool timedWait;
    bool isAdmin;
    bool sleepWait = false;
    uint64 timeSlice;
    uint64* stack;
    _sem* mySem = nullptr;


public:

    static void outputThread(void *);

    static void wrapper();

    static _thread* running;
    static uint64 runningTimeSlice;


    _thread(Func body, void* args, uint64 mra);
    bool isBlocked(){return blocked;}
    bool isTimedWait(){return timedWait;}
    bool isFinished(){return finished;}
    bool isSleeping(){return sleepWait;}


    static _thread* createThread(Func func, void* args, uint64 mra);

    static void switchContext(Context* old, Context* newC);

    static void dispatch();


    void* operator new(size_t size){
        return MemoryAllocator::mem_alloc(size);
    }


    void operator delete (void* ptr){
        MemoryAllocator::mem_free(ptr);
    }


    void setBlocked(bool blck){blocked = blck;}
    void setTimedWait(bool tmdw){timedWait = tmdw;}
    void setSleepWait(bool sleep){sleepWait = sleep;}
    void setFinished(){finished = true;}





    ~_thread(){
        delete[] stack;
    }


};
#endif //PROJECT_BASE_V1_1__THREAD_HPP
