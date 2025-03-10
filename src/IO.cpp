#include "../h/IO.hpp"

Buffer IO::inputBuffer;
Buffer IO::outputBuffer;

void IO::initIO() {
    inputBuffer.init();
    outputBuffer.init();
}

void IO::_putC(char ch) {
    outputBuffer.putc(ch);
}

char IO::_getC() {
    return inputBuffer.getc();
}

void IO::closeIO() {
    _sem::close_sem(inputBuffer.itemAvailable);
    _sem::close_sem(outputBuffer.itemAvailable);
}
