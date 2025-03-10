

#ifndef PROJECT_BASE_V1_1_SLEEPINGLIST_HPP
#define PROJECT_BASE_V1_1_SLEEPINGLIST_HPP
#include "Scheduler.hpp"
#include "_thread.hpp"
#include "MemAlloc.hpp"
class SleepingList {
    struct Elem{
        _thread* thread;
        time_t relativeTime;
        Elem* next;
        Elem(_thread* thread, time_t relativeTime, Elem* next) : thread(thread), relativeTime(relativeTime), next(next){}

        static void* operator new(size_t size){
            return MemoryAllocator::mem_alloc(size);
        }

        static void* operator new[](size_t size){
            return MemoryAllocator::mem_alloc(size);
        }

        static void operator delete (void* prt){
            MemoryAllocator::mem_free(prt);
        }

        static void operator delete[](void* ptr){
            MemoryAllocator::mem_free(ptr);
        }
    };

    Elem *head, *tail;

public:
    SleepingList() : head(nullptr), tail(nullptr){   }

    SleepingList(const SleepingList&) = delete;

    SleepingList& operator=(const SleepingList&) = delete;

    void tickTime(){
        if(head != nullptr){
            head->relativeTime -= 1;
        }
    }

    time_t peekFirst(){
        if(head != nullptr){
            return head->relativeTime;
        }
        return -1;
    }

    void wakeThreads();

    void put(_thread* newSleep, time_t slice){
        if(!head){
            head = new Elem(newSleep, slice, nullptr);
            tail = head;
        } else {
            Elem* temp = head;
            Elem* prev = nullptr;
            while (temp != tail && slice >= temp->relativeTime){
                slice -= temp->relativeTime;
                prev = temp;
                temp = temp->next;
            }
            if(temp == tail){
                if(slice >= tail->relativeTime){
                    Elem* newElem = new Elem(newSleep, slice - tail->relativeTime, nullptr);
                    tail->next = newElem;
                    tail = newElem;
                } else {
                    Elem* newElem = new Elem(newSleep, slice, tail);
                    if(prev){
                        prev->next = newElem;
                    } else {
                        head = newElem;
                    }
                    tail->relativeTime -= slice;
                }
            } else {
                Elem* newElem = new Elem(newSleep, slice, temp);
                if(prev){
                    prev->next = newElem;
                } else {
                    head = newElem;
                }
                temp->relativeTime -= slice;
            }
        }
    }
};

#endif //PROJECT_BASE_V1_1_SLEEPINGLIST_HPP
