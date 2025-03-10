//
// Created by os on 4/13/24.
//

#ifndef PROJECT_BASE_V1_1_LIST_HPP
#define PROJECT_BASE_V1_1_LIST_HPP
#include "../lib/hw.h"
#include "MemAlloc.hpp"
template<typename T> class List{ //REWRITE CODE TO INCLUDE T*
private:
    struct Elem{
        T* elem;
        Elem* next;
        Elem(T* elem) : elem(elem), next(nullptr){}
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
    Elem *head, *tail;
public:

    List() : head(nullptr), tail(nullptr){}

    List(const List<T>&) = delete;

    List<T>& operator=(const List<T>&) = delete;

    void addHead(T* el){
        Elem* elem = new Elem(el);
        if(head){
            elem->next = head;
            head = elem;
        } else {
            head = tail = elem;
        }
    }

    void addTail(T* el);

    T* peekHead(){
        if(head) return head->elem;
        return 0;
    }

    T* peekTail(){
        if(tail) return tail->elem;
        return 0;
    }

    T* popHead();

    T* popTail(){
        if(!head){ return 0;}
        Elem* curr = head;
        Elem* prev = 0;
        for(;curr != tail; curr = curr->next){
            prev = curr;
        }
        Elem* last = tail;
        T* ret = last->elem;
        if(prev) {prev->next = nullptr;} else {head = 0;}
        tail = prev;
        delete last;
        return ret;
    }
};

template<typename T>
void List<T>::addTail(T *el) {
    Elem* elem = new Elem(el);
    if(tail){
        tail->next = elem;
        tail = elem;
    } else {
        head = elem;
        tail = elem;
    }
}

template<typename T>
T *List<T>::popHead() {
    if(!head) return 0;
    Elem* curr = head;

    head = head->next;
    if(head == nullptr){tail = nullptr;}
    T* ret = curr->elem;
    delete curr;
    return ret;
}

#endif //PROJECT_BASE_V1_1_LIST_HPP
