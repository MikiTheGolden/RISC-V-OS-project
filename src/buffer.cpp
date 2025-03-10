#include "../h/buffer.hpp"

Buffer::Buffer() : itemAvailable(_sem::init(0)){
   //sem_open(&itemAvailable, 0);
}

void Buffer::putc(char c) {
    if(count < bafSize){
        buffer[tail] = c;
        tail = (tail + 1)%bafSize;
        count++;
        itemAvailable->signal();
    }
}

char Buffer::getc() {
    itemAvailable->wait();
    char ret = buffer[head];
    head = (head + 1)%bafSize;
    count--;
    return ret;
}

void Buffer::init() {
    _sem* temp = _sem::init(0);
    itemAvailable = temp;
}
