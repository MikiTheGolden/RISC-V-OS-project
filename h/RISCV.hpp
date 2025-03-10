//
// Created by os on 5/20/24.
//

#ifndef PROJECT_BASE_V1_1_RISCV_HPP
#define PROJECT_BASE_V1_1_RISCV_HPP
class SleepingList;
#include "../lib/hw.h"
#include "syscall_c.h"
#include "Scheduler.hpp"
#include "SleepingList.hpp"
#include "IO.hpp"
#include "_thread.hpp"

class RISCV{
public:

    static bool modeUser;
    static bool isMain;

    static void setMode(bool newMode){
        modeUser = newMode;
    }

    enum BitMaskSip {
        //Software interrupt/Timer interrupt
        SIP_SSIP = (1 << 1),
        //Hardware interrupt
        SIP_SEIP = (1 << 9)
    };

    enum BitMaskSstatus {
        SSTATUS_SIE = (1 << 1),
        SSTATUS_SPIE = (1 << 5),
        SSTATUS_SPP = (1 << 8)
    };

    static void ms_sstatus(uint64 mask);


    static void returnFromInter();

    inline static void mc_sip(uint64 mask){
        asm volatile("csrc sip, %0"::"r"(mask));
    }


    inline static uint64 read_sepc(){
        uint64 volatile sepc;
        asm volatile("csrr %0, sepc" : "=r"(sepc));
        return sepc;
    }

    inline static uint64 read_scause(){
        uint64 volatile scause;
        asm volatile("csrr %0, scause" : "=r"(scause));
        return scause;
    }

    inline static void write_sepc(uint64 sepc){
        asm volatile ("csrw sepc, %0" : : "r"(sepc));
    }

    inline static void write_sstatus(uint64 sstatus){
        asm volatile("csrw sstatus, %0"::"r"(sstatus));
    }

    inline static uint64 read_sstatus(){
        uint64 sstatus;
        asm volatile("csrr %0, sstatus" : "=r"(sstatus));
        return sstatus;
    }



    inline static void w_stvec(uint64 vect){
        asm volatile(" csrw stvec, %0" : : "r"(vect));
    }

    inline static void c_sie(uint64 mask){
            asm volatile("csrc sie, %0"::"r"(mask));
    }

    static void setVectorTable();

    static SleepingList sleepingThreads;
    static SleepingList semTimedWaitList;

private:
    static void handleSupervisorTrap();



};

#endif //PROJECT_BASE_V1_1_RISCV_HPP
