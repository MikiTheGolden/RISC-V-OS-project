//
// Created by os on 5/20/24.
//

#ifndef PROJECT_BASE_V1_1_SCHEDULER_HPP
#define PROJECT_BASE_V1_1_SCHEDULER_HPP
#include "ThreadList.hpp"
class _thread;
class Scheduler{

public:
    static void put(_thread* tcb);
    static _thread* get();


    Scheduler(const Scheduler&) = delete;
    Scheduler& operator=(const Scheduler&) = delete;
private:
    static ThreadList active;
};
#endif //PROJECT_BASE_V1_1_SCHEDULER_HPP
