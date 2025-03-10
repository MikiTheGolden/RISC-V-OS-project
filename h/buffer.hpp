//
// Created by os on 6/25/24.
//

#ifndef PROJECT_BASE_V1_1_BUFFER_HPP
#define PROJECT_BASE_V1_1_BUFFER_HPP
#include "_sem.hpp"

class Buffer{
public:
    Buffer();
    void putc(char c);
    char getc();
    uint64 getCount(){return count;}
    friend class IO;
    void init();
private:
    sem_t itemAvailable;
    static const uint64 bafSize = 256;
    char buffer[bafSize];
    uint64 head = 0, tail = 0, count = 0;
};
#endif //PROJECT_BASE_V1_1_BUFFER_HPP
