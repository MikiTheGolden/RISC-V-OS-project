//
// Created by os on 6/25/24.
//

#ifndef PROJECT_BASE_V1_1_IO_HPP
#define PROJECT_BASE_V1_1_IO_HPP
class Buffer;
#include "buffer.hpp"
class IO{
public:
    static Buffer inputBuffer;
    static Buffer outputBuffer;
    static void initIO();
    static void closeIO();
    static void _putC(char);
    static char _getC();
};
#endif //PROJECT_BASE_V1_1_IO_HPP
