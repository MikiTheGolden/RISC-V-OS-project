#include "../h/syscall_c.h"

void* mem_alloc(size_t size){
    size_t actualSize;
    if(size % MEM_BLOCK_SIZE == 0){
        actualSize = size;
    } else {
        actualSize = ((size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE) * MEM_BLOCK_SIZE;
    }

    asm volatile ("mv a1, %0"::"r"(actualSize));
    asm volatile ("li a0, 0x01");
    asm volatile ("ecall");

    //After memory is allocated
    void* retPtr;
    asm volatile("mv %0, a0" : "=r"(retPtr));
    return retPtr;

}

int mem_free(void* ptr){

    asm volatile("mv a1, %0" :: "r"(ptr));
    asm volatile("li a0, 0x02");
    asm volatile("ecall");

    //After memory is freed
    int retVal;
    asm volatile("mv %0, a0":"=r"(retVal));
    return retVal;
}

int thread_create(thread_t* handle, void(*start_routine)(void*), void* arg){
    asm volatile("mv a3, %[arg]": :[arg] "r"(arg));
    asm volatile("mv a2, %[start]": :[start] "r"(
            start_routine));
    asm volatile("mv a1, %[handle]": :[handle] "r"(handle));
    asm volatile("li a0, 0x11");
    asm volatile("ecall");
    //Check if thread was successfully created
    int retVal;
    asm volatile("mv %0, a0":"=r"(retVal));
    if(retVal){
        handle = nullptr;   //Make sure handle is nullptr in case of failure
    }
    return retVal;
}

int thread_exit(){
    asm volatile("li a0, 0x12");        //Running thread is global and no need to pass it as a parameter
    asm volatile("ecall");

    //After thread is closed
    int retVal;
    asm volatile("mv %0, a0":"=r"(retVal));
    return retVal;
}

void thread_dispatch(){
    asm volatile("li a0, 0x13");
    asm volatile("ecall");
    //Potentially change thread, no return value
}

int sem_open(sem_t* handle, unsigned init){

    asm volatile("mv a2, %0"::"r"(init) : "a5", "a0", "a1", "a2", "a3", "a4", "a6", "a7");
    asm volatile("mv a1, %0"::"r"(handle) : "a5", "a0", "a1", "a2", "a3", "a4", "a6", "a7");
    asm volatile("li a0, 0x21");
    asm volatile("ecall");

    //Check if semaphore was created
    int retVal;
    asm volatile("mv %0, a0":"=r"(retVal));
    if(retVal){
        handle = nullptr;           //Make sure handle is nullptr in case of failure
    }
    return retVal;
}

int sem_close(sem_t handle){
    asm volatile("mv a1, %0"::"r"(handle) : "a5", "a0", "a1", "a2", "a3", "a4", "a6", "a7");
    asm volatile("li a0, 0x22");
    asm volatile("ecall");

    //After semaphore is closed
    int retVal;
    asm volatile("mv %0, a0":"=r"(retVal));
    return retVal;
}

int sem_wait(sem_t id){
    asm volatile("mv a1, %0"::"r"(id): "a5", "a0", "a1", "a2", "a3", "a4", "a6", "a7");
    asm volatile("li a0, 0x23");
    asm volatile("ecall");

    //After waiting at semaphore
    int retVal;
    asm volatile("mv %0, a0":"=r"(retVal));
    return retVal;
}

int sem_signal(sem_t id){
    asm volatile("mv a1, %0"::"r"(id): "a5", "a0", "a1", "a2", "a3", "a4", "a6", "a7");
    asm volatile("li a0, 0x24");
    asm volatile("ecall");

    //After signaling at semaphore
    int retVal;
    asm volatile("mv %0, a0":"=r"(retVal));
    return retVal;
}

int sem_timedwait(sem_t id, time_t timeout){            //Possibly rework for correct return value
    asm volatile("mv a2, %0"::"r"(timeout) : "a5", "a0", "a1", "a2", "a3", "a4", "a6", "a7");
    asm volatile("mv a1, %0"::"r"(id) : "a5", "a0", "a1", "a2", "a3", "a4", "a6", "a7");
    asm volatile("li a0, 0x25");
    asm volatile("ecall");

    //After waiting at semaphore
    int retVal;
    asm volatile("mv %0, a0":"=r"(retVal));
    return retVal;
}

int sem_trywait(sem_t id){
    asm volatile("mv a1, %0"::"r"(id): "a5", "a0", "a1", "a2", "a3", "a4", "a6", "a7");
    asm volatile("li a0, 0x26");
    asm volatile("ecall");

    //After signaling at semaphore
    int retVal;
    asm volatile("mv %0, a0":"=r"(retVal));
    return retVal;
}


int time_sleep(time_t slice){
    asm volatile("mv a1, %0"::"r"(slice));
    asm volatile("li a0, 0x31");
    asm volatile("ecall");
    return 0;
}

char getc (){
    asm volatile("li a0, 0x41");
    asm volatile("ecall");

    //After reading character from buffer
    char retChar;
    asm volatile("mv %0, a0":"=r"(retChar));
    return retChar;
}

void putc(char ch){
    asm volatile("mv a1, %0"::"r"(ch));
    asm volatile("li a0, 0x42");
    asm volatile("ecall");
    //After putting character
}

//
// Created by os on 5/20/24.
//
