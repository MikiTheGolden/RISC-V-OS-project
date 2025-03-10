
#include "../h/syscall_cpp.hpp"

void* operator new(size_t size){
    return mem_alloc(size);
}

void operator delete (void* ptr){
    mem_free(ptr);
}


Thread::Thread(void (*body)(void *), void *arg) {
    this->body = body;
    this->arg = arg;
}

int Thread::sleep(time_t slice) {
    return time_sleep(slice);
}

void Thread::dispatch() {
    thread_dispatch();
}

Thread::Thread() {
    this->body = nullptr;
    this->arg = nullptr;
}

int Thread::start() {
    return thread_create(&myHandle, body, arg);
}

Thread::~Thread() {
    thread_exit();
}

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    sem_close(myHandle);
}

int Semaphore::wait() {
    return sem_wait(myHandle);
}

int Semaphore::signal() {
    return sem_signal(myHandle);
}

int Semaphore::timedWait(time_t slice) {
    return sem_timedwait(myHandle, slice);
}

int Semaphore::tryWait() {
    return sem_trywait(myHandle);
}

char Console::getc() {
    return ::getc();
}

void Console::putc(char ch) {
    ::putc(ch);
}

PeriodicThread::PeriodicThread(time_t period) : Thread(){
    this->period = period;
    this->start();
    while (true){
        this->run();
        time_sleep(period);
    }
}

void PeriodicThread::terminate() {
    thread_exit();
}
