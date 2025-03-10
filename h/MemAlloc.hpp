//
// Created by os on 4/13/24.
//

#ifndef PROJECT_BASE_V1_1_MEMALLOC_HPP
#define PROJECT_BASE_V1_1_MEMALLOC_HPP
//#include "syscall_cpp.hpp"
#include "../lib/hw.h"

struct BlockHead{
    BlockHead* next;
    size_t size;
};

class MemoryAllocator{

    static BlockHead* freeStart;
    static BlockHead* usedStart;

public:
    static void* mem_alloc(size_t size);

    static int mem_free(void* old);

    static void tryJoinWithNext(BlockHead* curr);

    static void init(){
        freeStart = (BlockHead*)((char*)HEAP_START_ADDR);
        usedStart = nullptr;

        freeStart->next = nullptr;
        freeStart->size = ((char*) HEAP_END_ADDR - (char *) HEAP_START_ADDR - sizeof(BlockHead));
    }
};
#endif //PROJECT_BASE_V1_1_MEMALLOC_HPP
