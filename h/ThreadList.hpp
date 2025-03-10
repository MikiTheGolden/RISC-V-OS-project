//
// Created by os on 6/26/24.
//

#ifndef PROJECT_BASE_V1_1_THREADLIST_HPP
#define PROJECT_BASE_V1_1_THREADLIST_HPP
//#include "_thread.hpp"
#include "MemAlloc.hpp"
class _thread;
class ThreadList{
    struct Elem{
        _thread* elem;
        Elem* next;
        Elem(_thread* elem) : elem(elem), next(nullptr){}
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
        //Write new and delete after mem_alloc()
    };
    Elem *head = nullptr, *tail = nullptr;
public:

    void addTail(_thread* el){
        Elem* elem = new Elem(el);
        if(tail != nullptr){
            tail->next = elem;
            tail = elem;
        } else {
            head = elem;
            tail = elem;
        }
    }

    _thread* popHead(){
        if(!head) return 0;
        Elem* curr = head;

        head = head->next;
        if(head == nullptr){tail = nullptr;}
        _thread* ret = curr->elem;
        delete curr;
        return ret;
    }

    _thread* peekHead(){
        if(head != nullptr){ return head->elem;}
        return nullptr;
    }

    _thread* remove(_thread* victim){
        Elem* curr = head;
        for(; curr->next && curr->next->elem != victim; curr = curr->next);
        if(!curr->next) return nullptr;
        Elem* old = curr->next;
        _thread* ret = old->elem;
        curr->next = old->next;
        delete old;
        return ret;
    }
};
#endif //PROJECT_BASE_V1_1_THREADLIST_HPP
