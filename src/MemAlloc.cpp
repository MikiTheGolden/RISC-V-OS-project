#include "../h/MemAlloc.hpp"




void updateUsed(BlockHead* usedS, BlockHead* newBlock){         //Places newBlock in usedS list
    if(!usedS){                                          //First block allocated
        usedS = newBlock;
        newBlock->next = nullptr;
    } else if ((char *) newBlock < (char*) usedS){      //New block goes as head block
        newBlock->next = usedS;
        usedS = newBlock;
    } else {                                            //Find where to place in list
        BlockHead* prevUsed = usedS;
        for(;prevUsed->next && (char*)prevUsed->next < (char *)newBlock; prevUsed = prevUsed->next);
        newBlock->next = prevUsed->next;
        prevUsed->next = newBlock;
    }
}

BlockHead* MemoryAllocator::freeStart = nullptr;
BlockHead* MemoryAllocator::usedStart = nullptr;

void *MemoryAllocator::mem_alloc(size_t size) {
    size_t actualSize;
    size += sizeof(BlockHead);
    if(size%MEM_BLOCK_SIZE == 0){
        actualSize = size;          //Size fits exactly in a block
    } else {
        actualSize = ((size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE) * MEM_BLOCK_SIZE; //Find block count then multiply by block size
    }
    BlockHead* prev = nullptr;
    BlockHead* curr = nullptr;
    for(curr = freeStart; curr != nullptr; curr = curr->next){
        if(curr->size > actualSize){        //Found the block we need, fragment it and update the lists
            BlockHead* freeFragment = (BlockHead*)((char*)curr + actualSize);

            //Update block sizes
            freeFragment->size = curr->size - actualSize;
            curr->size = actualSize;

            //Fix block order
            if(prev) prev->next = freeFragment;
            else freeStart = freeFragment;
            freeFragment->next = curr->next;

            //Place newly allocated block in used list

            if(!usedStart){                                          //First block allocated
                usedStart = curr;
                curr->next = nullptr;
            } else if ((char *) curr < (char*) usedStart){      //New block goes as head block
                curr->next = usedStart;
                usedStart = curr;
            } else {                                            //Find where to place in list
                BlockHead* prevUsed = usedStart;
                for(;prevUsed->next && (char*)prevUsed->next < (char *)curr; prevUsed = prevUsed->next);
                curr->next = prevUsed->next;
                prevUsed->next = curr;
            }
            break;
        } else if (curr->size == actualSize){   //Found block with exact size, no fragmenting needed
            if(prev) prev->next = curr->next;
            else freeStart = curr->next;

            if(!usedStart){                                          //First block allocated
                usedStart = curr;
                curr->next = nullptr;
            } else if ((char *) curr < (char*) usedStart){      //New block goes as head block
                curr->next = usedStart;
                usedStart = curr;
            } else {                                            //Find where to place in list
                BlockHead* prevUsed = usedStart;
                for(;prevUsed->next && (char*)prevUsed->next < (char *)curr; prevUsed = prevUsed->next);
                curr->next = prevUsed->next;
                prevUsed->next = curr;
            }
            break;
        } else {
            prev = curr;     //Current block doesn't fit, record it as previous
        }
    }

    return (char*)curr + sizeof(BlockHead);             //Could return nullptr but shouldn't happen
}


int MemoryAllocator::mem_free(void *old) {
    if(!old || old < HEAP_START_ADDR || old > HEAP_END_ADDR) return -1;
    if(usedStart == nullptr) return -2;

    BlockHead* curr = (BlockHead*)((char*)old - sizeof(BlockHead));
    if(curr < usedStart){       //Shouldn't happen
        return -3;
    }

    //Update used list
    if(curr == usedStart){
        usedStart = usedStart->next;
        curr->next = nullptr;
    } else {
        BlockHead* prev;
        for(prev = usedStart; prev->next && prev->next != curr; prev = prev->next);
        prev->next = curr->next;
        curr->next = nullptr;
    }

    //Update free list
    if(freeStart == nullptr){       //The only free block
        freeStart = curr;
        curr->next = nullptr;
    } else if ((char*) curr < (char *)freeStart){   //Goes before the first free block
        curr->next = freeStart;
        freeStart = curr;
        tryJoinWithNext(curr);
    } else {                        //Find where to insert in list
        BlockHead* prev = freeStart;
        BlockHead* temp = freeStart;
        for(; prev->next && (char*)prev->next < (char*)curr; prev = prev->next);

        curr->next = prev->next;
        prev->next = curr;
        tryJoinWithNext(curr);
        tryJoinWithNext(prev);
        BlockHead* temp2 = temp;
        int a = temp2 - temp;
        a++;
    }
    return 0;
}

void MemoryAllocator::tryJoinWithNext(BlockHead *curr) {
    if(curr->next && (char*)curr->next == (char*)curr + curr->size + sizeof(BlockHead)){
        curr->size += curr->next->size + sizeof (BlockHead);
        curr->next = curr->next->next;
    }
}

//
// Created by os on 5/19/24.
//
