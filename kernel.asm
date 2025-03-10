
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	9a013103          	ld	sp,-1632(sp) # 8000b9a0 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	1ed060ef          	jal	ra,80006a08 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN7_thread13switchContextEPNS_7ContextES1_>:
.global _ZN7_thread13switchContextEPNS_7ContextES1_
.type _ZN7_thread13switchContextEPNS_7ContextES1_, @function

_ZN7_thread13switchContextEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001000:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001004:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001008:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000100c:	0085b103          	ld	sp,8(a1)

    80001010:	00008067          	ret
	...

0000000080001020 <_ZN5RISCV14setVectorTableEv>:
# 1 "<built-in>"
# 1 "<command-line>"
# 31 "<command-line>"
# 1 "/usr/riscv64-linux-gnu/include/stdc-predef.h" 1 3
# 32 "<command-line>" 2
# 1 "src/vectorTable.S"
    80001020:	0080006f          	j	80001028 <interruptHandler>
.extern _ZN5RISCV20handleSupervisorTrapEv
    80001024:	10200073          	sret

0000000080001028 <interruptHandler>:
.align 4
.global _ZN5RISCV14setVectorTableEv
.type _ZN5RISCV14setVectorTableEv, @function
    80001028:	f0010113          	addi	sp,sp,-256

_ZN5RISCV14setVectorTableEv:
    j interruptHandler
    8000102c:	00013023          	sd	zero,0(sp)
    80001030:	00113423          	sd	ra,8(sp)
    80001034:	00213823          	sd	sp,16(sp)
    80001038:	00313c23          	sd	gp,24(sp)
    8000103c:	02413023          	sd	tp,32(sp)
    80001040:	02513423          	sd	t0,40(sp)
    80001044:	02613823          	sd	t1,48(sp)
    80001048:	02713c23          	sd	t2,56(sp)
    8000104c:	04813023          	sd	s0,64(sp)
    80001050:	04913423          	sd	s1,72(sp)
    80001054:	04a13823          	sd	a0,80(sp)
    80001058:	04b13c23          	sd	a1,88(sp)
    8000105c:	06c13023          	sd	a2,96(sp)
    80001060:	06d13423          	sd	a3,104(sp)
    80001064:	06e13823          	sd	a4,112(sp)
    80001068:	06f13c23          	sd	a5,120(sp)
    8000106c:	09013023          	sd	a6,128(sp)
    80001070:	09113423          	sd	a7,136(sp)
    80001074:	09213823          	sd	s2,144(sp)
    80001078:	09313c23          	sd	s3,152(sp)
    8000107c:	0b413023          	sd	s4,160(sp)
    80001080:	0b513423          	sd	s5,168(sp)
    80001084:	0b613823          	sd	s6,176(sp)
    80001088:	0b713c23          	sd	s7,184(sp)
    8000108c:	0d813023          	sd	s8,192(sp)
    80001090:	0d913423          	sd	s9,200(sp)
    80001094:	0da13823          	sd	s10,208(sp)
    80001098:	0db13c23          	sd	s11,216(sp)
    8000109c:	0fc13023          	sd	t3,224(sp)
    800010a0:	0fd13423          	sd	t4,232(sp)
    800010a4:	0fe13823          	sd	t5,240(sp)
    800010a8:	0ff13c23          	sd	t6,248(sp)
    sret

    800010ac:	581000ef          	jal	ra,80001e2c <_ZN5RISCV20handleSupervisorTrapEv>
interruptHandler:
    addi sp, sp, -256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    800010b0:	00013003          	ld	zero,0(sp)
    800010b4:	00813083          	ld	ra,8(sp)
    800010b8:	01013103          	ld	sp,16(sp)
    800010bc:	01813183          	ld	gp,24(sp)
    800010c0:	02013203          	ld	tp,32(sp)
    800010c4:	02813283          	ld	t0,40(sp)
    800010c8:	03013303          	ld	t1,48(sp)
    800010cc:	03813383          	ld	t2,56(sp)
    800010d0:	04013403          	ld	s0,64(sp)
    800010d4:	04813483          	ld	s1,72(sp)
    800010d8:	05013503          	ld	a0,80(sp)
    800010dc:	05813583          	ld	a1,88(sp)
    800010e0:	06013603          	ld	a2,96(sp)
    800010e4:	06813683          	ld	a3,104(sp)
    800010e8:	07013703          	ld	a4,112(sp)
    800010ec:	07813783          	ld	a5,120(sp)
    800010f0:	08013803          	ld	a6,128(sp)
    800010f4:	08813883          	ld	a7,136(sp)
    800010f8:	09013903          	ld	s2,144(sp)
    800010fc:	09813983          	ld	s3,152(sp)
    80001100:	0a013a03          	ld	s4,160(sp)
    80001104:	0a813a83          	ld	s5,168(sp)
    80001108:	0b013b03          	ld	s6,176(sp)
    8000110c:	0b813b83          	ld	s7,184(sp)
    80001110:	0c013c03          	ld	s8,192(sp)
    80001114:	0c813c83          	ld	s9,200(sp)
    80001118:	0d013d03          	ld	s10,208(sp)
    8000111c:	0d813d83          	ld	s11,216(sp)
    80001120:	0e013e03          	ld	t3,224(sp)
    80001124:	0e813e83          	ld	t4,232(sp)
    80001128:	0f013f03          	ld	t5,240(sp)
    8000112c:	0f813f83          	ld	t6,248(sp)

    80001130:	10010113          	addi	sp,sp,256
    call _ZN5RISCV20handleSupervisorTrapEv
    80001134:	10200073          	sret
	...

0000000080001140 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001140:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001144:	00b29a63          	bne	t0,a1,80001158 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001148:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    8000114c:	fe029ae3          	bnez	t0,80001140 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001150:	00000513          	li	a0,0
    jr ra                  # Return.
    80001154:	00008067          	ret

0000000080001158 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001158:	00100513          	li	a0,1
    8000115c:	00008067          	ret

0000000080001160 <_Z9mem_allocm>:
#include "../h/syscall_c.h"

void* mem_alloc(size_t size){
    80001160:	ff010113          	addi	sp,sp,-16
    80001164:	00813423          	sd	s0,8(sp)
    80001168:	01010413          	addi	s0,sp,16
    size_t actualSize;
    if(size % MEM_BLOCK_SIZE == 0){
    8000116c:	03f57793          	andi	a5,a0,63
    80001170:	00078663          	beqz	a5,8000117c <_Z9mem_allocm+0x1c>
        actualSize = size;
    } else {
        actualSize = ((size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE) * MEM_BLOCK_SIZE;
    80001174:	03f50513          	addi	a0,a0,63
    80001178:	fc057513          	andi	a0,a0,-64
    }

    asm volatile ("mv a1, %0"::"r"(actualSize));
    8000117c:	00050593          	mv	a1,a0
    asm volatile ("li a0, 0x01");
    80001180:	00100513          	li	a0,1
    asm volatile ("ecall");
    80001184:	00000073          	ecall

    //After memory is allocated
    void* retPtr;
    asm volatile("mv %0, a0" : "=r"(retPtr));
    80001188:	00050513          	mv	a0,a0
    return retPtr;

}
    8000118c:	00813403          	ld	s0,8(sp)
    80001190:	01010113          	addi	sp,sp,16
    80001194:	00008067          	ret

0000000080001198 <_Z8mem_freePv>:

int mem_free(void* ptr){
    80001198:	ff010113          	addi	sp,sp,-16
    8000119c:	00813423          	sd	s0,8(sp)
    800011a0:	01010413          	addi	s0,sp,16

    asm volatile("mv a1, %0" :: "r"(ptr));
    800011a4:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x02");
    800011a8:	00200513          	li	a0,2
    asm volatile("ecall");
    800011ac:	00000073          	ecall

    //After memory is freed
    int retVal;
    asm volatile("mv %0, a0":"=r"(retVal));
    800011b0:	00050513          	mv	a0,a0
    return retVal;
}
    800011b4:	0005051b          	sext.w	a0,a0
    800011b8:	00813403          	ld	s0,8(sp)
    800011bc:	01010113          	addi	sp,sp,16
    800011c0:	00008067          	ret

00000000800011c4 <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t* handle, void(*start_routine)(void*), void* arg){
    800011c4:	ff010113          	addi	sp,sp,-16
    800011c8:	00813423          	sd	s0,8(sp)
    800011cc:	01010413          	addi	s0,sp,16
    asm volatile("mv a3, %[arg]": :[arg] "r"(arg));
    800011d0:	00060693          	mv	a3,a2
    asm volatile("mv a2, %[start]": :[start] "r"(
            start_routine));
    800011d4:	00058613          	mv	a2,a1
    asm volatile("mv a1, %[handle]": :[handle] "r"(handle));
    800011d8:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x11");
    800011dc:	01100513          	li	a0,17
    asm volatile("ecall");
    800011e0:	00000073          	ecall
    //Check if thread was successfully created
    int retVal;
    asm volatile("mv %0, a0":"=r"(retVal));
    800011e4:	00050513          	mv	a0,a0
    if(retVal){
        handle = nullptr;   //Make sure handle is nullptr in case of failure
    }
    return retVal;
}
    800011e8:	0005051b          	sext.w	a0,a0
    800011ec:	00813403          	ld	s0,8(sp)
    800011f0:	01010113          	addi	sp,sp,16
    800011f4:	00008067          	ret

00000000800011f8 <_Z11thread_exitv>:

int thread_exit(){
    800011f8:	ff010113          	addi	sp,sp,-16
    800011fc:	00813423          	sd	s0,8(sp)
    80001200:	01010413          	addi	s0,sp,16
    asm volatile("li a0, 0x12");        //Running thread is global and no need to pass it as a parameter
    80001204:	01200513          	li	a0,18
    asm volatile("ecall");
    80001208:	00000073          	ecall

    //After thread is closed
    int retVal;
    asm volatile("mv %0, a0":"=r"(retVal));
    8000120c:	00050513          	mv	a0,a0
    return retVal;
}
    80001210:	0005051b          	sext.w	a0,a0
    80001214:	00813403          	ld	s0,8(sp)
    80001218:	01010113          	addi	sp,sp,16
    8000121c:	00008067          	ret

0000000080001220 <_Z15thread_dispatchv>:

void thread_dispatch(){
    80001220:	ff010113          	addi	sp,sp,-16
    80001224:	00813423          	sd	s0,8(sp)
    80001228:	01010413          	addi	s0,sp,16
    asm volatile("li a0, 0x13");
    8000122c:	01300513          	li	a0,19
    asm volatile("ecall");
    80001230:	00000073          	ecall
    //Potentially change thread, no return value
}
    80001234:	00813403          	ld	s0,8(sp)
    80001238:	01010113          	addi	sp,sp,16
    8000123c:	00008067          	ret

0000000080001240 <_Z8sem_openPP4_semj>:

int sem_open(sem_t* handle, unsigned init){
    80001240:	ff010113          	addi	sp,sp,-16
    80001244:	00813423          	sd	s0,8(sp)
    80001248:	01010413          	addi	s0,sp,16
    8000124c:	00050313          	mv	t1,a0
    80001250:	00058e13          	mv	t3,a1

    asm volatile("mv a2, %0"::"r"(init) : "a5", "a0", "a1", "a2", "a3", "a4", "a6", "a7");
    80001254:	000e0613          	mv	a2,t3
    asm volatile("mv a1, %0"::"r"(handle) : "a5", "a0", "a1", "a2", "a3", "a4", "a6", "a7");
    80001258:	00030593          	mv	a1,t1
    asm volatile("li a0, 0x21");
    8000125c:	02100513          	li	a0,33
    asm volatile("ecall");
    80001260:	00000073          	ecall

    //Check if semaphore was created
    int retVal;
    asm volatile("mv %0, a0":"=r"(retVal));
    80001264:	00050513          	mv	a0,a0
    if(retVal){
        handle = nullptr;           //Make sure handle is nullptr in case of failure
    }
    return retVal;
}
    80001268:	0005051b          	sext.w	a0,a0
    8000126c:	00813403          	ld	s0,8(sp)
    80001270:	01010113          	addi	sp,sp,16
    80001274:	00008067          	ret

0000000080001278 <_Z9sem_closeP4_sem>:

int sem_close(sem_t handle){
    80001278:	ff010113          	addi	sp,sp,-16
    8000127c:	00813423          	sd	s0,8(sp)
    80001280:	01010413          	addi	s0,sp,16
    80001284:	00050313          	mv	t1,a0
    asm volatile("mv a1, %0"::"r"(handle) : "a5", "a0", "a1", "a2", "a3", "a4", "a6", "a7");
    80001288:	00030593          	mv	a1,t1
    asm volatile("li a0, 0x22");
    8000128c:	02200513          	li	a0,34
    asm volatile("ecall");
    80001290:	00000073          	ecall

    //After semaphore is closed
    int retVal;
    asm volatile("mv %0, a0":"=r"(retVal));
    80001294:	00050513          	mv	a0,a0
    return retVal;
}
    80001298:	0005051b          	sext.w	a0,a0
    8000129c:	00813403          	ld	s0,8(sp)
    800012a0:	01010113          	addi	sp,sp,16
    800012a4:	00008067          	ret

00000000800012a8 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id){
    800012a8:	ff010113          	addi	sp,sp,-16
    800012ac:	00813423          	sd	s0,8(sp)
    800012b0:	01010413          	addi	s0,sp,16
    800012b4:	00050313          	mv	t1,a0
    asm volatile("mv a1, %0"::"r"(id): "a5", "a0", "a1", "a2", "a3", "a4", "a6", "a7");
    800012b8:	00030593          	mv	a1,t1
    asm volatile("li a0, 0x23");
    800012bc:	02300513          	li	a0,35
    asm volatile("ecall");
    800012c0:	00000073          	ecall

    //After waiting at semaphore
    int retVal;
    asm volatile("mv %0, a0":"=r"(retVal));
    800012c4:	00050513          	mv	a0,a0
    return retVal;
}
    800012c8:	0005051b          	sext.w	a0,a0
    800012cc:	00813403          	ld	s0,8(sp)
    800012d0:	01010113          	addi	sp,sp,16
    800012d4:	00008067          	ret

00000000800012d8 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id){
    800012d8:	ff010113          	addi	sp,sp,-16
    800012dc:	00813423          	sd	s0,8(sp)
    800012e0:	01010413          	addi	s0,sp,16
    800012e4:	00050313          	mv	t1,a0
    asm volatile("mv a1, %0"::"r"(id): "a5", "a0", "a1", "a2", "a3", "a4", "a6", "a7");
    800012e8:	00030593          	mv	a1,t1
    asm volatile("li a0, 0x24");
    800012ec:	02400513          	li	a0,36
    asm volatile("ecall");
    800012f0:	00000073          	ecall

    //After signaling at semaphore
    int retVal;
    asm volatile("mv %0, a0":"=r"(retVal));
    800012f4:	00050513          	mv	a0,a0
    return retVal;
}
    800012f8:	0005051b          	sext.w	a0,a0
    800012fc:	00813403          	ld	s0,8(sp)
    80001300:	01010113          	addi	sp,sp,16
    80001304:	00008067          	ret

0000000080001308 <_Z13sem_timedwaitP4_semm>:

int sem_timedwait(sem_t id, time_t timeout){            //Possibly rework for correct return value
    80001308:	ff010113          	addi	sp,sp,-16
    8000130c:	00813423          	sd	s0,8(sp)
    80001310:	01010413          	addi	s0,sp,16
    80001314:	00050313          	mv	t1,a0
    80001318:	00058e13          	mv	t3,a1
    asm volatile("mv a2, %0"::"r"(timeout) : "a5", "a0", "a1", "a2", "a3", "a4", "a6", "a7");
    8000131c:	000e0613          	mv	a2,t3
    asm volatile("mv a1, %0"::"r"(id) : "a5", "a0", "a1", "a2", "a3", "a4", "a6", "a7");
    80001320:	00030593          	mv	a1,t1
    asm volatile("li a0, 0x25");
    80001324:	02500513          	li	a0,37
    asm volatile("ecall");
    80001328:	00000073          	ecall

    //After waiting at semaphore
    int retVal;
    asm volatile("mv %0, a0":"=r"(retVal));
    8000132c:	00050513          	mv	a0,a0
    return retVal;
}
    80001330:	0005051b          	sext.w	a0,a0
    80001334:	00813403          	ld	s0,8(sp)
    80001338:	01010113          	addi	sp,sp,16
    8000133c:	00008067          	ret

0000000080001340 <_Z11sem_trywaitP4_sem>:

int sem_trywait(sem_t id){
    80001340:	ff010113          	addi	sp,sp,-16
    80001344:	00813423          	sd	s0,8(sp)
    80001348:	01010413          	addi	s0,sp,16
    8000134c:	00050313          	mv	t1,a0
    asm volatile("mv a1, %0"::"r"(id): "a5", "a0", "a1", "a2", "a3", "a4", "a6", "a7");
    80001350:	00030593          	mv	a1,t1
    asm volatile("li a0, 0x26");
    80001354:	02600513          	li	a0,38
    asm volatile("ecall");
    80001358:	00000073          	ecall

    //After signaling at semaphore
    int retVal;
    asm volatile("mv %0, a0":"=r"(retVal));
    8000135c:	00050513          	mv	a0,a0
    return retVal;
}
    80001360:	0005051b          	sext.w	a0,a0
    80001364:	00813403          	ld	s0,8(sp)
    80001368:	01010113          	addi	sp,sp,16
    8000136c:	00008067          	ret

0000000080001370 <_Z10time_sleepm>:


int time_sleep(time_t slice){
    80001370:	ff010113          	addi	sp,sp,-16
    80001374:	00813423          	sd	s0,8(sp)
    80001378:	01010413          	addi	s0,sp,16
    asm volatile("mv a1, %0"::"r"(slice));
    8000137c:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x31");
    80001380:	03100513          	li	a0,49
    asm volatile("ecall");
    80001384:	00000073          	ecall
    return 0;
}
    80001388:	00000513          	li	a0,0
    8000138c:	00813403          	ld	s0,8(sp)
    80001390:	01010113          	addi	sp,sp,16
    80001394:	00008067          	ret

0000000080001398 <_Z4getcv>:

char getc (){
    80001398:	ff010113          	addi	sp,sp,-16
    8000139c:	00813423          	sd	s0,8(sp)
    800013a0:	01010413          	addi	s0,sp,16
    asm volatile("li a0, 0x41");
    800013a4:	04100513          	li	a0,65
    asm volatile("ecall");
    800013a8:	00000073          	ecall

    //After reading character from buffer
    char retChar;
    asm volatile("mv %0, a0":"=r"(retChar));
    800013ac:	00050513          	mv	a0,a0
    return retChar;
}
    800013b0:	0ff57513          	andi	a0,a0,255
    800013b4:	00813403          	ld	s0,8(sp)
    800013b8:	01010113          	addi	sp,sp,16
    800013bc:	00008067          	ret

00000000800013c0 <_Z4putcc>:

void putc(char ch){
    800013c0:	ff010113          	addi	sp,sp,-16
    800013c4:	00813423          	sd	s0,8(sp)
    800013c8:	01010413          	addi	s0,sp,16
    asm volatile("mv a1, %0"::"r"(ch));
    800013cc:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x42");
    800013d0:	04200513          	li	a0,66
    asm volatile("ecall");
    800013d4:	00000073          	ecall

    //After putting character
}
    800013d8:	00813403          	ld	s0,8(sp)
    800013dc:	01010113          	addi	sp,sp,16
    800013e0:	00008067          	ret

00000000800013e4 <_ZN12SleepingList11wakeThreadsEv>:
#include "../h/SleepingList.hpp"

void SleepingList::wakeThreads() {
    800013e4:	fe010113          	addi	sp,sp,-32
    800013e8:	00113c23          	sd	ra,24(sp)
    800013ec:	00813823          	sd	s0,16(sp)
    800013f0:	00913423          	sd	s1,8(sp)
    800013f4:	01213023          	sd	s2,0(sp)
    800013f8:	02010413          	addi	s0,sp,32
    800013fc:	00050913          	mv	s2,a0
    80001400:	02c0006f          	j	8000142c <_ZN12SleepingList11wakeThreadsEv+0x48>
    while (head != nullptr && head->relativeTime == 0){
        Elem* curr = head;
        head = head->next;
        if (!head) { tail = nullptr; }
    80001404:	00093423          	sd	zero,8(s2)
    80001408:	0400006f          	j	80001448 <_ZN12SleepingList11wakeThreadsEv+0x64>
    }


    void setBlocked(bool blck){blocked = blck;}
    void setTimedWait(bool tmdw){timedWait = tmdw;}
    void setSleepWait(bool sleep){sleepWait = sleep;}
    8000140c:	02078223          	sb	zero,36(a5)
        if(curr->thread->isSleeping()) {
            curr->thread->setSleepWait(false);
            Scheduler::put(curr->thread);
    80001410:	0004b503          	ld	a0,0(s1)
    80001414:	00000097          	auipc	ra,0x0
    80001418:	34c080e7          	jalr	844(ra) # 80001760 <_ZN9Scheduler3putEP7_thread>
            delete curr;
    8000141c:	00048863          	beqz	s1,8000142c <_ZN12SleepingList11wakeThreadsEv+0x48>
        static void* operator new[](size_t size){
            return MemoryAllocator::mem_alloc(size);
        }

        static void operator delete (void* prt){
            MemoryAllocator::mem_free(prt);
    80001420:	00048513          	mv	a0,s1
    80001424:	00002097          	auipc	ra,0x2
    80001428:	dd8080e7          	jalr	-552(ra) # 800031fc <_ZN15MemoryAllocator8mem_freeEPv>
    while (head != nullptr && head->relativeTime == 0){
    8000142c:	00093483          	ld	s1,0(s2)
    80001430:	04048c63          	beqz	s1,80001488 <_ZN12SleepingList11wakeThreadsEv+0xa4>
    80001434:	0084b783          	ld	a5,8(s1)
    80001438:	04079863          	bnez	a5,80001488 <_ZN12SleepingList11wakeThreadsEv+0xa4>
        head = head->next;
    8000143c:	0104b783          	ld	a5,16(s1)
    80001440:	00f93023          	sd	a5,0(s2)
        if (!head) { tail = nullptr; }
    80001444:	fc0780e3          	beqz	a5,80001404 <_ZN12SleepingList11wakeThreadsEv+0x20>
        if(curr->thread->isSleeping()) {
    80001448:	0004b783          	ld	a5,0(s1)
    bool isSleeping(){return sleepWait;}
    8000144c:	0247c703          	lbu	a4,36(a5)
    80001450:	fa071ee3          	bnez	a4,8000140c <_ZN12SleepingList11wakeThreadsEv+0x28>
    bool isTimedWait(){return timedWait;}
    80001454:	0227c703          	lbu	a4,34(a5)
        } else if (curr->thread->isTimedWait()){
    80001458:	fc070ae3          	beqz	a4,8000142c <_ZN12SleepingList11wakeThreadsEv+0x48>
    void setTimedWait(bool tmdw){timedWait = tmdw;}
    8000145c:	02078123          	sb	zero,34(a5)
            curr->thread->setTimedWait(false);
            if(curr->thread->mySem != nullptr){
    80001460:	0004b583          	ld	a1,0(s1)
    80001464:	0385b503          	ld	a0,56(a1)
    80001468:	00050663          	beqz	a0,80001474 <_ZN12SleepingList11wakeThreadsEv+0x90>
                curr->thread->mySem->deblockTimedWait(curr->thread);
    8000146c:	00002097          	auipc	ra,0x2
    80001470:	890080e7          	jalr	-1904(ra) # 80002cfc <_ZN4_sem16deblockTimedWaitEP7_thread>
            }
            delete curr;
    80001474:	fa048ce3          	beqz	s1,8000142c <_ZN12SleepingList11wakeThreadsEv+0x48>
    80001478:	00048513          	mv	a0,s1
    8000147c:	00002097          	auipc	ra,0x2
    80001480:	d80080e7          	jalr	-640(ra) # 800031fc <_ZN15MemoryAllocator8mem_freeEPv>
        }
    80001484:	fa9ff06f          	j	8000142c <_ZN12SleepingList11wakeThreadsEv+0x48>
        }
    }
    80001488:	01813083          	ld	ra,24(sp)
    8000148c:	01013403          	ld	s0,16(sp)
    80001490:	00813483          	ld	s1,8(sp)
    80001494:	00013903          	ld	s2,0(sp)
    80001498:	02010113          	addi	sp,sp,32
    8000149c:	00008067          	ret

00000000800014a0 <_ZN7_thread7wrapperEv>:
_thread *_thread::createThread(_thread::Func func, void *args, uint64 mra) {
    _thread* newThread = new _thread(func, args, mra);
    return newThread;
}

void _thread::wrapper() {
    800014a0:	fe010113          	addi	sp,sp,-32
    800014a4:	00113c23          	sd	ra,24(sp)
    800014a8:	00813823          	sd	s0,16(sp)
    800014ac:	00913423          	sd	s1,8(sp)
    800014b0:	02010413          	addi	s0,sp,32
    _thread::running->body(_thread::running->args);
    800014b4:	0000a497          	auipc	s1,0xa
    800014b8:	58c48493          	addi	s1,s1,1420 # 8000ba40 <_ZN7_thread7runningE>
    800014bc:	0004b783          	ld	a5,0(s1)
    800014c0:	0007b703          	ld	a4,0(a5)
    800014c4:	0187b503          	ld	a0,24(a5)
    800014c8:	000700e7          	jalr	a4
    running->setFinished();
    800014cc:	0004b783          	ld	a5,0(s1)
    void setFinished(){finished = true;}
    800014d0:	00100713          	li	a4,1
    800014d4:	02e780a3          	sb	a4,33(a5)
    thread_exit();
    800014d8:	00000097          	auipc	ra,0x0
    800014dc:	d20080e7          	jalr	-736(ra) # 800011f8 <_Z11thread_exitv>
}
    800014e0:	01813083          	ld	ra,24(sp)
    800014e4:	01013403          	ld	s0,16(sp)
    800014e8:	00813483          	ld	s1,8(sp)
    800014ec:	02010113          	addi	sp,sp,32
    800014f0:	00008067          	ret

00000000800014f4 <_ZN7_thread8dispatchEv>:
void _thread::dispatch() {
    800014f4:	fe010113          	addi	sp,sp,-32
    800014f8:	00113c23          	sd	ra,24(sp)
    800014fc:	00813823          	sd	s0,16(sp)
    80001500:	00913423          	sd	s1,8(sp)
    80001504:	02010413          	addi	s0,sp,32
    _thread* old = _thread::running;
    80001508:	0000a497          	auipc	s1,0xa
    8000150c:	5384b483          	ld	s1,1336(s1) # 8000ba40 <_ZN7_thread7runningE>
    bool isFinished(){return finished;}
    80001510:	0214c783          	lbu	a5,33(s1)
    if(!running->isFinished() && !running->isBlocked() && !running->isSleeping()){
    80001514:	00079a63          	bnez	a5,80001528 <_ZN7_thread8dispatchEv+0x34>
    bool isBlocked(){return blocked;}
    80001518:	0204c783          	lbu	a5,32(s1)
    8000151c:	00079663          	bnez	a5,80001528 <_ZN7_thread8dispatchEv+0x34>
    bool isSleeping(){return sleepWait;}
    80001520:	0244c783          	lbu	a5,36(s1)
    80001524:	04078263          	beqz	a5,80001568 <_ZN7_thread8dispatchEv+0x74>
    _thread* next = Scheduler::get();
    80001528:	00000097          	auipc	ra,0x0
    8000152c:	2a4080e7          	jalr	676(ra) # 800017cc <_ZN9Scheduler3getEv>
    _thread::running = next;
    80001530:	0000a797          	auipc	a5,0xa
    80001534:	51078793          	addi	a5,a5,1296 # 8000ba40 <_ZN7_thread7runningE>
    80001538:	00a7b023          	sd	a0,0(a5)
    _thread::runningTimeSlice = 0;
    8000153c:	0007b423          	sd	zero,8(a5)
    if(old != _thread::running) {
    80001540:	00a48a63          	beq	s1,a0,80001554 <_ZN7_thread8dispatchEv+0x60>
        switchContext(&old->context, &running->context);
    80001544:	00850593          	addi	a1,a0,8
    80001548:	00848513          	addi	a0,s1,8
    8000154c:	00000097          	auipc	ra,0x0
    80001550:	ab4080e7          	jalr	-1356(ra) # 80001000 <_ZN7_thread13switchContextEPNS_7ContextES1_>
}
    80001554:	01813083          	ld	ra,24(sp)
    80001558:	01013403          	ld	s0,16(sp)
    8000155c:	00813483          	ld	s1,8(sp)
    80001560:	02010113          	addi	sp,sp,32
    80001564:	00008067          	ret
        Scheduler::put(running);
    80001568:	00048513          	mv	a0,s1
    8000156c:	00000097          	auipc	ra,0x0
    80001570:	1f4080e7          	jalr	500(ra) # 80001760 <_ZN9Scheduler3putEP7_thread>
    80001574:	fb5ff06f          	j	80001528 <_ZN7_thread8dispatchEv+0x34>

0000000080001578 <_ZN7_thread12outputThreadEPv>:
class Buffer{
public:
    Buffer();
    void putc(char c);
    char getc();
    uint64 getCount(){return count;}
    80001578:	0000a797          	auipc	a5,0xa
    8000157c:	4707b783          	ld	a5,1136(a5) # 8000b9e8 <_GLOBAL_OFFSET_TABLE_+0x88>
    80001580:	1187b783          	ld	a5,280(a5)

void _thread::outputThread(void *) {
    while (true){
        if(IO::outputBuffer.getCount() > 0) {
    80001584:	fe078ae3          	beqz	a5,80001578 <_ZN7_thread12outputThreadEPv>
            while (*((char *) CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT) {
    80001588:	0000a797          	auipc	a5,0xa
    8000158c:	3e87b783          	ld	a5,1000(a5) # 8000b970 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001590:	0007b783          	ld	a5,0(a5)
    80001594:	0007c783          	lbu	a5,0(a5)
    80001598:	0207f793          	andi	a5,a5,32
    8000159c:	fc078ee3          	beqz	a5,80001578 <_ZN7_thread12outputThreadEPv>
void _thread::outputThread(void *) {
    800015a0:	ff010113          	addi	sp,sp,-16
    800015a4:	00113423          	sd	ra,8(sp)
    800015a8:	00813023          	sd	s0,0(sp)
    800015ac:	01010413          	addi	s0,sp,16
                char c = IO::outputBuffer.getc();
    800015b0:	0000a517          	auipc	a0,0xa
    800015b4:	43853503          	ld	a0,1080(a0) # 8000b9e8 <_GLOBAL_OFFSET_TABLE_+0x88>
    800015b8:	00002097          	auipc	ra,0x2
    800015bc:	9e4080e7          	jalr	-1564(ra) # 80002f9c <_ZN6Buffer4getcEv>
                *((char *) CONSOLE_TX_DATA) = c;
    800015c0:	0000a797          	auipc	a5,0xa
    800015c4:	3d07b783          	ld	a5,976(a5) # 8000b990 <_GLOBAL_OFFSET_TABLE_+0x30>
    800015c8:	0007b783          	ld	a5,0(a5)
    800015cc:	00a78023          	sb	a0,0(a5)
            while (*((char *) CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT) {
    800015d0:	0000a797          	auipc	a5,0xa
    800015d4:	3a07b783          	ld	a5,928(a5) # 8000b970 <_GLOBAL_OFFSET_TABLE_+0x10>
    800015d8:	0007b783          	ld	a5,0(a5)
    800015dc:	0007c783          	lbu	a5,0(a5)
    800015e0:	0207f793          	andi	a5,a5,32
    800015e4:	fc0796e3          	bnez	a5,800015b0 <_ZN7_thread12outputThreadEPv+0x38>
    800015e8:	0000a797          	auipc	a5,0xa
    800015ec:	4007b783          	ld	a5,1024(a5) # 8000b9e8 <_GLOBAL_OFFSET_TABLE_+0x88>
    800015f0:	1187b783          	ld	a5,280(a5)
        if(IO::outputBuffer.getCount() > 0) {
    800015f4:	fe078ae3          	beqz	a5,800015e8 <_ZN7_thread12outputThreadEPv+0x70>
    800015f8:	fd9ff06f          	j	800015d0 <_ZN7_thread12outputThreadEPv+0x58>

00000000800015fc <_ZN7_threadC1EPFvPvES0_m>:
            }
        }
    }
}

_thread::_thread(_thread::Func body, void *args, uint64 mra) : body(body), context({0, 0}),args(args),blocked(false), finished(false),
    800015fc:	fe010113          	addi	sp,sp,-32
    80001600:	00113c23          	sd	ra,24(sp)
    80001604:	00813823          	sd	s0,16(sp)
    80001608:	00913423          	sd	s1,8(sp)
    8000160c:	01213023          	sd	s2,0(sp)
    80001610:	02010413          	addi	s0,sp,32
    80001614:	00050493          	mv	s1,a0
    80001618:	00058913          	mv	s2,a1
                                                   timedWait(false), isAdmin(false), timeSlice(DEFAULT_TIME_SLICE), stack((uint64*)MemoryAllocator::mem_alloc(DEFAULT_STACK_SIZE)){
    8000161c:	00b53023          	sd	a1,0(a0)
    80001620:	00053423          	sd	zero,8(a0)
    80001624:	00053823          	sd	zero,16(a0)
    80001628:	00c53c23          	sd	a2,24(a0)
    8000162c:	02050023          	sb	zero,32(a0)
    80001630:	020500a3          	sb	zero,33(a0)
    80001634:	02050123          	sb	zero,34(a0)
    80001638:	020501a3          	sb	zero,35(a0)
    8000163c:	02050223          	sb	zero,36(a0)
    80001640:	00200793          	li	a5,2
    80001644:	02f53423          	sd	a5,40(a0)
    80001648:	00001537          	lui	a0,0x1
    8000164c:	00002097          	auipc	ra,0x2
    80001650:	a30080e7          	jalr	-1488(ra) # 8000307c <_ZN15MemoryAllocator9mem_allocEm>
    80001654:	02a4b823          	sd	a0,48(s1)
    80001658:	0204bc23          	sd	zero,56(s1)
    uint64 ra = body != (Func)main ? (uint64)wrapper : 0;
    8000165c:	0000a797          	auipc	a5,0xa
    80001660:	35c7b783          	ld	a5,860(a5) # 8000b9b8 <_GLOBAL_OFFSET_TABLE_+0x58>
    80001664:	04f90c63          	beq	s2,a5,800016bc <_ZN7_threadC1EPFvPvES0_m+0xc0>
    80001668:	00000797          	auipc	a5,0x0
    8000166c:	e3878793          	addi	a5,a5,-456 # 800014a0 <_ZN7_thread7wrapperEv>
    uint64 sp = body != (Func)main ? (uint64)((char *)stack + DEFAULT_STACK_SIZE) : 0;
    80001670:	0000a717          	auipc	a4,0xa
    80001674:	34873703          	ld	a4,840(a4) # 8000b9b8 <_GLOBAL_OFFSET_TABLE_+0x58>
    80001678:	04e90663          	beq	s2,a4,800016c4 <_ZN7_threadC1EPFvPvES0_m+0xc8>
    8000167c:	00001737          	lui	a4,0x1
    80001680:	00e50533          	add	a0,a0,a4
    if(RISCV::isMain) {
    80001684:	0000a717          	auipc	a4,0xa
    80001688:	35c73703          	ld	a4,860(a4) # 8000b9e0 <_GLOBAL_OFFSET_TABLE_+0x80>
    8000168c:	00074703          	lbu	a4,0(a4)
    80001690:	00070663          	beqz	a4,8000169c <_ZN7_threadC1EPFvPvES0_m+0xa0>
        isAdmin = true;
    80001694:	00100713          	li	a4,1
    80001698:	02e481a3          	sb	a4,35(s1)
    }
    this->context.ra = ra;
    8000169c:	00f4b423          	sd	a5,8(s1)
    this->context.sp = sp;
    800016a0:	00a4b823          	sd	a0,16(s1)
}
    800016a4:	01813083          	ld	ra,24(sp)
    800016a8:	01013403          	ld	s0,16(sp)
    800016ac:	00813483          	ld	s1,8(sp)
    800016b0:	00013903          	ld	s2,0(sp)
    800016b4:	02010113          	addi	sp,sp,32
    800016b8:	00008067          	ret
    uint64 ra = body != (Func)main ? (uint64)wrapper : 0;
    800016bc:	00000793          	li	a5,0
    800016c0:	fb1ff06f          	j	80001670 <_ZN7_threadC1EPFvPvES0_m+0x74>
    uint64 sp = body != (Func)main ? (uint64)((char *)stack + DEFAULT_STACK_SIZE) : 0;
    800016c4:	00000513          	li	a0,0
    800016c8:	fbdff06f          	j	80001684 <_ZN7_threadC1EPFvPvES0_m+0x88>

00000000800016cc <_ZN7_thread12createThreadEPFvPvES0_m>:
_thread *_thread::createThread(_thread::Func func, void *args, uint64 mra) {
    800016cc:	fd010113          	addi	sp,sp,-48
    800016d0:	02113423          	sd	ra,40(sp)
    800016d4:	02813023          	sd	s0,32(sp)
    800016d8:	00913c23          	sd	s1,24(sp)
    800016dc:	01213823          	sd	s2,16(sp)
    800016e0:	01313423          	sd	s3,8(sp)
    800016e4:	01413023          	sd	s4,0(sp)
    800016e8:	03010413          	addi	s0,sp,48
    800016ec:	00050913          	mv	s2,a0
    800016f0:	00058993          	mv	s3,a1
    800016f4:	00060a13          	mv	s4,a2
        return MemoryAllocator::mem_alloc(size);
    800016f8:	04000513          	li	a0,64
    800016fc:	00002097          	auipc	ra,0x2
    80001700:	980080e7          	jalr	-1664(ra) # 8000307c <_ZN15MemoryAllocator9mem_allocEm>
    80001704:	00050493          	mv	s1,a0
    _thread* newThread = new _thread(func, args, mra);
    80001708:	000a0693          	mv	a3,s4
    8000170c:	00098613          	mv	a2,s3
    80001710:	00090593          	mv	a1,s2
    80001714:	00000097          	auipc	ra,0x0
    80001718:	ee8080e7          	jalr	-280(ra) # 800015fc <_ZN7_threadC1EPFvPvES0_m>
    8000171c:	0200006f          	j	8000173c <_ZN7_thread12createThreadEPFvPvES0_m+0x70>
    80001720:	00050913          	mv	s2,a0
        MemoryAllocator::mem_free(ptr);
    80001724:	00048513          	mv	a0,s1
    80001728:	00002097          	auipc	ra,0x2
    8000172c:	ad4080e7          	jalr	-1324(ra) # 800031fc <_ZN15MemoryAllocator8mem_freeEPv>
    80001730:	00090513          	mv	a0,s2
    80001734:	0000b097          	auipc	ra,0xb
    80001738:	6c4080e7          	jalr	1732(ra) # 8000cdf8 <_Unwind_Resume>
}
    8000173c:	00048513          	mv	a0,s1
    80001740:	02813083          	ld	ra,40(sp)
    80001744:	02013403          	ld	s0,32(sp)
    80001748:	01813483          	ld	s1,24(sp)
    8000174c:	01013903          	ld	s2,16(sp)
    80001750:	00813983          	ld	s3,8(sp)
    80001754:	00013a03          	ld	s4,0(sp)
    80001758:	03010113          	addi	sp,sp,48
    8000175c:	00008067          	ret

0000000080001760 <_ZN9Scheduler3putEP7_thread>:
#include "../h/Scheduler.hpp"

ThreadList Scheduler::active;

void Scheduler::put(_thread *tcb) {
    80001760:	fe010113          	addi	sp,sp,-32
    80001764:	00113c23          	sd	ra,24(sp)
    80001768:	00813823          	sd	s0,16(sp)
    8000176c:	00913423          	sd	s1,8(sp)
    80001770:	02010413          	addi	s0,sp,32
    80001774:	00050493          	mv	s1,a0
    struct Elem{
        _thread* elem;
        Elem* next;
        Elem(_thread* elem) : elem(elem), next(nullptr){}
        static void* operator new(size_t size){
            return MemoryAllocator::mem_alloc(size);
    80001778:	01000513          	li	a0,16
    8000177c:	00002097          	auipc	ra,0x2
    80001780:	900080e7          	jalr	-1792(ra) # 8000307c <_ZN15MemoryAllocator9mem_allocEm>
        Elem(_thread* elem) : elem(elem), next(nullptr){}
    80001784:	00953023          	sd	s1,0(a0) # 1000 <_entry-0x7ffff000>
    80001788:	00053423          	sd	zero,8(a0)
    Elem *head = nullptr, *tail = nullptr;
public:

    void addTail(_thread* el){
        Elem* elem = new Elem(el);
        if(tail != nullptr){
    8000178c:	0000a797          	auipc	a5,0xa
    80001790:	2cc7b783          	ld	a5,716(a5) # 8000ba58 <_ZN9Scheduler6activeE+0x8>
    80001794:	02078263          	beqz	a5,800017b8 <_ZN9Scheduler3putEP7_thread+0x58>
            tail->next = elem;
    80001798:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    8000179c:	0000a797          	auipc	a5,0xa
    800017a0:	2aa7be23          	sd	a0,700(a5) # 8000ba58 <_ZN9Scheduler6activeE+0x8>
    active.addTail(tcb);
}
    800017a4:	01813083          	ld	ra,24(sp)
    800017a8:	01013403          	ld	s0,16(sp)
    800017ac:	00813483          	ld	s1,8(sp)
    800017b0:	02010113          	addi	sp,sp,32
    800017b4:	00008067          	ret
        } else {
            head = elem;
    800017b8:	0000a797          	auipc	a5,0xa
    800017bc:	29878793          	addi	a5,a5,664 # 8000ba50 <_ZN9Scheduler6activeE>
    800017c0:	00a7b023          	sd	a0,0(a5)
            tail = elem;
    800017c4:	00a7b423          	sd	a0,8(a5)
    800017c8:	fddff06f          	j	800017a4 <_ZN9Scheduler3putEP7_thread+0x44>

00000000800017cc <_ZN9Scheduler3getEv>:

_thread *Scheduler::get() {
    800017cc:	fe010113          	addi	sp,sp,-32
    800017d0:	00113c23          	sd	ra,24(sp)
    800017d4:	00813823          	sd	s0,16(sp)
    800017d8:	00913423          	sd	s1,8(sp)
    800017dc:	02010413          	addi	s0,sp,32
        }
    }

    _thread* popHead(){
        if(!head) return 0;
    800017e0:	0000a517          	auipc	a0,0xa
    800017e4:	27053503          	ld	a0,624(a0) # 8000ba50 <_ZN9Scheduler6activeE>
    800017e8:	04050263          	beqz	a0,8000182c <_ZN9Scheduler3getEv+0x60>
        Elem* curr = head;

        head = head->next;
    800017ec:	00853783          	ld	a5,8(a0)
    800017f0:	0000a717          	auipc	a4,0xa
    800017f4:	26f73023          	sd	a5,608(a4) # 8000ba50 <_ZN9Scheduler6activeE>
        if(head == nullptr){tail = nullptr;}
    800017f8:	02078463          	beqz	a5,80001820 <_ZN9Scheduler3getEv+0x54>
        _thread* ret = curr->elem;
    800017fc:	00053483          	ld	s1,0(a0)
            MemoryAllocator::mem_free(prt);
    80001800:	00002097          	auipc	ra,0x2
    80001804:	9fc080e7          	jalr	-1540(ra) # 800031fc <_ZN15MemoryAllocator8mem_freeEPv>
    _thread* ret = active.popHead();
    return ret;
}
    80001808:	00048513          	mv	a0,s1
    8000180c:	01813083          	ld	ra,24(sp)
    80001810:	01013403          	ld	s0,16(sp)
    80001814:	00813483          	ld	s1,8(sp)
    80001818:	02010113          	addi	sp,sp,32
    8000181c:	00008067          	ret
        if(head == nullptr){tail = nullptr;}
    80001820:	0000a797          	auipc	a5,0xa
    80001824:	2207bc23          	sd	zero,568(a5) # 8000ba58 <_ZN9Scheduler6activeE+0x8>
    80001828:	fd5ff06f          	j	800017fc <_ZN9Scheduler3getEv+0x30>
        if(!head) return 0;
    8000182c:	00050493          	mv	s1,a0
    return ret;
    80001830:	fd9ff06f          	j	80001808 <_ZN9Scheduler3getEv+0x3c>

0000000080001834 <_Z11userWrapeprPv>:
#include "../h/RISCV.hpp"


bool finished = false;
extern void userMain();
void userWrapepr(void*){
    80001834:	ff010113          	addi	sp,sp,-16
    80001838:	00113423          	sd	ra,8(sp)
    8000183c:	00813023          	sd	s0,0(sp)
    80001840:	01010413          	addi	s0,sp,16
    userMain();
    80001844:	00004097          	auipc	ra,0x4
    80001848:	63c080e7          	jalr	1596(ra) # 80005e80 <_Z8userMainv>
    finished = true;
    8000184c:	00100793          	li	a5,1
    80001850:	0000a717          	auipc	a4,0xa
    80001854:	20f70823          	sb	a5,528(a4) # 8000ba60 <finished>
}
    80001858:	00813083          	ld	ra,8(sp)
    8000185c:	00013403          	ld	s0,0(sp)
    80001860:	01010113          	addi	sp,sp,16
    80001864:	00008067          	ret

0000000080001868 <main>:


int main(int argc, char** argv){
    80001868:	fd010113          	addi	sp,sp,-48
    8000186c:	02113423          	sd	ra,40(sp)
    80001870:	02813023          	sd	s0,32(sp)
    80001874:	00913c23          	sd	s1,24(sp)
    80001878:	03010413          	addi	s0,sp,48
    uint64 mra;
    asm volatile("mv %0, ra":"=r"(mra));
    8000187c:	00008493          	mv	s1,ra
    RISCV::w_stvec((uint64) &RISCV::setVectorTable | 0x00);
    80001880:	0000a797          	auipc	a5,0xa
    80001884:	1187b783          	ld	a5,280(a5) # 8000b998 <_GLOBAL_OFFSET_TABLE_+0x38>
    }



    inline static void w_stvec(uint64 vect){
        asm volatile(" csrw stvec, %0" : : "r"(vect));
    80001888:	10579073          	csrw	stvec,a5
    static int mem_free(void* old);

    static void tryJoinWithNext(BlockHead* curr);

    static void init(){
        freeStart = (BlockHead*)((char*)HEAP_START_ADDR);
    8000188c:	0000a697          	auipc	a3,0xa
    80001890:	0f46b683          	ld	a3,244(a3) # 8000b980 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001894:	0006b783          	ld	a5,0(a3)
    80001898:	0000a717          	auipc	a4,0xa
    8000189c:	12873703          	ld	a4,296(a4) # 8000b9c0 <_GLOBAL_OFFSET_TABLE_+0x60>
    800018a0:	00f73023          	sd	a5,0(a4)
        usedStart = nullptr;
    800018a4:	0000a617          	auipc	a2,0xa
    800018a8:	10463603          	ld	a2,260(a2) # 8000b9a8 <_GLOBAL_OFFSET_TABLE_+0x48>
    800018ac:	00063023          	sd	zero,0(a2)

        freeStart->next = nullptr;
    800018b0:	0007b023          	sd	zero,0(a5)
        freeStart->size = ((char*) HEAP_END_ADDR - (char *) HEAP_START_ADDR - sizeof(BlockHead));
    800018b4:	0000a797          	auipc	a5,0xa
    800018b8:	1147b783          	ld	a5,276(a5) # 8000b9c8 <_GLOBAL_OFFSET_TABLE_+0x68>
    800018bc:	0007b783          	ld	a5,0(a5)
    800018c0:	0006b683          	ld	a3,0(a3)
    800018c4:	40d787b3          	sub	a5,a5,a3
    800018c8:	00073703          	ld	a4,0(a4)
    800018cc:	ff078793          	addi	a5,a5,-16
    800018d0:	00f73423          	sd	a5,8(a4)
    MemoryAllocator::init();
    IO::initIO();
    800018d4:	00001097          	auipc	ra,0x1
    800018d8:	504080e7          	jalr	1284(ra) # 80002dd8 <_ZN2IO6initIOEv>
    thread_t main;
    uint64 arg = 69;
    thread_create(&main, (_thread::Func )main, nullptr);
    800018dc:	00000613          	li	a2,0
    800018e0:	fd843583          	ld	a1,-40(s0)
    800018e4:	fd840513          	addi	a0,s0,-40
    800018e8:	00000097          	auipc	ra,0x0
    800018ec:	8dc080e7          	jalr	-1828(ra) # 800011c4 <_Z13thread_createPP7_threadPFvPvES2_>
    thread_t user_thread;
    thread_create(&user_thread, userWrapepr, (void*)arg);
    800018f0:	04500613          	li	a2,69
    800018f4:	00000597          	auipc	a1,0x0
    800018f8:	f4058593          	addi	a1,a1,-192 # 80001834 <_Z11userWrapeprPv>
    800018fc:	fd040513          	addi	a0,s0,-48
    80001900:	00000097          	auipc	ra,0x0
    80001904:	8c4080e7          	jalr	-1852(ra) # 800011c4 <_Z13thread_createPP7_threadPFvPvES2_>
        modeUser = newMode;
    80001908:	0000a797          	auipc	a5,0xa
    8000190c:	0d07b783          	ld	a5,208(a5) # 8000b9d8 <_GLOBAL_OFFSET_TABLE_+0x78>
    80001910:	00100713          	li	a4,1
    80001914:	00e78023          	sb	a4,0(a5)
    //  USER MODE STARTS HERE
    RISCV::setMode(true);
    while (!finished){
    80001918:	0000a797          	auipc	a5,0xa
    8000191c:	1487c783          	lbu	a5,328(a5) # 8000ba60 <finished>
    80001920:	00079863          	bnez	a5,80001930 <main+0xc8>
        thread_dispatch();
    80001924:	00000097          	auipc	ra,0x0
    80001928:	8fc080e7          	jalr	-1796(ra) # 80001220 <_Z15thread_dispatchv>
    8000192c:	fedff06f          	j	80001918 <main+0xb0>
    }
    RISCV::isMain = true;
    80001930:	0000a797          	auipc	a5,0xa
    80001934:	0b07b783          	ld	a5,176(a5) # 8000b9e0 <_GLOBAL_OFFSET_TABLE_+0x80>
    80001938:	00100713          	li	a4,1
    8000193c:	00e78023          	sb	a4,0(a5)
    80001940:	0000a797          	auipc	a5,0xa
    80001944:	0987b783          	ld	a5,152(a5) # 8000b9d8 <_GLOBAL_OFFSET_TABLE_+0x78>
    80001948:	00078023          	sb	zero,0(a5)
    8000194c:	0000a797          	auipc	a5,0xa
    80001950:	09c7b783          	ld	a5,156(a5) # 8000b9e8 <_GLOBAL_OFFSET_TABLE_+0x88>
    80001954:	1187b783          	ld	a5,280(a5)
    RISCV::setMode(false);
    while (IO::outputBuffer.getCount() > 0){
    80001958:	00078663          	beqz	a5,80001964 <main+0xfc>
        asm volatile("ecall");
    8000195c:	00000073          	ecall
    while (IO::outputBuffer.getCount() > 0){
    80001960:	fedff06f          	j	8000194c <main+0xe4>
    }
    _thread::running->setFinished();
    80001964:	0000a797          	auipc	a5,0xa
    80001968:	0247b783          	ld	a5,36(a5) # 8000b988 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000196c:	0007b783          	ld	a5,0(a5)
    void setFinished(){finished = true;}
    80001970:	00100713          	li	a4,1
    80001974:	02e780a3          	sb	a4,33(a5)
    asm volatile("mv ra, %0"::"r"(mra));
    80001978:	00048093          	mv	ra,s1
    return 0;
    8000197c:	00000513          	li	a0,0
    80001980:	02813083          	ld	ra,40(sp)
    80001984:	02013403          	ld	s0,32(sp)
    80001988:	01813483          	ld	s1,24(sp)
    8000198c:	03010113          	addi	sp,sp,48
    80001990:	00008067          	ret

0000000080001994 <_ZN6ThreadD1Ev>:

int Thread::start() {
    return thread_create(&myHandle, body, arg);
}

Thread::~Thread() {
    80001994:	ff010113          	addi	sp,sp,-16
    80001998:	00113423          	sd	ra,8(sp)
    8000199c:	00813023          	sd	s0,0(sp)
    800019a0:	01010413          	addi	s0,sp,16
    800019a4:	0000a797          	auipc	a5,0xa
    800019a8:	dd478793          	addi	a5,a5,-556 # 8000b778 <_ZTV6Thread+0x10>
    800019ac:	00f53023          	sd	a5,0(a0)
    thread_exit();
    800019b0:	00000097          	auipc	ra,0x0
    800019b4:	848080e7          	jalr	-1976(ra) # 800011f8 <_Z11thread_exitv>
}
    800019b8:	00813083          	ld	ra,8(sp)
    800019bc:	00013403          	ld	s0,0(sp)
    800019c0:	01010113          	addi	sp,sp,16
    800019c4:	00008067          	ret

00000000800019c8 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    800019c8:	ff010113          	addi	sp,sp,-16
    800019cc:	00113423          	sd	ra,8(sp)
    800019d0:	00813023          	sd	s0,0(sp)
    800019d4:	01010413          	addi	s0,sp,16
    800019d8:	0000a797          	auipc	a5,0xa
    800019dc:	dc878793          	addi	a5,a5,-568 # 8000b7a0 <_ZTV9Semaphore+0x10>
    800019e0:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    800019e4:	00853503          	ld	a0,8(a0)
    800019e8:	00000097          	auipc	ra,0x0
    800019ec:	890080e7          	jalr	-1904(ra) # 80001278 <_Z9sem_closeP4_sem>
}
    800019f0:	00813083          	ld	ra,8(sp)
    800019f4:	00013403          	ld	s0,0(sp)
    800019f8:	01010113          	addi	sp,sp,16
    800019fc:	00008067          	ret

0000000080001a00 <_Znwm>:
void* operator new(size_t size){
    80001a00:	ff010113          	addi	sp,sp,-16
    80001a04:	00113423          	sd	ra,8(sp)
    80001a08:	00813023          	sd	s0,0(sp)
    80001a0c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001a10:	fffff097          	auipc	ra,0xfffff
    80001a14:	750080e7          	jalr	1872(ra) # 80001160 <_Z9mem_allocm>
}
    80001a18:	00813083          	ld	ra,8(sp)
    80001a1c:	00013403          	ld	s0,0(sp)
    80001a20:	01010113          	addi	sp,sp,16
    80001a24:	00008067          	ret

0000000080001a28 <_ZdlPv>:
void operator delete (void* ptr){
    80001a28:	ff010113          	addi	sp,sp,-16
    80001a2c:	00113423          	sd	ra,8(sp)
    80001a30:	00813023          	sd	s0,0(sp)
    80001a34:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001a38:	fffff097          	auipc	ra,0xfffff
    80001a3c:	760080e7          	jalr	1888(ra) # 80001198 <_Z8mem_freePv>
}
    80001a40:	00813083          	ld	ra,8(sp)
    80001a44:	00013403          	ld	s0,0(sp)
    80001a48:	01010113          	addi	sp,sp,16
    80001a4c:	00008067          	ret

0000000080001a50 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001a50:	fe010113          	addi	sp,sp,-32
    80001a54:	00113c23          	sd	ra,24(sp)
    80001a58:	00813823          	sd	s0,16(sp)
    80001a5c:	00913423          	sd	s1,8(sp)
    80001a60:	02010413          	addi	s0,sp,32
    80001a64:	00050493          	mv	s1,a0
}
    80001a68:	00000097          	auipc	ra,0x0
    80001a6c:	f2c080e7          	jalr	-212(ra) # 80001994 <_ZN6ThreadD1Ev>
    80001a70:	00048513          	mv	a0,s1
    80001a74:	00000097          	auipc	ra,0x0
    80001a78:	fb4080e7          	jalr	-76(ra) # 80001a28 <_ZdlPv>
    80001a7c:	01813083          	ld	ra,24(sp)
    80001a80:	01013403          	ld	s0,16(sp)
    80001a84:	00813483          	ld	s1,8(sp)
    80001a88:	02010113          	addi	sp,sp,32
    80001a8c:	00008067          	ret

0000000080001a90 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001a90:	fe010113          	addi	sp,sp,-32
    80001a94:	00113c23          	sd	ra,24(sp)
    80001a98:	00813823          	sd	s0,16(sp)
    80001a9c:	00913423          	sd	s1,8(sp)
    80001aa0:	02010413          	addi	s0,sp,32
    80001aa4:	00050493          	mv	s1,a0
}
    80001aa8:	00000097          	auipc	ra,0x0
    80001aac:	f20080e7          	jalr	-224(ra) # 800019c8 <_ZN9SemaphoreD1Ev>
    80001ab0:	00048513          	mv	a0,s1
    80001ab4:	00000097          	auipc	ra,0x0
    80001ab8:	f74080e7          	jalr	-140(ra) # 80001a28 <_ZdlPv>
    80001abc:	01813083          	ld	ra,24(sp)
    80001ac0:	01013403          	ld	s0,16(sp)
    80001ac4:	00813483          	ld	s1,8(sp)
    80001ac8:	02010113          	addi	sp,sp,32
    80001acc:	00008067          	ret

0000000080001ad0 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80001ad0:	ff010113          	addi	sp,sp,-16
    80001ad4:	00813423          	sd	s0,8(sp)
    80001ad8:	01010413          	addi	s0,sp,16
    80001adc:	0000a797          	auipc	a5,0xa
    80001ae0:	c9c78793          	addi	a5,a5,-868 # 8000b778 <_ZTV6Thread+0x10>
    80001ae4:	00f53023          	sd	a5,0(a0)
    this->body = body;
    80001ae8:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    80001aec:	00c53c23          	sd	a2,24(a0)
}
    80001af0:	00813403          	ld	s0,8(sp)
    80001af4:	01010113          	addi	sp,sp,16
    80001af8:	00008067          	ret

0000000080001afc <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t slice) {
    80001afc:	ff010113          	addi	sp,sp,-16
    80001b00:	00113423          	sd	ra,8(sp)
    80001b04:	00813023          	sd	s0,0(sp)
    80001b08:	01010413          	addi	s0,sp,16
    return time_sleep(slice);
    80001b0c:	00000097          	auipc	ra,0x0
    80001b10:	864080e7          	jalr	-1948(ra) # 80001370 <_Z10time_sleepm>
}
    80001b14:	00813083          	ld	ra,8(sp)
    80001b18:	00013403          	ld	s0,0(sp)
    80001b1c:	01010113          	addi	sp,sp,16
    80001b20:	00008067          	ret

0000000080001b24 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001b24:	ff010113          	addi	sp,sp,-16
    80001b28:	00113423          	sd	ra,8(sp)
    80001b2c:	00813023          	sd	s0,0(sp)
    80001b30:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001b34:	fffff097          	auipc	ra,0xfffff
    80001b38:	6ec080e7          	jalr	1772(ra) # 80001220 <_Z15thread_dispatchv>
}
    80001b3c:	00813083          	ld	ra,8(sp)
    80001b40:	00013403          	ld	s0,0(sp)
    80001b44:	01010113          	addi	sp,sp,16
    80001b48:	00008067          	ret

0000000080001b4c <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001b4c:	ff010113          	addi	sp,sp,-16
    80001b50:	00813423          	sd	s0,8(sp)
    80001b54:	01010413          	addi	s0,sp,16
    80001b58:	0000a797          	auipc	a5,0xa
    80001b5c:	c2078793          	addi	a5,a5,-992 # 8000b778 <_ZTV6Thread+0x10>
    80001b60:	00f53023          	sd	a5,0(a0)
    this->body = nullptr;
    80001b64:	00053823          	sd	zero,16(a0)
    this->arg = nullptr;
    80001b68:	00053c23          	sd	zero,24(a0)
}
    80001b6c:	00813403          	ld	s0,8(sp)
    80001b70:	01010113          	addi	sp,sp,16
    80001b74:	00008067          	ret

0000000080001b78 <_ZN6Thread5startEv>:
int Thread::start() {
    80001b78:	ff010113          	addi	sp,sp,-16
    80001b7c:	00113423          	sd	ra,8(sp)
    80001b80:	00813023          	sd	s0,0(sp)
    80001b84:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, body, arg);
    80001b88:	01853603          	ld	a2,24(a0)
    80001b8c:	01053583          	ld	a1,16(a0)
    80001b90:	00850513          	addi	a0,a0,8
    80001b94:	fffff097          	auipc	ra,0xfffff
    80001b98:	630080e7          	jalr	1584(ra) # 800011c4 <_Z13thread_createPP7_threadPFvPvES2_>
}
    80001b9c:	00813083          	ld	ra,8(sp)
    80001ba0:	00013403          	ld	s0,0(sp)
    80001ba4:	01010113          	addi	sp,sp,16
    80001ba8:	00008067          	ret

0000000080001bac <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80001bac:	ff010113          	addi	sp,sp,-16
    80001bb0:	00113423          	sd	ra,8(sp)
    80001bb4:	00813023          	sd	s0,0(sp)
    80001bb8:	01010413          	addi	s0,sp,16
    80001bbc:	0000a797          	auipc	a5,0xa
    80001bc0:	be478793          	addi	a5,a5,-1052 # 8000b7a0 <_ZTV9Semaphore+0x10>
    80001bc4:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80001bc8:	00850513          	addi	a0,a0,8
    80001bcc:	fffff097          	auipc	ra,0xfffff
    80001bd0:	674080e7          	jalr	1652(ra) # 80001240 <_Z8sem_openPP4_semj>
}
    80001bd4:	00813083          	ld	ra,8(sp)
    80001bd8:	00013403          	ld	s0,0(sp)
    80001bdc:	01010113          	addi	sp,sp,16
    80001be0:	00008067          	ret

0000000080001be4 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80001be4:	ff010113          	addi	sp,sp,-16
    80001be8:	00113423          	sd	ra,8(sp)
    80001bec:	00813023          	sd	s0,0(sp)
    80001bf0:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001bf4:	00853503          	ld	a0,8(a0)
    80001bf8:	fffff097          	auipc	ra,0xfffff
    80001bfc:	6b0080e7          	jalr	1712(ra) # 800012a8 <_Z8sem_waitP4_sem>
}
    80001c00:	00813083          	ld	ra,8(sp)
    80001c04:	00013403          	ld	s0,0(sp)
    80001c08:	01010113          	addi	sp,sp,16
    80001c0c:	00008067          	ret

0000000080001c10 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80001c10:	ff010113          	addi	sp,sp,-16
    80001c14:	00113423          	sd	ra,8(sp)
    80001c18:	00813023          	sd	s0,0(sp)
    80001c1c:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001c20:	00853503          	ld	a0,8(a0)
    80001c24:	fffff097          	auipc	ra,0xfffff
    80001c28:	6b4080e7          	jalr	1716(ra) # 800012d8 <_Z10sem_signalP4_sem>
}
    80001c2c:	00813083          	ld	ra,8(sp)
    80001c30:	00013403          	ld	s0,0(sp)
    80001c34:	01010113          	addi	sp,sp,16
    80001c38:	00008067          	ret

0000000080001c3c <_ZN9Semaphore9timedWaitEm>:

int Semaphore::timedWait(time_t slice) {
    80001c3c:	ff010113          	addi	sp,sp,-16
    80001c40:	00113423          	sd	ra,8(sp)
    80001c44:	00813023          	sd	s0,0(sp)
    80001c48:	01010413          	addi	s0,sp,16
    return sem_timedwait(myHandle, slice);
    80001c4c:	00853503          	ld	a0,8(a0)
    80001c50:	fffff097          	auipc	ra,0xfffff
    80001c54:	6b8080e7          	jalr	1720(ra) # 80001308 <_Z13sem_timedwaitP4_semm>
}
    80001c58:	00813083          	ld	ra,8(sp)
    80001c5c:	00013403          	ld	s0,0(sp)
    80001c60:	01010113          	addi	sp,sp,16
    80001c64:	00008067          	ret

0000000080001c68 <_ZN9Semaphore7tryWaitEv>:

int Semaphore::tryWait() {
    80001c68:	ff010113          	addi	sp,sp,-16
    80001c6c:	00113423          	sd	ra,8(sp)
    80001c70:	00813023          	sd	s0,0(sp)
    80001c74:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    80001c78:	00853503          	ld	a0,8(a0)
    80001c7c:	fffff097          	auipc	ra,0xfffff
    80001c80:	6c4080e7          	jalr	1732(ra) # 80001340 <_Z11sem_trywaitP4_sem>
}
    80001c84:	00813083          	ld	ra,8(sp)
    80001c88:	00013403          	ld	s0,0(sp)
    80001c8c:	01010113          	addi	sp,sp,16
    80001c90:	00008067          	ret

0000000080001c94 <_ZN7Console4getcEv>:

char Console::getc() {
    80001c94:	ff010113          	addi	sp,sp,-16
    80001c98:	00113423          	sd	ra,8(sp)
    80001c9c:	00813023          	sd	s0,0(sp)
    80001ca0:	01010413          	addi	s0,sp,16
    return ::getc();
    80001ca4:	fffff097          	auipc	ra,0xfffff
    80001ca8:	6f4080e7          	jalr	1780(ra) # 80001398 <_Z4getcv>
}
    80001cac:	00813083          	ld	ra,8(sp)
    80001cb0:	00013403          	ld	s0,0(sp)
    80001cb4:	01010113          	addi	sp,sp,16
    80001cb8:	00008067          	ret

0000000080001cbc <_ZN7Console4putcEc>:

void Console::putc(char ch) {
    80001cbc:	ff010113          	addi	sp,sp,-16
    80001cc0:	00113423          	sd	ra,8(sp)
    80001cc4:	00813023          	sd	s0,0(sp)
    80001cc8:	01010413          	addi	s0,sp,16
    ::putc(ch);
    80001ccc:	fffff097          	auipc	ra,0xfffff
    80001cd0:	6f4080e7          	jalr	1780(ra) # 800013c0 <_Z4putcc>
}
    80001cd4:	00813083          	ld	ra,8(sp)
    80001cd8:	00013403          	ld	s0,0(sp)
    80001cdc:	01010113          	addi	sp,sp,16
    80001ce0:	00008067          	ret

0000000080001ce4 <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) : Thread(){
    80001ce4:	fe010113          	addi	sp,sp,-32
    80001ce8:	00113c23          	sd	ra,24(sp)
    80001cec:	00813823          	sd	s0,16(sp)
    80001cf0:	00913423          	sd	s1,8(sp)
    80001cf4:	01213023          	sd	s2,0(sp)
    80001cf8:	02010413          	addi	s0,sp,32
    80001cfc:	00050913          	mv	s2,a0
    80001d00:	00058493          	mv	s1,a1
    80001d04:	00000097          	auipc	ra,0x0
    80001d08:	e48080e7          	jalr	-440(ra) # 80001b4c <_ZN6ThreadC1Ev>
    80001d0c:	0000a797          	auipc	a5,0xa
    80001d10:	a3c78793          	addi	a5,a5,-1476 # 8000b748 <_ZTV14PeriodicThread+0x10>
    80001d14:	00f93023          	sd	a5,0(s2)
    this->period = period;
    80001d18:	02993023          	sd	s1,32(s2)
    this->start();
    80001d1c:	00090513          	mv	a0,s2
    80001d20:	00000097          	auipc	ra,0x0
    80001d24:	e58080e7          	jalr	-424(ra) # 80001b78 <_ZN6Thread5startEv>
    while (true){
        this->run();
        time_sleep(period);
    80001d28:	00048513          	mv	a0,s1
    80001d2c:	fffff097          	auipc	ra,0xfffff
    80001d30:	644080e7          	jalr	1604(ra) # 80001370 <_Z10time_sleepm>
    80001d34:	ff5ff06f          	j	80001d28 <_ZN14PeriodicThreadC1Em+0x44>
    80001d38:	00050493          	mv	s1,a0
PeriodicThread::PeriodicThread(time_t period) : Thread(){
    80001d3c:	00090513          	mv	a0,s2
    80001d40:	00000097          	auipc	ra,0x0
    80001d44:	c54080e7          	jalr	-940(ra) # 80001994 <_ZN6ThreadD1Ev>
    80001d48:	00048513          	mv	a0,s1
    80001d4c:	0000b097          	auipc	ra,0xb
    80001d50:	0ac080e7          	jalr	172(ra) # 8000cdf8 <_Unwind_Resume>

0000000080001d54 <_ZN14PeriodicThread9terminateEv>:
    }
}

void PeriodicThread::terminate() {
    80001d54:	ff010113          	addi	sp,sp,-16
    80001d58:	00113423          	sd	ra,8(sp)
    80001d5c:	00813023          	sd	s0,0(sp)
    80001d60:	01010413          	addi	s0,sp,16
    thread_exit();
    80001d64:	fffff097          	auipc	ra,0xfffff
    80001d68:	494080e7          	jalr	1172(ra) # 800011f8 <_Z11thread_exitv>
}
    80001d6c:	00813083          	ld	ra,8(sp)
    80001d70:	00013403          	ld	s0,0(sp)
    80001d74:	01010113          	addi	sp,sp,16
    80001d78:	00008067          	ret

0000000080001d7c <_ZN6Thread3runEv>:
    static void dispatch();
    static int sleep (time_t);

protected:
    Thread();
    virtual void run(){}
    80001d7c:	ff010113          	addi	sp,sp,-16
    80001d80:	00813423          	sd	s0,8(sp)
    80001d84:	01010413          	addi	s0,sp,16
    80001d88:	00813403          	ld	s0,8(sp)
    80001d8c:	01010113          	addi	sp,sp,16
    80001d90:	00008067          	ret

0000000080001d94 <_ZN14PeriodicThread18periodicActivationEv>:
public:
    void terminate ();

protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80001d94:	ff010113          	addi	sp,sp,-16
    80001d98:	00813423          	sd	s0,8(sp)
    80001d9c:	01010413          	addi	s0,sp,16
    80001da0:	00813403          	ld	s0,8(sp)
    80001da4:	01010113          	addi	sp,sp,16
    80001da8:	00008067          	ret

0000000080001dac <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80001dac:	ff010113          	addi	sp,sp,-16
    80001db0:	00113423          	sd	ra,8(sp)
    80001db4:	00813023          	sd	s0,0(sp)
    80001db8:	01010413          	addi	s0,sp,16
    80001dbc:	0000a797          	auipc	a5,0xa
    80001dc0:	98c78793          	addi	a5,a5,-1652 # 8000b748 <_ZTV14PeriodicThread+0x10>
    80001dc4:	00f53023          	sd	a5,0(a0)
    80001dc8:	00000097          	auipc	ra,0x0
    80001dcc:	bcc080e7          	jalr	-1076(ra) # 80001994 <_ZN6ThreadD1Ev>
    80001dd0:	00813083          	ld	ra,8(sp)
    80001dd4:	00013403          	ld	s0,0(sp)
    80001dd8:	01010113          	addi	sp,sp,16
    80001ddc:	00008067          	ret

0000000080001de0 <_ZN14PeriodicThreadD0Ev>:
    80001de0:	fe010113          	addi	sp,sp,-32
    80001de4:	00113c23          	sd	ra,24(sp)
    80001de8:	00813823          	sd	s0,16(sp)
    80001dec:	00913423          	sd	s1,8(sp)
    80001df0:	02010413          	addi	s0,sp,32
    80001df4:	00050493          	mv	s1,a0
    80001df8:	0000a797          	auipc	a5,0xa
    80001dfc:	95078793          	addi	a5,a5,-1712 # 8000b748 <_ZTV14PeriodicThread+0x10>
    80001e00:	00f53023          	sd	a5,0(a0)
    80001e04:	00000097          	auipc	ra,0x0
    80001e08:	b90080e7          	jalr	-1136(ra) # 80001994 <_ZN6ThreadD1Ev>
    80001e0c:	00048513          	mv	a0,s1
    80001e10:	00000097          	auipc	ra,0x0
    80001e14:	c18080e7          	jalr	-1000(ra) # 80001a28 <_ZdlPv>
    80001e18:	01813083          	ld	ra,24(sp)
    80001e1c:	01013403          	ld	s0,16(sp)
    80001e20:	00813483          	ld	s1,8(sp)
    80001e24:	02010113          	addi	sp,sp,32
    80001e28:	00008067          	ret

0000000080001e2c <_ZN5RISCV20handleSupervisorTrapEv>:
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

#pragma GCC optimize("O0")
extern "C" void RISCV::handleSupervisorTrap() {
    80001e2c:	f6010113          	addi	sp,sp,-160
    80001e30:	08113c23          	sd	ra,152(sp)
    80001e34:	08813823          	sd	s0,144(sp)
    80001e38:	08913423          	sd	s1,136(sp)
    80001e3c:	0a010413          	addi	s0,sp,160
    uint64 ra;
    asm volatile("ld %0, 8(s0)": "=r"(ra));
    80001e40:	00843783          	ld	a5,8(s0)
    80001e44:	fcf43823          	sd	a5,-48(s0)
    uint64 scause, sepc, sstatus;
    __asm__ volatile("csrr %[scause], scause":[scause] "=r"(scause));
    80001e48:	142027f3          	csrr	a5,scause
    80001e4c:	fcf43423          	sd	a5,-56(s0)
    __asm__ volatile("csrr %[sepc], sepc":[sepc] "=r"(sepc));
    80001e50:	141027f3          	csrr	a5,sepc
    80001e54:	fcf43023          	sd	a5,-64(s0)
    __asm__ volatile("csrr %[stat], sstatus":[stat] "=r"(sstatus));
    80001e58:	100027f3          	csrr	a5,sstatus
    80001e5c:	fcf43c23          	sd	a5,-40(s0)
    sepc += 4;
    80001e60:	fc043783          	ld	a5,-64(s0)
    80001e64:	00478793          	addi	a5,a5,4
    80001e68:	fcf43023          	sd	a5,-64(s0)

    if(scause == 0x0000000000000008 || scause == 0x0000000000000009){
    80001e6c:	fc843703          	ld	a4,-56(s0)
    80001e70:	00800793          	li	a5,8
    80001e74:	00f70863          	beq	a4,a5,80001e84 <_ZN5RISCV20handleSupervisorTrapEv+0x58>
    80001e78:	fc843703          	ld	a4,-56(s0)
    80001e7c:	00900793          	li	a5,9
    80001e80:	34f71463          	bne	a4,a5,800021c8 <_ZN5RISCV20handleSupervisorTrapEv+0x39c>
        size_t size;
        void* ptr;
        int retVal;
        uint64 a0, a1, a2, a3;
        __asm__ volatile("mv %[ax], a0":[ax] "=r"(a0): : "a5", "a0", "a1", "a2", "a3", "a4", "a6", "a7");
    80001e84:	00050313          	mv	t1,a0
    80001e88:	fa643023          	sd	t1,-96(s0)
        __asm__ volatile("mv %[ax], a1":[ax] "=r"(a1): : "a5", "a0", "a1", "a2", "a3", "a4", "a6", "a7");
    80001e8c:	00058313          	mv	t1,a1
    80001e90:	f8643c23          	sd	t1,-104(s0)
        __asm__ volatile("mv %[ax], a2":[ax] "=r"(a2): : "a5", "a0", "a1", "a2", "a3", "a4", "a6", "a7");
    80001e94:	00060313          	mv	t1,a2
    80001e98:	f8643823          	sd	t1,-112(s0)
        __asm__ volatile("mv %[ax], a3":[ax] "=r"(a3): : "a5", "a0", "a1", "a2", "a3", "a4", "a6", "a7");
    80001e9c:	00068313          	mv	t1,a3
    80001ea0:	f8643423          	sd	t1,-120(s0)
        //__asm__ volatile("mv %[ax], a4":[ax] "=r"(a4): : "a5", "a0", "a1", "a2", "a3", "a4", "a6", "a7");
        switch (a0) {
    80001ea4:	fa043703          	ld	a4,-96(s0)
    80001ea8:	04200793          	li	a5,66
    80001eac:	52e7e863          	bltu	a5,a4,800023dc <_ZN5RISCV20handleSupervisorTrapEv+0x5b0>
    80001eb0:	fa043783          	ld	a5,-96(s0)
    80001eb4:	00279713          	slli	a4,a5,0x2
    80001eb8:	00007797          	auipc	a5,0x7
    80001ebc:	16878793          	addi	a5,a5,360 # 80009020 <CONSOLE_STATUS+0x10>
    80001ec0:	00f707b3          	add	a5,a4,a5
    80001ec4:	0007a783          	lw	a5,0(a5)
    80001ec8:	0007871b          	sext.w	a4,a5
    80001ecc:	00007797          	auipc	a5,0x7
    80001ed0:	15478793          	addi	a5,a5,340 # 80009020 <CONSOLE_STATUS+0x10>
    80001ed4:	00f707b3          	add	a5,a4,a5
    80001ed8:	00078067          	jr	a5
            case 0x01:
                //Called mem_alloc
                asm volatile("mv %0, a1":"=r"(size));
    80001edc:	00058793          	mv	a5,a1
    80001ee0:	f6f43423          	sd	a5,-152(s0)
                size *= MEM_BLOCK_SIZE;                 //Fix later to have MemoryAllocator::mem_alloc take blocks
    80001ee4:	f6843783          	ld	a5,-152(s0)
    80001ee8:	00679793          	slli	a5,a5,0x6
    80001eec:	f6f43423          	sd	a5,-152(s0)
                ptr = MemoryAllocator::mem_alloc(size);
    80001ef0:	f6843503          	ld	a0,-152(s0)
    80001ef4:	00001097          	auipc	ra,0x1
    80001ef8:	188080e7          	jalr	392(ra) # 8000307c <_ZN15MemoryAllocator9mem_allocEm>
    80001efc:	00050793          	mv	a5,a0
    80001f00:	f6f43c23          	sd	a5,-136(s0)
                //ptr = __mem_alloc(size);
                asm volatile("mv t0, %0"::"r"(ptr));
    80001f04:	f7843783          	ld	a5,-136(s0)
    80001f08:	00078293          	mv	t0,a5
                asm volatile ("sw t0, 80(x8)");
    80001f0c:	04542823          	sw	t0,80(s0)
                break;
    80001f10:	2b40006f          	j	800021c4 <_ZN5RISCV20handleSupervisorTrapEv+0x398>
            case 0x02:
                //Called mem_free
                asm volatile("mv %0, a1":"=r"(ptr));
    80001f14:	00058793          	mv	a5,a1
    80001f18:	f6f43c23          	sd	a5,-136(s0)
                retVal = MemoryAllocator::mem_free(ptr);
    80001f1c:	f7843503          	ld	a0,-136(s0)
    80001f20:	00001097          	auipc	ra,0x1
    80001f24:	2dc080e7          	jalr	732(ra) # 800031fc <_ZN15MemoryAllocator8mem_freeEPv>
    80001f28:	00050793          	mv	a5,a0
    80001f2c:	f6f42a23          	sw	a5,-140(s0)
                //retVal = __mem_free(ptr);
                asm volatile("mv t0, %0"::"r"(retVal));
    80001f30:	f7442783          	lw	a5,-140(s0)
    80001f34:	00078293          	mv	t0,a5
                asm volatile ("sw t0, 80(x8)");
    80001f38:	04542823          	sw	t0,80(s0)
                break;
    80001f3c:	2880006f          	j	800021c4 <_ZN5RISCV20handleSupervisorTrapEv+0x398>

            case 0x11:
                //Called thread create
                *((thread_t*)a1)= _thread::createThread((_thread::Func )a2, (void*)a3, ra);
    80001f40:	f9043783          	ld	a5,-112(s0)
    80001f44:	f8843703          	ld	a4,-120(s0)
    80001f48:	f9843483          	ld	s1,-104(s0)
    80001f4c:	fd043603          	ld	a2,-48(s0)
    80001f50:	00070593          	mv	a1,a4
    80001f54:	00078513          	mv	a0,a5
    80001f58:	fffff097          	auipc	ra,0xfffff
    80001f5c:	774080e7          	jalr	1908(ra) # 800016cc <_ZN7_thread12createThreadEPFvPvES0_m>
    80001f60:	00050793          	mv	a5,a0
    80001f64:	00f4b023          	sd	a5,0(s1)
                if (*((thread_t*)a1) != nullptr) {
    80001f68:	f9843783          	ld	a5,-104(s0)
    80001f6c:	0007b783          	ld	a5,0(a5)
    80001f70:	04078e63          	beqz	a5,80001fcc <_ZN5RISCV20handleSupervisorTrapEv+0x1a0>

                    if (!isMain) {
    80001f74:	0000a797          	auipc	a5,0xa
    80001f78:	83c78793          	addi	a5,a5,-1988 # 8000b7b0 <_ZN5RISCV6isMainE>
    80001f7c:	0007c783          	lbu	a5,0(a5)
    80001f80:	0017c793          	xori	a5,a5,1
    80001f84:	0ff7f793          	andi	a5,a5,255
    80001f88:	00078e63          	beqz	a5,80001fa4 <_ZN5RISCV20handleSupervisorTrapEv+0x178>
                        Scheduler::put(*((thread_t*)a1));
    80001f8c:	f9843783          	ld	a5,-104(s0)
    80001f90:	0007b783          	ld	a5,0(a5)
    80001f94:	00078513          	mv	a0,a5
    80001f98:	fffff097          	auipc	ra,0xfffff
    80001f9c:	7c8080e7          	jalr	1992(ra) # 80001760 <_ZN9Scheduler3putEP7_thread>
    80001fa0:	0240006f          	j	80001fc4 <_ZN5RISCV20handleSupervisorTrapEv+0x198>
                    } else {
                        isMain = false;
    80001fa4:	0000a797          	auipc	a5,0xa
    80001fa8:	80c78793          	addi	a5,a5,-2036 # 8000b7b0 <_ZN5RISCV6isMainE>
    80001fac:	00078023          	sb	zero,0(a5)
                        _thread::running = *((thread_t*)a1);
    80001fb0:	f9843783          	ld	a5,-104(s0)
    80001fb4:	0007b703          	ld	a4,0(a5)
    80001fb8:	0000a797          	auipc	a5,0xa
    80001fbc:	9d07b783          	ld	a5,-1584(a5) # 8000b988 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001fc0:	00e7b023          	sd	a4,0(a5)
                    }
                    __asm__ volatile("li t0, 0");
    80001fc4:	00000293          	li	t0,0
    80001fc8:	0080006f          	j	80001fd0 <_ZN5RISCV20handleSupervisorTrapEv+0x1a4>
                } else {
                    __asm__ volatile("li t0, -1");
    80001fcc:	fff00293          	li	t0,-1
                }
                asm volatile ("sw t0, 80(x8)");
    80001fd0:	04542823          	sw	t0,80(s0)
                break;
    80001fd4:	1f00006f          	j	800021c4 <_ZN5RISCV20handleSupervisorTrapEv+0x398>
            case 0x12:
                //Called thread exit
                _thread::running->setFinished();
    80001fd8:	0000a797          	auipc	a5,0xa
    80001fdc:	9b07b783          	ld	a5,-1616(a5) # 8000b988 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001fe0:	0007b783          	ld	a5,0(a5)
    80001fe4:	00078513          	mv	a0,a5
    80001fe8:	00000097          	auipc	ra,0x0
    80001fec:	62c080e7          	jalr	1580(ra) # 80002614 <_ZN7_thread11setFinishedEv>
                asm volatile("li t0, 0");
    80001ff0:	00000293          	li	t0,0
                asm volatile ("sw t0, 80(x8)");
    80001ff4:	04542823          	sw	t0,80(s0)
                if(!isMain) {
    80001ff8:	00009797          	auipc	a5,0x9
    80001ffc:	7b878793          	addi	a5,a5,1976 # 8000b7b0 <_ZN5RISCV6isMainE>
    80002000:	0007c783          	lbu	a5,0(a5)
    80002004:	0017c793          	xori	a5,a5,1
    80002008:	0ff7f793          	andi	a5,a5,255
    8000200c:	1a078663          	beqz	a5,800021b8 <_ZN5RISCV20handleSupervisorTrapEv+0x38c>
                    _thread::dispatch();
    80002010:	fffff097          	auipc	ra,0xfffff
    80002014:	4e4080e7          	jalr	1252(ra) # 800014f4 <_ZN7_thread8dispatchEv>
                }
                break;
    80002018:	1a00006f          	j	800021b8 <_ZN5RISCV20handleSupervisorTrapEv+0x38c>

            case 0x13:
                //Called thread_dispatch
                _thread::runningTimeSlice = 0;
    8000201c:	0000a797          	auipc	a5,0xa
    80002020:	95c7b783          	ld	a5,-1700(a5) # 8000b978 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002024:	0007b023          	sd	zero,0(a5)
                _thread::dispatch();
    80002028:	fffff097          	auipc	ra,0xfffff
    8000202c:	4cc080e7          	jalr	1228(ra) # 800014f4 <_ZN7_thread8dispatchEv>
                break;
    80002030:	1940006f          	j	800021c4 <_ZN5RISCV20handleSupervisorTrapEv+0x398>
            case 0x21:
                //Called sem_open
                *((sem_t*)a1) = _sem::init((int)a2);
    80002034:	f9043783          	ld	a5,-112(s0)
    80002038:	0007879b          	sext.w	a5,a5
    8000203c:	f9843483          	ld	s1,-104(s0)
    80002040:	00078513          	mv	a0,a5
    80002044:	00001097          	auipc	ra,0x1
    80002048:	a5c080e7          	jalr	-1444(ra) # 80002aa0 <_ZN4_sem4initEi>
    8000204c:	00050793          	mv	a5,a0
    80002050:	00f4b023          	sd	a5,0(s1)
                if(*((sem_t*)a1) != nullptr){
    80002054:	f9843783          	ld	a5,-104(s0)
    80002058:	0007b783          	ld	a5,0(a5)
    8000205c:	00078663          	beqz	a5,80002068 <_ZN5RISCV20handleSupervisorTrapEv+0x23c>
                    asm volatile("li t0, 0");
    80002060:	00000293          	li	t0,0
    80002064:	0080006f          	j	8000206c <_ZN5RISCV20handleSupervisorTrapEv+0x240>
                } else {
                    asm volatile("li t0, -1");
    80002068:	fff00293          	li	t0,-1
                }
                asm volatile ("sw t0, 80(x8)");
    8000206c:	04542823          	sw	t0,80(s0)
                break;
    80002070:	1540006f          	j	800021c4 <_ZN5RISCV20handleSupervisorTrapEv+0x398>
            case 0x22:
                //Called sem_close
                _sem::close_sem((sem_t)a1);
    80002074:	f9843783          	ld	a5,-104(s0)
    80002078:	00078513          	mv	a0,a5
    8000207c:	00001097          	auipc	ra,0x1
    80002080:	9a4080e7          	jalr	-1628(ra) # 80002a20 <_ZN4_sem9close_semEPS_>
                asm volatile("li t0, 0");
    80002084:	00000293          	li	t0,0
                asm volatile ("sw t0, 80(x8)");
    80002088:	04542823          	sw	t0,80(s0)
                delete (sem_t)a1;
    8000208c:	f9843783          	ld	a5,-104(s0)
    80002090:	12078863          	beqz	a5,800021c0 <_ZN5RISCV20handleSupervisorTrapEv+0x394>
    80002094:	00078513          	mv	a0,a5
    80002098:	00001097          	auipc	ra,0x1
    8000209c:	960080e7          	jalr	-1696(ra) # 800029f8 <_ZN4_semdlEPv>
                break;
    800020a0:	1200006f          	j	800021c0 <_ZN5RISCV20handleSupervisorTrapEv+0x394>
            case 0x23:
                //Called sem_wait
                ((sem_t)a1)->wait();
    800020a4:	f9843783          	ld	a5,-104(s0)
    800020a8:	00078513          	mv	a0,a5
    800020ac:	00001097          	auipc	ra,0x1
    800020b0:	8e4080e7          	jalr	-1820(ra) # 80002990 <_ZN4_sem4waitEv>
                asm volatile ("sw t0, 80(x8)");
    800020b4:	04542823          	sw	t0,80(s0)
                break;
    800020b8:	10c0006f          	j	800021c4 <_ZN5RISCV20handleSupervisorTrapEv+0x398>
            case 0x24:
                //Called sem_signal
                ((sem_t)a1)->signal();
    800020bc:	f9843783          	ld	a5,-104(s0)
    800020c0:	00078513          	mv	a0,a5
    800020c4:	00001097          	auipc	ra,0x1
    800020c8:	800080e7          	jalr	-2048(ra) # 800028c4 <_ZN4_sem6signalEv>
                asm volatile ("sw t0, 80(x8)");
    800020cc:	04542823          	sw	t0,80(s0)
                break;
    800020d0:	0f40006f          	j	800021c4 <_ZN5RISCV20handleSupervisorTrapEv+0x398>
            case 0x25:
                //Called sem_timedwait              Implement later
                ((sem_t)a1)->timedWait((time_t)a2);
    800020d4:	f9843783          	ld	a5,-104(s0)
    800020d8:	f9043583          	ld	a1,-112(s0)
    800020dc:	00078513          	mv	a0,a5
    800020e0:	00001097          	auipc	ra,0x1
    800020e4:	a04080e7          	jalr	-1532(ra) # 80002ae4 <_ZN4_sem9timedWaitEm>
                asm volatile("li t0, 0");
    800020e8:	00000293          	li	t0,0
                asm volatile ("sw t0, 80(x8)");
    800020ec:	04542823          	sw	t0,80(s0)
                break;
    800020f0:	0d40006f          	j	800021c4 <_ZN5RISCV20handleSupervisorTrapEv+0x398>
            case 0x26:
                //Called sem_trywait
                if(((sem_t)a1)->try_wait() == 0){
    800020f4:	f9843783          	ld	a5,-104(s0)
    800020f8:	00078513          	mv	a0,a5
    800020fc:	00001097          	auipc	ra,0x1
    80002100:	970080e7          	jalr	-1680(ra) # 80002a6c <_ZN4_sem8try_waitEv>
    80002104:	00050793          	mv	a5,a0
    80002108:	0017b793          	seqz	a5,a5
    8000210c:	0ff7f793          	andi	a5,a5,255
    80002110:	00078663          	beqz	a5,8000211c <_ZN5RISCV20handleSupervisorTrapEv+0x2f0>
                    asm volatile("li t0, 1");
    80002114:	00100293          	li	t0,1
    80002118:	0080006f          	j	80002120 <_ZN5RISCV20handleSupervisorTrapEv+0x2f4>
                } else {
                    asm volatile("li t0, 0");
    8000211c:	00000293          	li	t0,0
                }
                asm volatile ("sw t0, 80(x8)");
    80002120:	04542823          	sw	t0,80(s0)
                break;
    80002124:	0a00006f          	j	800021c4 <_ZN5RISCV20handleSupervisorTrapEv+0x398>
            case 0x31:
                //Called time_sleep
                if((time_t)a1 != 0){
    80002128:	f9843783          	ld	a5,-104(s0)
    8000212c:	04078263          	beqz	a5,80002170 <_ZN5RISCV20handleSupervisorTrapEv+0x344>
                    _thread::running->setSleepWait(true);
    80002130:	0000a797          	auipc	a5,0xa
    80002134:	8587b783          	ld	a5,-1960(a5) # 8000b988 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002138:	0007b783          	ld	a5,0(a5)
    8000213c:	00100593          	li	a1,1
    80002140:	00078513          	mv	a0,a5
    80002144:	00000097          	auipc	ra,0x0
    80002148:	4b4080e7          	jalr	1204(ra) # 800025f8 <_ZN7_thread12setSleepWaitEb>
                    RISCV::sleepingThreads.put(_thread::running, (time_t)a1);
    8000214c:	0000a797          	auipc	a5,0xa
    80002150:	83c7b783          	ld	a5,-1988(a5) # 8000b988 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002154:	0007b783          	ld	a5,0(a5)
    80002158:	f9843603          	ld	a2,-104(s0)
    8000215c:	00078593          	mv	a1,a5
    80002160:	0000a517          	auipc	a0,0xa
    80002164:	91850513          	addi	a0,a0,-1768 # 8000ba78 <_ZN5RISCV15sleepingThreadsE>
    80002168:	00000097          	auipc	ra,0x0
    8000216c:	524080e7          	jalr	1316(ra) # 8000268c <_ZN12SleepingList3putEP7_threadm>
                }
                _thread::dispatch();
    80002170:	fffff097          	auipc	ra,0xfffff
    80002174:	384080e7          	jalr	900(ra) # 800014f4 <_ZN7_thread8dispatchEv>
                break;
    80002178:	04c0006f          	j	800021c4 <_ZN5RISCV20handleSupervisorTrapEv+0x398>
            case 0x41:
                //Called getc
                char read;
                read = IO::_getC();
    8000217c:	00001097          	auipc	ra,0x1
    80002180:	cd0080e7          	jalr	-816(ra) # 80002e4c <_ZN2IO5_getCEv>
    80002184:	00050793          	mv	a5,a0
    80002188:	f8f40323          	sb	a5,-122(s0)
                asm volatile("mv t0, %0"::"r"(read));
    8000218c:	f8644783          	lbu	a5,-122(s0)
    80002190:	00078293          	mv	t0,a5
                asm volatile ("sw t0, 80(x8)");
    80002194:	04542823          	sw	t0,80(s0)
                break;
    80002198:	02c0006f          	j	800021c4 <_ZN5RISCV20handleSupervisorTrapEv+0x398>
            case 0x42:
                //Called putc
                char out;
                out = (char )a1;
    8000219c:	f9843783          	ld	a5,-104(s0)
    800021a0:	f8f403a3          	sb	a5,-121(s0)
                IO::_putC(out);
    800021a4:	f8744783          	lbu	a5,-121(s0)
    800021a8:	00078513          	mv	a0,a5
    800021ac:	00001097          	auipc	ra,0x1
    800021b0:	c6c080e7          	jalr	-916(ra) # 80002e18 <_ZN2IO5_putCEc>
                //__putc((char)a1);
                break;
    800021b4:	0100006f          	j	800021c4 <_ZN5RISCV20handleSupervisorTrapEv+0x398>
                break;
    800021b8:	00000013          	nop
    800021bc:	2200006f          	j	800023dc <_ZN5RISCV20handleSupervisorTrapEv+0x5b0>
                break;
    800021c0:	00000013          	nop
        }
    800021c4:	2180006f          	j	800023dc <_ZN5RISCV20handleSupervisorTrapEv+0x5b0>
    }else if (scause == 0x8000000000000009){
    800021c8:	fc843703          	ld	a4,-56(s0)
    800021cc:	fff00793          	li	a5,-1
    800021d0:	03f79793          	slli	a5,a5,0x3f
    800021d4:	00978793          	addi	a5,a5,9
    800021d8:	08f71c63          	bne	a4,a5,80002270 <_ZN5RISCV20handleSupervisorTrapEv+0x444>

        if(plic_claim() == CONSOLE_IRQ){
    800021dc:	00005097          	auipc	ra,0x5
    800021e0:	088080e7          	jalr	136(ra) # 80007264 <plic_claim>
    800021e4:	00050793          	mv	a5,a0
    800021e8:	00078713          	mv	a4,a5
    800021ec:	00a00793          	li	a5,10
    800021f0:	40f707b3          	sub	a5,a4,a5
    800021f4:	0017b793          	seqz	a5,a5
    800021f8:	0ff7f793          	andi	a5,a5,255
    800021fc:	1e078263          	beqz	a5,800023e0 <_ZN5RISCV20handleSupervisorTrapEv+0x5b4>
            if ((*((char*)CONSOLE_STATUS)) & CONSOLE_RX_STATUS_BIT){
    80002200:	00009797          	auipc	a5,0x9
    80002204:	7707b783          	ld	a5,1904(a5) # 8000b970 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002208:	0007b783          	ld	a5,0(a5)
    8000220c:	0007c783          	lbu	a5,0(a5)
    80002210:	0017f793          	andi	a5,a5,1
    80002214:	04078663          	beqz	a5,80002260 <_ZN5RISCV20handleSupervisorTrapEv+0x434>
                volatile char ch = *(char*)CONSOLE_RX_DATA;
    80002218:	00009797          	auipc	a5,0x9
    8000221c:	7507b783          	ld	a5,1872(a5) # 8000b968 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002220:	0007b783          	ld	a5,0(a5)
    80002224:	0007c783          	lbu	a5,0(a5)
    80002228:	f6f40323          	sb	a5,-154(s0)
                if(ch != '\000'){
    8000222c:	f6644783          	lbu	a5,-154(s0)
    80002230:	0ff7f793          	andi	a5,a5,255
    80002234:	0007879b          	sext.w	a5,a5
    80002238:	00f037b3          	snez	a5,a5
    8000223c:	0ff7f793          	andi	a5,a5,255
    80002240:	02078063          	beqz	a5,80002260 <_ZN5RISCV20handleSupervisorTrapEv+0x434>
                    IO::inputBuffer.putc(ch);
    80002244:	f6644783          	lbu	a5,-154(s0)
    80002248:	0ff7f793          	andi	a5,a5,255
    8000224c:	00078593          	mv	a1,a5
    80002250:	00009517          	auipc	a0,0x9
    80002254:	76053503          	ld	a0,1888(a0) # 8000b9b0 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002258:	00001097          	auipc	ra,0x1
    8000225c:	ce8080e7          	jalr	-792(ra) # 80002f40 <_ZN6Buffer4putcEc>
                }

            }
            plic_complete(CONSOLE_IRQ);
    80002260:	00a00513          	li	a0,10
    80002264:	00005097          	auipc	ra,0x5
    80002268:	038080e7          	jalr	56(ra) # 8000729c <plic_complete>
    8000226c:	1740006f          	j	800023e0 <_ZN5RISCV20handleSupervisorTrapEv+0x5b4>
        }

    }else if (scause == 0x8000000000000001){
    80002270:	fc843703          	ld	a4,-56(s0)
    80002274:	fff00793          	li	a5,-1
    80002278:	03f79793          	slli	a5,a5,0x3f
    8000227c:	00178793          	addi	a5,a5,1
    80002280:	12f71063          	bne	a4,a5,800023a0 <_ZN5RISCV20handleSupervisorTrapEv+0x574>
        //Prekid od tajmera
        time_t firstTimeSleep = sleepingThreads.peekFirst();
    80002284:	00009517          	auipc	a0,0x9
    80002288:	7f450513          	addi	a0,a0,2036 # 8000ba78 <_ZN5RISCV15sleepingThreadsE>
    8000228c:	00000097          	auipc	ra,0x0
    80002290:	3d4080e7          	jalr	980(ra) # 80002660 <_ZN12SleepingList9peekFirstEv>
    80002294:	faa43c23          	sd	a0,-72(s0)
        time_t firstTimeWait = semTimedWaitList.peekFirst();
    80002298:	00009517          	auipc	a0,0x9
    8000229c:	7d050513          	addi	a0,a0,2000 # 8000ba68 <_ZN5RISCV16semTimedWaitListE>
    800022a0:	00000097          	auipc	ra,0x0
    800022a4:	3c0080e7          	jalr	960(ra) # 80002660 <_ZN12SleepingList9peekFirstEv>
    800022a8:	faa43823          	sd	a0,-80(s0)
        time_t t1 = -1;
    800022ac:	fff00793          	li	a5,-1
    800022b0:	faf43423          	sd	a5,-88(s0)
        if(firstTimeSleep != t1){
    800022b4:	fb843703          	ld	a4,-72(s0)
    800022b8:	fa843783          	ld	a5,-88(s0)
    800022bc:	04f70263          	beq	a4,a5,80002300 <_ZN5RISCV20handleSupervisorTrapEv+0x4d4>
            sleepingThreads.tickTime();
    800022c0:	00009517          	auipc	a0,0x9
    800022c4:	7b850513          	addi	a0,a0,1976 # 8000ba78 <_ZN5RISCV15sleepingThreadsE>
    800022c8:	00000097          	auipc	ra,0x0
    800022cc:	36c080e7          	jalr	876(ra) # 80002634 <_ZN12SleepingList8tickTimeEv>
            if(sleepingThreads.peekFirst() == 0){
    800022d0:	00009517          	auipc	a0,0x9
    800022d4:	7a850513          	addi	a0,a0,1960 # 8000ba78 <_ZN5RISCV15sleepingThreadsE>
    800022d8:	00000097          	auipc	ra,0x0
    800022dc:	388080e7          	jalr	904(ra) # 80002660 <_ZN12SleepingList9peekFirstEv>
    800022e0:	00050793          	mv	a5,a0
    800022e4:	0017b793          	seqz	a5,a5
    800022e8:	0ff7f793          	andi	a5,a5,255
    800022ec:	00078a63          	beqz	a5,80002300 <_ZN5RISCV20handleSupervisorTrapEv+0x4d4>
                sleepingThreads.wakeThreads();
    800022f0:	00009517          	auipc	a0,0x9
    800022f4:	78850513          	addi	a0,a0,1928 # 8000ba78 <_ZN5RISCV15sleepingThreadsE>
    800022f8:	fffff097          	auipc	ra,0xfffff
    800022fc:	0ec080e7          	jalr	236(ra) # 800013e4 <_ZN12SleepingList11wakeThreadsEv>
            }
        }

        if(firstTimeWait != t1){
    80002300:	fb043703          	ld	a4,-80(s0)
    80002304:	fa843783          	ld	a5,-88(s0)
    80002308:	04f70263          	beq	a4,a5,8000234c <_ZN5RISCV20handleSupervisorTrapEv+0x520>
            semTimedWaitList.tickTime();
    8000230c:	00009517          	auipc	a0,0x9
    80002310:	75c50513          	addi	a0,a0,1884 # 8000ba68 <_ZN5RISCV16semTimedWaitListE>
    80002314:	00000097          	auipc	ra,0x0
    80002318:	320080e7          	jalr	800(ra) # 80002634 <_ZN12SleepingList8tickTimeEv>
            if(semTimedWaitList.peekFirst() == 0){
    8000231c:	00009517          	auipc	a0,0x9
    80002320:	74c50513          	addi	a0,a0,1868 # 8000ba68 <_ZN5RISCV16semTimedWaitListE>
    80002324:	00000097          	auipc	ra,0x0
    80002328:	33c080e7          	jalr	828(ra) # 80002660 <_ZN12SleepingList9peekFirstEv>
    8000232c:	00050793          	mv	a5,a0
    80002330:	0017b793          	seqz	a5,a5
    80002334:	0ff7f793          	andi	a5,a5,255
    80002338:	00078a63          	beqz	a5,8000234c <_ZN5RISCV20handleSupervisorTrapEv+0x520>
                semTimedWaitList.wakeThreads();
    8000233c:	00009517          	auipc	a0,0x9
    80002340:	72c50513          	addi	a0,a0,1836 # 8000ba68 <_ZN5RISCV16semTimedWaitListE>
    80002344:	fffff097          	auipc	ra,0xfffff
    80002348:	0a0080e7          	jalr	160(ra) # 800013e4 <_ZN12SleepingList11wakeThreadsEv>
            }
        }

        _thread::runningTimeSlice++;
    8000234c:	00009797          	auipc	a5,0x9
    80002350:	62c7b783          	ld	a5,1580(a5) # 8000b978 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002354:	0007b783          	ld	a5,0(a5)
    80002358:	00178713          	addi	a4,a5,1
    8000235c:	00009797          	auipc	a5,0x9
    80002360:	61c7b783          	ld	a5,1564(a5) # 8000b978 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002364:	00e7b023          	sd	a4,0(a5)
        RISCV::mc_sip(RISCV::SIP_SSIP);
    80002368:	00200513          	li	a0,2
    8000236c:	00000097          	auipc	ra,0x0
    80002370:	494080e7          	jalr	1172(ra) # 80002800 <_ZN5RISCV6mc_sipEm>
        if(_thread::runningTimeSlice >= _thread::running->timeSlice){
    80002374:	00009797          	auipc	a5,0x9
    80002378:	6147b783          	ld	a5,1556(a5) # 8000b988 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000237c:	0007b783          	ld	a5,0(a5)
    80002380:	0287b703          	ld	a4,40(a5)
    80002384:	00009797          	auipc	a5,0x9
    80002388:	5f47b783          	ld	a5,1524(a5) # 8000b978 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000238c:	0007b783          	ld	a5,0(a5)
    80002390:	04e7e863          	bltu	a5,a4,800023e0 <_ZN5RISCV20handleSupervisorTrapEv+0x5b4>
            _thread::dispatch();
    80002394:	fffff097          	auipc	ra,0xfffff
    80002398:	160080e7          	jalr	352(ra) # 800014f4 <_ZN7_thread8dispatchEv>
    8000239c:	0440006f          	j	800023e0 <_ZN5RISCV20handleSupervisorTrapEv+0x5b4>
        }
    } else {
        _thread::running->setFinished();
    800023a0:	00009797          	auipc	a5,0x9
    800023a4:	5e87b783          	ld	a5,1512(a5) # 8000b988 <_GLOBAL_OFFSET_TABLE_+0x28>
    800023a8:	0007b783          	ld	a5,0(a5)
    800023ac:	00078513          	mv	a0,a5
    800023b0:	00000097          	auipc	ra,0x0
    800023b4:	264080e7          	jalr	612(ra) # 80002614 <_ZN7_thread11setFinishedEv>
        if(!isMain) {
    800023b8:	00009797          	auipc	a5,0x9
    800023bc:	3f878793          	addi	a5,a5,1016 # 8000b7b0 <_ZN5RISCV6isMainE>
    800023c0:	0007c783          	lbu	a5,0(a5)
    800023c4:	0017c793          	xori	a5,a5,1
    800023c8:	0ff7f793          	andi	a5,a5,255
    800023cc:	00078a63          	beqz	a5,800023e0 <_ZN5RISCV20handleSupervisorTrapEv+0x5b4>
            _thread::dispatch();
    800023d0:	fffff097          	auipc	ra,0xfffff
    800023d4:	124080e7          	jalr	292(ra) # 800014f4 <_ZN7_thread8dispatchEv>
    800023d8:	0080006f          	j	800023e0 <_ZN5RISCV20handleSupervisorTrapEv+0x5b4>
        }
    800023dc:	00000013          	nop
        }
    }


    if ((*((char*)CONSOLE_STATUS)) & CONSOLE_RX_STATUS_BIT){
    800023e0:	00009797          	auipc	a5,0x9
    800023e4:	5907b783          	ld	a5,1424(a5) # 8000b970 <_GLOBAL_OFFSET_TABLE_+0x10>
    800023e8:	0007b783          	ld	a5,0(a5)
    800023ec:	0007c783          	lbu	a5,0(a5)
    800023f0:	0017f793          	andi	a5,a5,1
    800023f4:	04078663          	beqz	a5,80002440 <_ZN5RISCV20handleSupervisorTrapEv+0x614>
        volatile char ch = *(char*)CONSOLE_RX_DATA;
    800023f8:	00009797          	auipc	a5,0x9
    800023fc:	5707b783          	ld	a5,1392(a5) # 8000b968 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002400:	0007b783          	ld	a5,0(a5)
    80002404:	0007c783          	lbu	a5,0(a5)
    80002408:	f6f402a3          	sb	a5,-155(s0)
        if(ch != '\0'){
    8000240c:	f6544783          	lbu	a5,-155(s0)
    80002410:	0ff7f793          	andi	a5,a5,255
    80002414:	0007879b          	sext.w	a5,a5
    80002418:	00f037b3          	snez	a5,a5
    8000241c:	0ff7f793          	andi	a5,a5,255
    80002420:	02078063          	beqz	a5,80002440 <_ZN5RISCV20handleSupervisorTrapEv+0x614>
            IO::inputBuffer.putc(ch);
    80002424:	f6544783          	lbu	a5,-155(s0)
    80002428:	0ff7f793          	andi	a5,a5,255
    8000242c:	00078593          	mv	a1,a5
    80002430:	00009517          	auipc	a0,0x9
    80002434:	58053503          	ld	a0,1408(a0) # 8000b9b0 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002438:	00001097          	auipc	ra,0x1
    8000243c:	b08080e7          	jalr	-1272(ra) # 80002f40 <_ZN6Buffer4putcEc>
        }

    }

    if(IO::outputBuffer.getCount() > 0) {
    80002440:	00009517          	auipc	a0,0x9
    80002444:	5a853503          	ld	a0,1448(a0) # 8000b9e8 <_GLOBAL_OFFSET_TABLE_+0x88>
    80002448:	00000097          	auipc	ra,0x0
    8000244c:	39c080e7          	jalr	924(ra) # 800027e4 <_ZN6Buffer8getCountEv>
    80002450:	00050793          	mv	a5,a0
    80002454:	00f037b3          	snez	a5,a5
    80002458:	0ff7f793          	andi	a5,a5,255
    8000245c:	06078c63          	beqz	a5,800024d4 <_ZN5RISCV20handleSupervisorTrapEv+0x6a8>
        while ((*((char *) CONSOLE_STATUS)) & CONSOLE_TX_STATUS_BIT && IO::outputBuffer.getCount() > 0) {
    80002460:	00009797          	auipc	a5,0x9
    80002464:	5107b783          	ld	a5,1296(a5) # 8000b970 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002468:	0007b783          	ld	a5,0(a5)
    8000246c:	0007c783          	lbu	a5,0(a5)
    80002470:	0207f793          	andi	a5,a5,32
    80002474:	02078263          	beqz	a5,80002498 <_ZN5RISCV20handleSupervisorTrapEv+0x66c>
    80002478:	00009517          	auipc	a0,0x9
    8000247c:	57053503          	ld	a0,1392(a0) # 8000b9e8 <_GLOBAL_OFFSET_TABLE_+0x88>
    80002480:	00000097          	auipc	ra,0x0
    80002484:	364080e7          	jalr	868(ra) # 800027e4 <_ZN6Buffer8getCountEv>
    80002488:	00050793          	mv	a5,a0
    8000248c:	00078663          	beqz	a5,80002498 <_ZN5RISCV20handleSupervisorTrapEv+0x66c>
    80002490:	00100793          	li	a5,1
    80002494:	0080006f          	j	8000249c <_ZN5RISCV20handleSupervisorTrapEv+0x670>
    80002498:	00000793          	li	a5,0
    8000249c:	02078c63          	beqz	a5,800024d4 <_ZN5RISCV20handleSupervisorTrapEv+0x6a8>
            char c = IO::outputBuffer.getc();
    800024a0:	00009517          	auipc	a0,0x9
    800024a4:	54853503          	ld	a0,1352(a0) # 8000b9e8 <_GLOBAL_OFFSET_TABLE_+0x88>
    800024a8:	00001097          	auipc	ra,0x1
    800024ac:	af4080e7          	jalr	-1292(ra) # 80002f9c <_ZN6Buffer4getcEv>
    800024b0:	00050793          	mv	a5,a0
    800024b4:	f6f403a3          	sb	a5,-153(s0)
            *((char *) CONSOLE_TX_DATA) = c;
    800024b8:	00009797          	auipc	a5,0x9
    800024bc:	4d87b783          	ld	a5,1240(a5) # 8000b990 <_GLOBAL_OFFSET_TABLE_+0x30>
    800024c0:	0007b783          	ld	a5,0(a5)
    800024c4:	00078713          	mv	a4,a5
    800024c8:	f6744783          	lbu	a5,-153(s0)
    800024cc:	00f70023          	sb	a5,0(a4)
        while ((*((char *) CONSOLE_STATUS)) & CONSOLE_TX_STATUS_BIT && IO::outputBuffer.getCount() > 0) {
    800024d0:	f91ff06f          	j	80002460 <_ZN5RISCV20handleSupervisorTrapEv+0x634>
        }
    }

    if(_thread::running && _thread::running->isAdmin){
    800024d4:	00009797          	auipc	a5,0x9
    800024d8:	4b47b783          	ld	a5,1204(a5) # 8000b988 <_GLOBAL_OFFSET_TABLE_+0x28>
    800024dc:	0007b783          	ld	a5,0(a5)
    800024e0:	02078463          	beqz	a5,80002508 <_ZN5RISCV20handleSupervisorTrapEv+0x6dc>
    800024e4:	00009797          	auipc	a5,0x9
    800024e8:	4a47b783          	ld	a5,1188(a5) # 8000b988 <_GLOBAL_OFFSET_TABLE_+0x28>
    800024ec:	0007b783          	ld	a5,0(a5)
    800024f0:	0237c783          	lbu	a5,35(a5)
    800024f4:	00078a63          	beqz	a5,80002508 <_ZN5RISCV20handleSupervisorTrapEv+0x6dc>
        sstatus |= SSTATUS_SPP;
    800024f8:	fd843783          	ld	a5,-40(s0)
    800024fc:	1007e793          	ori	a5,a5,256
    80002500:	fcf43c23          	sd	a5,-40(s0)
    80002504:	0200006f          	j	80002524 <_ZN5RISCV20handleSupervisorTrapEv+0x6f8>
    } else if (_thread::running){
    80002508:	00009797          	auipc	a5,0x9
    8000250c:	4807b783          	ld	a5,1152(a5) # 8000b988 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002510:	0007b783          	ld	a5,0(a5)
    80002514:	00078863          	beqz	a5,80002524 <_ZN5RISCV20handleSupervisorTrapEv+0x6f8>
        sstatus &= ~SSTATUS_SPP;
    80002518:	fd843783          	ld	a5,-40(s0)
    8000251c:	eff7f793          	andi	a5,a5,-257
    80002520:	fcf43c23          	sd	a5,-40(s0)
    }
    write_sstatus(sstatus);
    80002524:	fd843503          	ld	a0,-40(s0)
    80002528:	00000097          	auipc	ra,0x0
    8000252c:	310080e7          	jalr	784(ra) # 80002838 <_ZN5RISCV13write_sstatusEm>
    write_sepc(sepc);
    80002530:	fc043503          	ld	a0,-64(s0)
    80002534:	00000097          	auipc	ra,0x0
    80002538:	2e8080e7          	jalr	744(ra) # 8000281c <_ZN5RISCV10write_sepcEm>
}
    8000253c:	00000013          	nop
    80002540:	09813083          	ld	ra,152(sp)
    80002544:	09013403          	ld	s0,144(sp)
    80002548:	08813483          	ld	s1,136(sp)
    8000254c:	0a010113          	addi	sp,sp,160
    80002550:	00008067          	ret

0000000080002554 <_Z41__static_initialization_and_destruction_0ii>:
    80002554:	ff010113          	addi	sp,sp,-16
    80002558:	00813423          	sd	s0,8(sp)
    8000255c:	01010413          	addi	s0,sp,16
    80002560:	00100793          	li	a5,1
    80002564:	00f50863          	beq	a0,a5,80002574 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002568:	00813403          	ld	s0,8(sp)
    8000256c:	01010113          	addi	sp,sp,16
    80002570:	00008067          	ret
    80002574:	000107b7          	lui	a5,0x10
    80002578:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000257c:	fef596e3          	bne	a1,a5,80002568 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    SleepingList() : head(nullptr), tail(nullptr){   }
    80002580:	00009797          	auipc	a5,0x9
    80002584:	4f878793          	addi	a5,a5,1272 # 8000ba78 <_ZN5RISCV15sleepingThreadsE>
    80002588:	0007b023          	sd	zero,0(a5)
    8000258c:	0007b423          	sd	zero,8(a5)
    80002590:	00009797          	auipc	a5,0x9
    80002594:	4d878793          	addi	a5,a5,1240 # 8000ba68 <_ZN5RISCV16semTimedWaitListE>
    80002598:	0007b023          	sd	zero,0(a5)
    8000259c:	0007b423          	sd	zero,8(a5)
    800025a0:	fc9ff06f          	j	80002568 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800025a4 <_GLOBAL__sub_I__ZN5RISCV15sleepingThreadsE>:
    800025a4:	ff010113          	addi	sp,sp,-16
    800025a8:	00113423          	sd	ra,8(sp)
    800025ac:	00813023          	sd	s0,0(sp)
    800025b0:	01010413          	addi	s0,sp,16
    800025b4:	000105b7          	lui	a1,0x10
    800025b8:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800025bc:	00100513          	li	a0,1
    800025c0:	00000097          	auipc	ra,0x0
    800025c4:	f94080e7          	jalr	-108(ra) # 80002554 <_Z41__static_initialization_and_destruction_0ii>
    800025c8:	00813083          	ld	ra,8(sp)
    800025cc:	00013403          	ld	s0,0(sp)
    800025d0:	01010113          	addi	sp,sp,16
    800025d4:	00008067          	ret

00000000800025d8 <_ZN5RISCV15returnFromInterEv>:
void RISCV::returnFromInter() {
    800025d8:	ff010113          	addi	sp,sp,-16
    800025dc:	00813423          	sd	s0,8(sp)
    800025e0:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    800025e4:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    800025e8:	10200073          	sret
}
    800025ec:	00813403          	ld	s0,8(sp)
    800025f0:	01010113          	addi	sp,sp,16
    800025f4:	00008067          	ret

00000000800025f8 <_ZN7_thread12setSleepWaitEb>:
    void setSleepWait(bool sleep){sleepWait = sleep;}
    800025f8:	ff010113          	addi	sp,sp,-16
    800025fc:	00813423          	sd	s0,8(sp)
    80002600:	01010413          	addi	s0,sp,16
    80002604:	02b50223          	sb	a1,36(a0)
    80002608:	00813403          	ld	s0,8(sp)
    8000260c:	01010113          	addi	sp,sp,16
    80002610:	00008067          	ret

0000000080002614 <_ZN7_thread11setFinishedEv>:
    void setFinished(){finished = true;}
    80002614:	ff010113          	addi	sp,sp,-16
    80002618:	00813423          	sd	s0,8(sp)
    8000261c:	01010413          	addi	s0,sp,16
    80002620:	00100793          	li	a5,1
    80002624:	02f500a3          	sb	a5,33(a0)
    80002628:	00813403          	ld	s0,8(sp)
    8000262c:	01010113          	addi	sp,sp,16
    80002630:	00008067          	ret

0000000080002634 <_ZN12SleepingList8tickTimeEv>:

    SleepingList(const SleepingList&) = delete;

    SleepingList& operator=(const SleepingList&) = delete;

    void tickTime(){
    80002634:	ff010113          	addi	sp,sp,-16
    80002638:	00813423          	sd	s0,8(sp)
    8000263c:	01010413          	addi	s0,sp,16
        if(head != nullptr){
    80002640:	00053783          	ld	a5,0(a0)
    80002644:	00078863          	beqz	a5,80002654 <_ZN12SleepingList8tickTimeEv+0x20>
            head->relativeTime -= 1;
    80002648:	0087b703          	ld	a4,8(a5)
    8000264c:	fff70713          	addi	a4,a4,-1
    80002650:	00e7b423          	sd	a4,8(a5)
        }
    }
    80002654:	00813403          	ld	s0,8(sp)
    80002658:	01010113          	addi	sp,sp,16
    8000265c:	00008067          	ret

0000000080002660 <_ZN12SleepingList9peekFirstEv>:

    time_t peekFirst(){
    80002660:	ff010113          	addi	sp,sp,-16
    80002664:	00813423          	sd	s0,8(sp)
    80002668:	01010413          	addi	s0,sp,16
        if(head != nullptr){
    8000266c:	00053783          	ld	a5,0(a0)
    80002670:	00078a63          	beqz	a5,80002684 <_ZN12SleepingList9peekFirstEv+0x24>
            return head->relativeTime;
    80002674:	0087b503          	ld	a0,8(a5)
        }
        return -1;
    }
    80002678:	00813403          	ld	s0,8(sp)
    8000267c:	01010113          	addi	sp,sp,16
    80002680:	00008067          	ret
        return -1;
    80002684:	fff00513          	li	a0,-1
    80002688:	ff1ff06f          	j	80002678 <_ZN12SleepingList9peekFirstEv+0x18>

000000008000268c <_ZN12SleepingList3putEP7_threadm>:

    void wakeThreads();

    void put(_thread* newSleep, time_t slice){
    8000268c:	fc010113          	addi	sp,sp,-64
    80002690:	02113c23          	sd	ra,56(sp)
    80002694:	02813823          	sd	s0,48(sp)
    80002698:	02913423          	sd	s1,40(sp)
    8000269c:	03213023          	sd	s2,32(sp)
    800026a0:	01313c23          	sd	s3,24(sp)
    800026a4:	01413823          	sd	s4,16(sp)
    800026a8:	01513423          	sd	s5,8(sp)
    800026ac:	04010413          	addi	s0,sp,64
    800026b0:	00050a13          	mv	s4,a0
    800026b4:	00058a93          	mv	s5,a1
    800026b8:	00060913          	mv	s2,a2
        if(!head){
    800026bc:	00053483          	ld	s1,0(a0)
    800026c0:	02048463          	beqz	s1,800026e8 <_ZN12SleepingList3putEP7_threadm+0x5c>
            head = new Elem(newSleep, slice, nullptr);
            tail = head;
        } else {
            Elem* temp = head;
            Elem* prev = nullptr;
    800026c4:	00000993          	li	s3,0
            while (temp != tail && slice >= temp->relativeTime){
    800026c8:	008a3703          	ld	a4,8(s4)
    800026cc:	04970063          	beq	a4,s1,8000270c <_ZN12SleepingList3putEP7_threadm+0x80>
    800026d0:	0084b783          	ld	a5,8(s1)
    800026d4:	02f96c63          	bltu	s2,a5,8000270c <_ZN12SleepingList3putEP7_threadm+0x80>
                slice -= temp->relativeTime;
    800026d8:	40f90933          	sub	s2,s2,a5
                prev = temp;
    800026dc:	00048993          	mv	s3,s1
                temp = temp->next;
    800026e0:	0104b483          	ld	s1,16(s1)
            while (temp != tail && slice >= temp->relativeTime){
    800026e4:	fe5ff06f          	j	800026c8 <_ZN12SleepingList3putEP7_threadm+0x3c>
            return MemoryAllocator::mem_alloc(size);
    800026e8:	01800513          	li	a0,24
    800026ec:	00001097          	auipc	ra,0x1
    800026f0:	990080e7          	jalr	-1648(ra) # 8000307c <_ZN15MemoryAllocator9mem_allocEm>
        Elem(_thread* thread, time_t relativeTime, Elem* next) : thread(thread), relativeTime(relativeTime), next(next){}
    800026f4:	01553023          	sd	s5,0(a0)
    800026f8:	01253423          	sd	s2,8(a0)
    800026fc:	00053823          	sd	zero,16(a0)
            head = new Elem(newSleep, slice, nullptr);
    80002700:	00aa3023          	sd	a0,0(s4)
            tail = head;
    80002704:	00aa3423          	sd	a0,8(s4)
    80002708:	0340006f          	j	8000273c <_ZN12SleepingList3putEP7_threadm+0xb0>
            }
            if(temp == tail){
    8000270c:	04970a63          	beq	a4,s1,80002760 <_ZN12SleepingList3putEP7_threadm+0xd4>
            return MemoryAllocator::mem_alloc(size);
    80002710:	01800513          	li	a0,24
    80002714:	00001097          	auipc	ra,0x1
    80002718:	968080e7          	jalr	-1688(ra) # 8000307c <_ZN15MemoryAllocator9mem_allocEm>
        Elem(_thread* thread, time_t relativeTime, Elem* next) : thread(thread), relativeTime(relativeTime), next(next){}
    8000271c:	01553023          	sd	s5,0(a0)
    80002720:	01253423          	sd	s2,8(a0)
    80002724:	00953823          	sd	s1,16(a0)
                    }
                    tail->relativeTime -= slice;
                }
            } else {
                Elem* newElem = new Elem(newSleep, slice, temp);
                if(prev){
    80002728:	0a098a63          	beqz	s3,800027dc <_ZN12SleepingList3putEP7_threadm+0x150>
                    prev->next = newElem;
    8000272c:	00a9b823          	sd	a0,16(s3)
                } else {
                    head = newElem;
                }
                temp->relativeTime -= slice;
    80002730:	0084b783          	ld	a5,8(s1)
    80002734:	41278933          	sub	s2,a5,s2
    80002738:	0124b423          	sd	s2,8(s1)
            }
        }
    }
    8000273c:	03813083          	ld	ra,56(sp)
    80002740:	03013403          	ld	s0,48(sp)
    80002744:	02813483          	ld	s1,40(sp)
    80002748:	02013903          	ld	s2,32(sp)
    8000274c:	01813983          	ld	s3,24(sp)
    80002750:	01013a03          	ld	s4,16(sp)
    80002754:	00813a83          	ld	s5,8(sp)
    80002758:	04010113          	addi	sp,sp,64
    8000275c:	00008067          	ret
                if(slice >= tail->relativeTime){
    80002760:	00873783          	ld	a5,8(a4)
    80002764:	02f96c63          	bltu	s2,a5,8000279c <_ZN12SleepingList3putEP7_threadm+0x110>
            return MemoryAllocator::mem_alloc(size);
    80002768:	01800513          	li	a0,24
    8000276c:	00001097          	auipc	ra,0x1
    80002770:	910080e7          	jalr	-1776(ra) # 8000307c <_ZN15MemoryAllocator9mem_allocEm>
                    Elem* newElem = new Elem(newSleep, slice - tail->relativeTime, nullptr);
    80002774:	008a3783          	ld	a5,8(s4)
    80002778:	0087b783          	ld	a5,8(a5)
    8000277c:	40f90933          	sub	s2,s2,a5
        Elem(_thread* thread, time_t relativeTime, Elem* next) : thread(thread), relativeTime(relativeTime), next(next){}
    80002780:	01553023          	sd	s5,0(a0)
    80002784:	01253423          	sd	s2,8(a0)
    80002788:	00053823          	sd	zero,16(a0)
                    tail->next = newElem;
    8000278c:	008a3783          	ld	a5,8(s4)
    80002790:	00a7b823          	sd	a0,16(a5)
                    tail = newElem;
    80002794:	00aa3423          	sd	a0,8(s4)
    80002798:	fa5ff06f          	j	8000273c <_ZN12SleepingList3putEP7_threadm+0xb0>
            return MemoryAllocator::mem_alloc(size);
    8000279c:	01800513          	li	a0,24
    800027a0:	00001097          	auipc	ra,0x1
    800027a4:	8dc080e7          	jalr	-1828(ra) # 8000307c <_ZN15MemoryAllocator9mem_allocEm>
                    Elem* newElem = new Elem(newSleep, slice, tail);
    800027a8:	008a3783          	ld	a5,8(s4)
        Elem(_thread* thread, time_t relativeTime, Elem* next) : thread(thread), relativeTime(relativeTime), next(next){}
    800027ac:	01553023          	sd	s5,0(a0)
    800027b0:	01253423          	sd	s2,8(a0)
    800027b4:	00f53823          	sd	a5,16(a0)
                    if(prev){
    800027b8:	00098e63          	beqz	s3,800027d4 <_ZN12SleepingList3putEP7_threadm+0x148>
                        prev->next = newElem;
    800027bc:	00a9b823          	sd	a0,16(s3)
                    tail->relativeTime -= slice;
    800027c0:	008a3703          	ld	a4,8(s4)
    800027c4:	00873783          	ld	a5,8(a4)
    800027c8:	41278933          	sub	s2,a5,s2
    800027cc:	01273423          	sd	s2,8(a4)
    800027d0:	f6dff06f          	j	8000273c <_ZN12SleepingList3putEP7_threadm+0xb0>
                        head = newElem;
    800027d4:	00aa3023          	sd	a0,0(s4)
    800027d8:	fe9ff06f          	j	800027c0 <_ZN12SleepingList3putEP7_threadm+0x134>
                    head = newElem;
    800027dc:	00aa3023          	sd	a0,0(s4)
    800027e0:	f51ff06f          	j	80002730 <_ZN12SleepingList3putEP7_threadm+0xa4>

00000000800027e4 <_ZN6Buffer8getCountEv>:
    800027e4:	ff010113          	addi	sp,sp,-16
    800027e8:	00813423          	sd	s0,8(sp)
    800027ec:	01010413          	addi	s0,sp,16
    800027f0:	11853503          	ld	a0,280(a0)
    800027f4:	00813403          	ld	s0,8(sp)
    800027f8:	01010113          	addi	sp,sp,16
    800027fc:	00008067          	ret

0000000080002800 <_ZN5RISCV6mc_sipEm>:
    inline static void mc_sip(uint64 mask){
    80002800:	ff010113          	addi	sp,sp,-16
    80002804:	00813423          	sd	s0,8(sp)
    80002808:	01010413          	addi	s0,sp,16
        asm volatile("csrc sip, %0"::"r"(mask));
    8000280c:	14453073          	csrc	sip,a0
    }
    80002810:	00813403          	ld	s0,8(sp)
    80002814:	01010113          	addi	sp,sp,16
    80002818:	00008067          	ret

000000008000281c <_ZN5RISCV10write_sepcEm>:
    inline static void write_sepc(uint64 sepc){
    8000281c:	ff010113          	addi	sp,sp,-16
    80002820:	00813423          	sd	s0,8(sp)
    80002824:	01010413          	addi	s0,sp,16
        asm volatile ("csrw sepc, %0" : : "r"(sepc));
    80002828:	14151073          	csrw	sepc,a0
    }
    8000282c:	00813403          	ld	s0,8(sp)
    80002830:	01010113          	addi	sp,sp,16
    80002834:	00008067          	ret

0000000080002838 <_ZN5RISCV13write_sstatusEm>:
    inline static void write_sstatus(uint64 sstatus){
    80002838:	ff010113          	addi	sp,sp,-16
    8000283c:	00813423          	sd	s0,8(sp)
    80002840:	01010413          	addi	s0,sp,16
        asm volatile("csrw sstatus, %0"::"r"(sstatus));
    80002844:	10051073          	csrw	sstatus,a0
    }
    80002848:	00813403          	ld	s0,8(sp)
    8000284c:	01010113          	addi	sp,sp,16
    80002850:	00008067          	ret

0000000080002854 <_ZN4_sem7deblockEv>:
    if(--value < 0){
        block();
    }
}

void _sem::deblock() {
    80002854:	fe010113          	addi	sp,sp,-32
    80002858:	00113c23          	sd	ra,24(sp)
    8000285c:	00813823          	sd	s0,16(sp)
    80002860:	00913423          	sd	s1,8(sp)
    80002864:	02010413          	addi	s0,sp,32
    80002868:	00050793          	mv	a5,a0
    8000286c:	00853503          	ld	a0,8(a0)
    80002870:	04050663          	beqz	a0,800028bc <_ZN4_sem7deblockEv+0x68>
        head = head->next;
    80002874:	00853703          	ld	a4,8(a0)
    80002878:	00e7b423          	sd	a4,8(a5)
        if(head == nullptr){tail = nullptr;}
    8000287c:	02070c63          	beqz	a4,800028b4 <_ZN4_sem7deblockEv+0x60>
        _thread* ret = curr->elem;
    80002880:	00053483          	ld	s1,0(a0)
            MemoryAllocator::mem_free(prt);
    80002884:	00001097          	auipc	ra,0x1
    80002888:	978080e7          	jalr	-1672(ra) # 800031fc <_ZN15MemoryAllocator8mem_freeEPv>
    void setBlocked(bool blck){blocked = blck;}
    8000288c:	02048023          	sb	zero,32(s1)
    _thread* unblocked = blocked.popHead();
    unblocked->setBlocked(false);
    unblocked->mySem = nullptr;
    80002890:	0204bc23          	sd	zero,56(s1)
    Scheduler::put(unblocked);
    80002894:	00048513          	mv	a0,s1
    80002898:	fffff097          	auipc	ra,0xfffff
    8000289c:	ec8080e7          	jalr	-312(ra) # 80001760 <_ZN9Scheduler3putEP7_thread>
}
    800028a0:	01813083          	ld	ra,24(sp)
    800028a4:	01013403          	ld	s0,16(sp)
    800028a8:	00813483          	ld	s1,8(sp)
    800028ac:	02010113          	addi	sp,sp,32
    800028b0:	00008067          	ret
        if(head == nullptr){tail = nullptr;}
    800028b4:	0007b823          	sd	zero,16(a5)
    800028b8:	fc9ff06f          	j	80002880 <_ZN4_sem7deblockEv+0x2c>
        if(!head) return 0;
    800028bc:	00050493          	mv	s1,a0
    800028c0:	fcdff06f          	j	8000288c <_ZN4_sem7deblockEv+0x38>

00000000800028c4 <_ZN4_sem6signalEv>:
    if(value++ < 0){
    800028c4:	00052783          	lw	a5,0(a0)
    800028c8:	0017871b          	addiw	a4,a5,1
    800028cc:	00e52023          	sw	a4,0(a0)
    800028d0:	0007c463          	bltz	a5,800028d8 <_ZN4_sem6signalEv+0x14>
    800028d4:	00008067          	ret
void _sem::signal() {
    800028d8:	ff010113          	addi	sp,sp,-16
    800028dc:	00113423          	sd	ra,8(sp)
    800028e0:	00813023          	sd	s0,0(sp)
    800028e4:	01010413          	addi	s0,sp,16
        deblock();
    800028e8:	00000097          	auipc	ra,0x0
    800028ec:	f6c080e7          	jalr	-148(ra) # 80002854 <_ZN4_sem7deblockEv>
}
    800028f0:	00813083          	ld	ra,8(sp)
    800028f4:	00013403          	ld	s0,0(sp)
    800028f8:	01010113          	addi	sp,sp,16
    800028fc:	00008067          	ret

0000000080002900 <_ZN4_sem5blockEv>:

void _sem::block() {
    80002900:	fe010113          	addi	sp,sp,-32
    80002904:	00113c23          	sd	ra,24(sp)
    80002908:	00813823          	sd	s0,16(sp)
    8000290c:	00913423          	sd	s1,8(sp)
    80002910:	01213023          	sd	s2,0(sp)
    80002914:	02010413          	addi	s0,sp,32
    80002918:	00050493          	mv	s1,a0
    blocked.addTail(_thread::running);
    8000291c:	00009797          	auipc	a5,0x9
    80002920:	06c7b783          	ld	a5,108(a5) # 8000b988 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002924:	0007b903          	ld	s2,0(a5)
            return MemoryAllocator::mem_alloc(size);
    80002928:	01000513          	li	a0,16
    8000292c:	00000097          	auipc	ra,0x0
    80002930:	750080e7          	jalr	1872(ra) # 8000307c <_ZN15MemoryAllocator9mem_allocEm>
        Elem(_thread* elem) : elem(elem), next(nullptr){}
    80002934:	01253023          	sd	s2,0(a0)
    80002938:	00053423          	sd	zero,8(a0)
        if(tail != nullptr){
    8000293c:	0104b783          	ld	a5,16(s1)
    80002940:	04078263          	beqz	a5,80002984 <_ZN4_sem5blockEv+0x84>
            tail->next = elem;
    80002944:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002948:	00a4b823          	sd	a0,16(s1)
    _thread::running->setBlocked(true);
    8000294c:	00009797          	auipc	a5,0x9
    80002950:	03c7b783          	ld	a5,60(a5) # 8000b988 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002954:	0007b783          	ld	a5,0(a5)
    80002958:	00100713          	li	a4,1
    8000295c:	02e78023          	sb	a4,32(a5)
    _thread::running->mySem = this;
    80002960:	0297bc23          	sd	s1,56(a5)
    _thread::dispatch();
    80002964:	fffff097          	auipc	ra,0xfffff
    80002968:	b90080e7          	jalr	-1136(ra) # 800014f4 <_ZN7_thread8dispatchEv>
}
    8000296c:	01813083          	ld	ra,24(sp)
    80002970:	01013403          	ld	s0,16(sp)
    80002974:	00813483          	ld	s1,8(sp)
    80002978:	00013903          	ld	s2,0(sp)
    8000297c:	02010113          	addi	sp,sp,32
    80002980:	00008067          	ret
            head = elem;
    80002984:	00a4b423          	sd	a0,8(s1)
            tail = elem;
    80002988:	00a4b823          	sd	a0,16(s1)
    8000298c:	fc1ff06f          	j	8000294c <_ZN4_sem5blockEv+0x4c>

0000000080002990 <_ZN4_sem4waitEv>:
    if(--value < 0){
    80002990:	00052783          	lw	a5,0(a0)
    80002994:	fff7879b          	addiw	a5,a5,-1
    80002998:	00f52023          	sw	a5,0(a0)
    8000299c:	02079713          	slli	a4,a5,0x20
    800029a0:	00074463          	bltz	a4,800029a8 <_ZN4_sem4waitEv+0x18>
    800029a4:	00008067          	ret
void _sem::wait() {
    800029a8:	ff010113          	addi	sp,sp,-16
    800029ac:	00113423          	sd	ra,8(sp)
    800029b0:	00813023          	sd	s0,0(sp)
    800029b4:	01010413          	addi	s0,sp,16
        block();
    800029b8:	00000097          	auipc	ra,0x0
    800029bc:	f48080e7          	jalr	-184(ra) # 80002900 <_ZN4_sem5blockEv>
}
    800029c0:	00813083          	ld	ra,8(sp)
    800029c4:	00013403          	ld	s0,0(sp)
    800029c8:	01010113          	addi	sp,sp,16
    800029cc:	00008067          	ret

00000000800029d0 <_ZN4_semnwEm>:

void *_sem::operator new(size_t size) {
    800029d0:	ff010113          	addi	sp,sp,-16
    800029d4:	00113423          	sd	ra,8(sp)
    800029d8:	00813023          	sd	s0,0(sp)
    800029dc:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    800029e0:	00000097          	auipc	ra,0x0
    800029e4:	69c080e7          	jalr	1692(ra) # 8000307c <_ZN15MemoryAllocator9mem_allocEm>
}
    800029e8:	00813083          	ld	ra,8(sp)
    800029ec:	00013403          	ld	s0,0(sp)
    800029f0:	01010113          	addi	sp,sp,16
    800029f4:	00008067          	ret

00000000800029f8 <_ZN4_semdlEPv>:

void _sem::operator delete(void *ptr) {
    800029f8:	ff010113          	addi	sp,sp,-16
    800029fc:	00113423          	sd	ra,8(sp)
    80002a00:	00813023          	sd	s0,0(sp)
    80002a04:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    80002a08:	00000097          	auipc	ra,0x0
    80002a0c:	7f4080e7          	jalr	2036(ra) # 800031fc <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002a10:	00813083          	ld	ra,8(sp)
    80002a14:	00013403          	ld	s0,0(sp)
    80002a18:	01010113          	addi	sp,sp,16
    80002a1c:	00008067          	ret

0000000080002a20 <_ZN4_sem9close_semEPS_>:

void _sem::close_sem(sem_t handle) {
    80002a20:	fe010113          	addi	sp,sp,-32
    80002a24:	00113c23          	sd	ra,24(sp)
    80002a28:	00813823          	sd	s0,16(sp)
    80002a2c:	00913423          	sd	s1,8(sp)
    80002a30:	02010413          	addi	s0,sp,32
    80002a34:	00050493          	mv	s1,a0
        delete curr;
        return ret;
    }

    _thread* peekHead(){
        if(head != nullptr){ return head->elem;}
    80002a38:	0084b783          	ld	a5,8(s1)
    80002a3c:	00078e63          	beqz	a5,80002a58 <_ZN4_sem9close_semEPS_+0x38>
    80002a40:	0007b783          	ld	a5,0(a5)
    while (handle->blocked.peekHead() != nullptr){
    80002a44:	00078a63          	beqz	a5,80002a58 <_ZN4_sem9close_semEPS_+0x38>
        handle->deblock();
    80002a48:	00048513          	mv	a0,s1
    80002a4c:	00000097          	auipc	ra,0x0
    80002a50:	e08080e7          	jalr	-504(ra) # 80002854 <_ZN4_sem7deblockEv>
    while (handle->blocked.peekHead() != nullptr){
    80002a54:	fe5ff06f          	j	80002a38 <_ZN4_sem9close_semEPS_+0x18>
    }
}
    80002a58:	01813083          	ld	ra,24(sp)
    80002a5c:	01013403          	ld	s0,16(sp)
    80002a60:	00813483          	ld	s1,8(sp)
    80002a64:	02010113          	addi	sp,sp,32
    80002a68:	00008067          	ret

0000000080002a6c <_ZN4_sem8try_waitEv>:

int _sem::try_wait() {
    80002a6c:	ff010113          	addi	sp,sp,-16
    80002a70:	00813423          	sd	s0,8(sp)
    80002a74:	01010413          	addi	s0,sp,16
    if(value - 1 < 0){
    80002a78:	00052783          	lw	a5,0(a0)
    80002a7c:	00f05e63          	blez	a5,80002a98 <_ZN4_sem8try_waitEv+0x2c>
        return -1;
    } else {
        value--;
    80002a80:	fff7879b          	addiw	a5,a5,-1
    80002a84:	00f52023          	sw	a5,0(a0)
        return 0;
    80002a88:	00000513          	li	a0,0
    }
}
    80002a8c:	00813403          	ld	s0,8(sp)
    80002a90:	01010113          	addi	sp,sp,16
    80002a94:	00008067          	ret
        return -1;
    80002a98:	fff00513          	li	a0,-1
    80002a9c:	ff1ff06f          	j	80002a8c <_ZN4_sem8try_waitEv+0x20>

0000000080002aa0 <_ZN4_sem4initEi>:

_sem *_sem::init(int val) {
    80002aa0:	fe010113          	addi	sp,sp,-32
    80002aa4:	00113c23          	sd	ra,24(sp)
    80002aa8:	00813823          	sd	s0,16(sp)
    80002aac:	00913423          	sd	s1,8(sp)
    80002ab0:	02010413          	addi	s0,sp,32
    80002ab4:	00050493          	mv	s1,a0
    _sem* ret = new _sem(val);
    80002ab8:	01800513          	li	a0,24
    80002abc:	00000097          	auipc	ra,0x0
    80002ac0:	f14080e7          	jalr	-236(ra) # 800029d0 <_ZN4_semnwEm>
private:
    int value;
    ThreadList blocked;
    friend class RISCV;

    explicit _sem(int value) : value(value){}
    80002ac4:	00952023          	sw	s1,0(a0)
class ThreadList{
    80002ac8:	00053423          	sd	zero,8(a0)
    80002acc:	00053823          	sd	zero,16(a0)
    return ret;
}
    80002ad0:	01813083          	ld	ra,24(sp)
    80002ad4:	01013403          	ld	s0,16(sp)
    80002ad8:	00813483          	ld	s1,8(sp)
    80002adc:	02010113          	addi	sp,sp,32
    80002ae0:	00008067          	ret

0000000080002ae4 <_ZN4_sem9timedWaitEm>:

void _sem::timedWait(time_t slice) {
    if(--value < 0){
    80002ae4:	00052783          	lw	a5,0(a0)
    80002ae8:	fff7879b          	addiw	a5,a5,-1
    80002aec:	00f52023          	sw	a5,0(a0)
    80002af0:	02079713          	slli	a4,a5,0x20
    80002af4:	00074463          	bltz	a4,80002afc <_ZN4_sem9timedWaitEm+0x18>
    80002af8:	00008067          	ret
void _sem::timedWait(time_t slice) {
    80002afc:	fc010113          	addi	sp,sp,-64
    80002b00:	02113c23          	sd	ra,56(sp)
    80002b04:	02813823          	sd	s0,48(sp)
    80002b08:	02913423          	sd	s1,40(sp)
    80002b0c:	03213023          	sd	s2,32(sp)
    80002b10:	01313c23          	sd	s3,24(sp)
    80002b14:	01413823          	sd	s4,16(sp)
    80002b18:	01513423          	sd	s5,8(sp)
    80002b1c:	04010413          	addi	s0,sp,64
    80002b20:	00050993          	mv	s3,a0
    80002b24:	00058493          	mv	s1,a1
        RISCV::semTimedWaitList.put(_thread::running, slice);
    80002b28:	00009797          	auipc	a5,0x9
    80002b2c:	e607b783          	ld	a5,-416(a5) # 8000b988 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002b30:	0007ba83          	ld	s5,0(a5)
        if(!head){
    80002b34:	00009797          	auipc	a5,0x9
    80002b38:	e9c7b783          	ld	a5,-356(a5) # 8000b9d0 <_GLOBAL_OFFSET_TABLE_+0x70>
    80002b3c:	0007b903          	ld	s2,0(a5)
    80002b40:	02090863          	beqz	s2,80002b70 <_ZN4_sem9timedWaitEm+0x8c>
            Elem* prev = nullptr;
    80002b44:	00000a13          	li	s4,0
            while (temp != tail && slice >= temp->relativeTime){
    80002b48:	00009797          	auipc	a5,0x9
    80002b4c:	e887b783          	ld	a5,-376(a5) # 8000b9d0 <_GLOBAL_OFFSET_TABLE_+0x70>
    80002b50:	0087b703          	ld	a4,8(a5)
    80002b54:	05270463          	beq	a4,s2,80002b9c <_ZN4_sem9timedWaitEm+0xb8>
    80002b58:	00893783          	ld	a5,8(s2)
    80002b5c:	04f4e063          	bltu	s1,a5,80002b9c <_ZN4_sem9timedWaitEm+0xb8>
                slice -= temp->relativeTime;
    80002b60:	40f484b3          	sub	s1,s1,a5
                prev = temp;
    80002b64:	00090a13          	mv	s4,s2
                temp = temp->next;
    80002b68:	01093903          	ld	s2,16(s2)
            while (temp != tail && slice >= temp->relativeTime){
    80002b6c:	fddff06f          	j	80002b48 <_ZN4_sem9timedWaitEm+0x64>
            return MemoryAllocator::mem_alloc(size);
    80002b70:	01800513          	li	a0,24
    80002b74:	00000097          	auipc	ra,0x0
    80002b78:	508080e7          	jalr	1288(ra) # 8000307c <_ZN15MemoryAllocator9mem_allocEm>
        Elem(_thread* thread, time_t relativeTime, Elem* next) : thread(thread), relativeTime(relativeTime), next(next){}
    80002b7c:	01553023          	sd	s5,0(a0)
    80002b80:	00953423          	sd	s1,8(a0)
    80002b84:	00053823          	sd	zero,16(a0)
            head = new Elem(newSleep, slice, nullptr);
    80002b88:	00009797          	auipc	a5,0x9
    80002b8c:	e487b783          	ld	a5,-440(a5) # 8000b9d0 <_GLOBAL_OFFSET_TABLE_+0x70>
    80002b90:	00a7b023          	sd	a0,0(a5)
            tail = head;
    80002b94:	00a7b423          	sd	a0,8(a5)
    80002b98:	0340006f          	j	80002bcc <_ZN4_sem9timedWaitEm+0xe8>
            if(temp == tail){
    80002b9c:	0b270463          	beq	a4,s2,80002c44 <_ZN4_sem9timedWaitEm+0x160>
            return MemoryAllocator::mem_alloc(size);
    80002ba0:	01800513          	li	a0,24
    80002ba4:	00000097          	auipc	ra,0x0
    80002ba8:	4d8080e7          	jalr	1240(ra) # 8000307c <_ZN15MemoryAllocator9mem_allocEm>
        Elem(_thread* thread, time_t relativeTime, Elem* next) : thread(thread), relativeTime(relativeTime), next(next){}
    80002bac:	01553023          	sd	s5,0(a0)
    80002bb0:	00953423          	sd	s1,8(a0)
    80002bb4:	01253823          	sd	s2,16(a0)
                if(prev){
    80002bb8:	120a0463          	beqz	s4,80002ce0 <_ZN4_sem9timedWaitEm+0x1fc>
                    prev->next = newElem;
    80002bbc:	00aa3823          	sd	a0,16(s4)
                temp->relativeTime -= slice;
    80002bc0:	00893583          	ld	a1,8(s2)
    80002bc4:	409584b3          	sub	s1,a1,s1
    80002bc8:	00993423          	sd	s1,8(s2)
        blocked.addTail(_thread::running);
    80002bcc:	00009797          	auipc	a5,0x9
    80002bd0:	dbc7b783          	ld	a5,-580(a5) # 8000b988 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002bd4:	0007b483          	ld	s1,0(a5)
            return MemoryAllocator::mem_alloc(size);
    80002bd8:	01000513          	li	a0,16
    80002bdc:	00000097          	auipc	ra,0x0
    80002be0:	4a0080e7          	jalr	1184(ra) # 8000307c <_ZN15MemoryAllocator9mem_allocEm>
        Elem(_thread* elem) : elem(elem), next(nullptr){}
    80002be4:	00953023          	sd	s1,0(a0)
    80002be8:	00053423          	sd	zero,8(a0)
        if(tail != nullptr){
    80002bec:	0109b783          	ld	a5,16(s3)
    80002bf0:	10078063          	beqz	a5,80002cf0 <_ZN4_sem9timedWaitEm+0x20c>
            tail->next = elem;
    80002bf4:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002bf8:	00a9b823          	sd	a0,16(s3)
        _thread::running->setTimedWait(true);
    80002bfc:	00009797          	auipc	a5,0x9
    80002c00:	d8c7b783          	ld	a5,-628(a5) # 8000b988 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002c04:	0007b783          	ld	a5,0(a5)
    void setTimedWait(bool tmdw){timedWait = tmdw;}
    80002c08:	00100713          	li	a4,1
    80002c0c:	02e78123          	sb	a4,34(a5)
    void setBlocked(bool blck){blocked = blck;}
    80002c10:	02e78023          	sb	a4,32(a5)
        _thread::running->setBlocked(true);
        _thread::running->mySem = this;
    80002c14:	0337bc23          	sd	s3,56(a5)
        _thread::dispatch();
    80002c18:	fffff097          	auipc	ra,0xfffff
    80002c1c:	8dc080e7          	jalr	-1828(ra) # 800014f4 <_ZN7_thread8dispatchEv>
    }
}
    80002c20:	03813083          	ld	ra,56(sp)
    80002c24:	03013403          	ld	s0,48(sp)
    80002c28:	02813483          	ld	s1,40(sp)
    80002c2c:	02013903          	ld	s2,32(sp)
    80002c30:	01813983          	ld	s3,24(sp)
    80002c34:	01013a03          	ld	s4,16(sp)
    80002c38:	00813a83          	ld	s5,8(sp)
    80002c3c:	04010113          	addi	sp,sp,64
    80002c40:	00008067          	ret
                if(slice >= tail->relativeTime){
    80002c44:	00873783          	ld	a5,8(a4)
    80002c48:	04f4e063          	bltu	s1,a5,80002c88 <_ZN4_sem9timedWaitEm+0x1a4>
            return MemoryAllocator::mem_alloc(size);
    80002c4c:	01800513          	li	a0,24
    80002c50:	00000097          	auipc	ra,0x0
    80002c54:	42c080e7          	jalr	1068(ra) # 8000307c <_ZN15MemoryAllocator9mem_allocEm>
                    Elem* newElem = new Elem(newSleep, slice - tail->relativeTime, nullptr);
    80002c58:	00009797          	auipc	a5,0x9
    80002c5c:	d787b783          	ld	a5,-648(a5) # 8000b9d0 <_GLOBAL_OFFSET_TABLE_+0x70>
    80002c60:	0087b703          	ld	a4,8(a5)
    80002c64:	00873703          	ld	a4,8(a4)
    80002c68:	40e484b3          	sub	s1,s1,a4
        Elem(_thread* thread, time_t relativeTime, Elem* next) : thread(thread), relativeTime(relativeTime), next(next){}
    80002c6c:	01553023          	sd	s5,0(a0)
    80002c70:	00953423          	sd	s1,8(a0)
    80002c74:	00053823          	sd	zero,16(a0)
                    tail->next = newElem;
    80002c78:	0087b703          	ld	a4,8(a5)
    80002c7c:	00a73823          	sd	a0,16(a4)
                    tail = newElem;
    80002c80:	00a7b423          	sd	a0,8(a5)
    80002c84:	f49ff06f          	j	80002bcc <_ZN4_sem9timedWaitEm+0xe8>
            return MemoryAllocator::mem_alloc(size);
    80002c88:	01800513          	li	a0,24
    80002c8c:	00000097          	auipc	ra,0x0
    80002c90:	3f0080e7          	jalr	1008(ra) # 8000307c <_ZN15MemoryAllocator9mem_allocEm>
                    Elem* newElem = new Elem(newSleep, slice, tail);
    80002c94:	00009797          	auipc	a5,0x9
    80002c98:	d3c7b783          	ld	a5,-708(a5) # 8000b9d0 <_GLOBAL_OFFSET_TABLE_+0x70>
    80002c9c:	0087b783          	ld	a5,8(a5)
        Elem(_thread* thread, time_t relativeTime, Elem* next) : thread(thread), relativeTime(relativeTime), next(next){}
    80002ca0:	01553023          	sd	s5,0(a0)
    80002ca4:	00953423          	sd	s1,8(a0)
    80002ca8:	00f53823          	sd	a5,16(a0)
                    if(prev){
    80002cac:	020a0263          	beqz	s4,80002cd0 <_ZN4_sem9timedWaitEm+0x1ec>
                        prev->next = newElem;
    80002cb0:	00aa3823          	sd	a0,16(s4)
                    tail->relativeTime -= slice;
    80002cb4:	00009797          	auipc	a5,0x9
    80002cb8:	d1c7b783          	ld	a5,-740(a5) # 8000b9d0 <_GLOBAL_OFFSET_TABLE_+0x70>
    80002cbc:	0087b703          	ld	a4,8(a5)
    80002cc0:	00873783          	ld	a5,8(a4)
    80002cc4:	409784b3          	sub	s1,a5,s1
    80002cc8:	00973423          	sd	s1,8(a4)
    80002ccc:	f01ff06f          	j	80002bcc <_ZN4_sem9timedWaitEm+0xe8>
                        head = newElem;
    80002cd0:	00009797          	auipc	a5,0x9
    80002cd4:	d007b783          	ld	a5,-768(a5) # 8000b9d0 <_GLOBAL_OFFSET_TABLE_+0x70>
    80002cd8:	00a7b023          	sd	a0,0(a5)
    80002cdc:	fd9ff06f          	j	80002cb4 <_ZN4_sem9timedWaitEm+0x1d0>
                    head = newElem;
    80002ce0:	00009797          	auipc	a5,0x9
    80002ce4:	cf07b783          	ld	a5,-784(a5) # 8000b9d0 <_GLOBAL_OFFSET_TABLE_+0x70>
    80002ce8:	00a7b023          	sd	a0,0(a5)
    80002cec:	ed5ff06f          	j	80002bc0 <_ZN4_sem9timedWaitEm+0xdc>
            head = elem;
    80002cf0:	00a9b423          	sd	a0,8(s3)
            tail = elem;
    80002cf4:	00a9b823          	sd	a0,16(s3)
    80002cf8:	f05ff06f          	j	80002bfc <_ZN4_sem9timedWaitEm+0x118>

0000000080002cfc <_ZN4_sem16deblockTimedWaitEP7_thread>:

void _sem::deblockTimedWait(_thread *wake) {
    80002cfc:	fe010113          	addi	sp,sp,-32
    80002d00:	00113c23          	sd	ra,24(sp)
    80002d04:	00813823          	sd	s0,16(sp)
    80002d08:	00913423          	sd	s1,8(sp)
    80002d0c:	01213023          	sd	s2,0(sp)
    80002d10:	02010413          	addi	s0,sp,32
    80002d14:	00050913          	mv	s2,a0
    80002d18:	00058493          	mv	s1,a1
        return nullptr;
    }

    _thread* remove(_thread* victim){
        Elem* curr = head;
    80002d1c:	00853503          	ld	a0,8(a0)
        for(; curr->next && curr->next->elem != victim; curr = curr->next);
    80002d20:	00050713          	mv	a4,a0
    80002d24:	00853503          	ld	a0,8(a0)
    80002d28:	00050663          	beqz	a0,80002d34 <_ZN4_sem16deblockTimedWaitEP7_thread+0x38>
    80002d2c:	00053783          	ld	a5,0(a0)
    80002d30:	fef498e3          	bne	s1,a5,80002d20 <_ZN4_sem16deblockTimedWaitEP7_thread+0x24>
        if(!curr->next) return nullptr;
    80002d34:	00050a63          	beqz	a0,80002d48 <_ZN4_sem16deblockTimedWaitEP7_thread+0x4c>
        Elem* old = curr->next;
        _thread* ret = old->elem;
        curr->next = old->next;
    80002d38:	00853783          	ld	a5,8(a0)
    80002d3c:	00f73423          	sd	a5,8(a4)
            MemoryAllocator::mem_free(prt);
    80002d40:	00000097          	auipc	ra,0x0
    80002d44:	4bc080e7          	jalr	1212(ra) # 800031fc <_ZN15MemoryAllocator8mem_freeEPv>
    blocked.remove(wake);
    value++;
    80002d48:	00092783          	lw	a5,0(s2)
    80002d4c:	0017879b          	addiw	a5,a5,1
    80002d50:	00f92023          	sw	a5,0(s2)
    80002d54:	02048023          	sb	zero,32(s1)
    wake->setBlocked(false);
    wake->mySem = nullptr;
    80002d58:	0204bc23          	sd	zero,56(s1)
    Scheduler::put(wake);
    80002d5c:	00048513          	mv	a0,s1
    80002d60:	fffff097          	auipc	ra,0xfffff
    80002d64:	a00080e7          	jalr	-1536(ra) # 80001760 <_ZN9Scheduler3putEP7_thread>
}
    80002d68:	01813083          	ld	ra,24(sp)
    80002d6c:	01013403          	ld	s0,16(sp)
    80002d70:	00813483          	ld	s1,8(sp)
    80002d74:	00013903          	ld	s2,0(sp)
    80002d78:	02010113          	addi	sp,sp,32
    80002d7c:	00008067          	ret

0000000080002d80 <_Z41__static_initialization_and_destruction_0ii>:
}

void IO::closeIO() {
    _sem::close_sem(inputBuffer.itemAvailable);
    _sem::close_sem(outputBuffer.itemAvailable);
}
    80002d80:	00100793          	li	a5,1
    80002d84:	00f50463          	beq	a0,a5,80002d8c <_Z41__static_initialization_and_destruction_0ii+0xc>
    80002d88:	00008067          	ret
    80002d8c:	000107b7          	lui	a5,0x10
    80002d90:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002d94:	fef59ae3          	bne	a1,a5,80002d88 <_Z41__static_initialization_and_destruction_0ii+0x8>
    80002d98:	ff010113          	addi	sp,sp,-16
    80002d9c:	00113423          	sd	ra,8(sp)
    80002da0:	00813023          	sd	s0,0(sp)
    80002da4:	01010413          	addi	s0,sp,16
Buffer IO::inputBuffer;
    80002da8:	00009517          	auipc	a0,0x9
    80002dac:	ce850513          	addi	a0,a0,-792 # 8000ba90 <_ZN2IO11inputBufferE>
    80002db0:	00000097          	auipc	ra,0x0
    80002db4:	148080e7          	jalr	328(ra) # 80002ef8 <_ZN6BufferC1Ev>
Buffer IO::outputBuffer;
    80002db8:	00009517          	auipc	a0,0x9
    80002dbc:	df850513          	addi	a0,a0,-520 # 8000bbb0 <_ZN2IO12outputBufferE>
    80002dc0:	00000097          	auipc	ra,0x0
    80002dc4:	138080e7          	jalr	312(ra) # 80002ef8 <_ZN6BufferC1Ev>
}
    80002dc8:	00813083          	ld	ra,8(sp)
    80002dcc:	00013403          	ld	s0,0(sp)
    80002dd0:	01010113          	addi	sp,sp,16
    80002dd4:	00008067          	ret

0000000080002dd8 <_ZN2IO6initIOEv>:
void IO::initIO() {
    80002dd8:	ff010113          	addi	sp,sp,-16
    80002ddc:	00113423          	sd	ra,8(sp)
    80002de0:	00813023          	sd	s0,0(sp)
    80002de4:	01010413          	addi	s0,sp,16
    inputBuffer.init();
    80002de8:	00009517          	auipc	a0,0x9
    80002dec:	ca850513          	addi	a0,a0,-856 # 8000ba90 <_ZN2IO11inputBufferE>
    80002df0:	00000097          	auipc	ra,0x0
    80002df4:	208080e7          	jalr	520(ra) # 80002ff8 <_ZN6Buffer4initEv>
    outputBuffer.init();
    80002df8:	00009517          	auipc	a0,0x9
    80002dfc:	db850513          	addi	a0,a0,-584 # 8000bbb0 <_ZN2IO12outputBufferE>
    80002e00:	00000097          	auipc	ra,0x0
    80002e04:	1f8080e7          	jalr	504(ra) # 80002ff8 <_ZN6Buffer4initEv>
}
    80002e08:	00813083          	ld	ra,8(sp)
    80002e0c:	00013403          	ld	s0,0(sp)
    80002e10:	01010113          	addi	sp,sp,16
    80002e14:	00008067          	ret

0000000080002e18 <_ZN2IO5_putCEc>:
void IO::_putC(char ch) {
    80002e18:	ff010113          	addi	sp,sp,-16
    80002e1c:	00113423          	sd	ra,8(sp)
    80002e20:	00813023          	sd	s0,0(sp)
    80002e24:	01010413          	addi	s0,sp,16
    80002e28:	00050593          	mv	a1,a0
    outputBuffer.putc(ch);
    80002e2c:	00009517          	auipc	a0,0x9
    80002e30:	d8450513          	addi	a0,a0,-636 # 8000bbb0 <_ZN2IO12outputBufferE>
    80002e34:	00000097          	auipc	ra,0x0
    80002e38:	10c080e7          	jalr	268(ra) # 80002f40 <_ZN6Buffer4putcEc>
}
    80002e3c:	00813083          	ld	ra,8(sp)
    80002e40:	00013403          	ld	s0,0(sp)
    80002e44:	01010113          	addi	sp,sp,16
    80002e48:	00008067          	ret

0000000080002e4c <_ZN2IO5_getCEv>:
char IO::_getC() {
    80002e4c:	ff010113          	addi	sp,sp,-16
    80002e50:	00113423          	sd	ra,8(sp)
    80002e54:	00813023          	sd	s0,0(sp)
    80002e58:	01010413          	addi	s0,sp,16
    return inputBuffer.getc();
    80002e5c:	00009517          	auipc	a0,0x9
    80002e60:	c3450513          	addi	a0,a0,-972 # 8000ba90 <_ZN2IO11inputBufferE>
    80002e64:	00000097          	auipc	ra,0x0
    80002e68:	138080e7          	jalr	312(ra) # 80002f9c <_ZN6Buffer4getcEv>
}
    80002e6c:	00813083          	ld	ra,8(sp)
    80002e70:	00013403          	ld	s0,0(sp)
    80002e74:	01010113          	addi	sp,sp,16
    80002e78:	00008067          	ret

0000000080002e7c <_ZN2IO7closeIOEv>:
void IO::closeIO() {
    80002e7c:	fe010113          	addi	sp,sp,-32
    80002e80:	00113c23          	sd	ra,24(sp)
    80002e84:	00813823          	sd	s0,16(sp)
    80002e88:	00913423          	sd	s1,8(sp)
    80002e8c:	02010413          	addi	s0,sp,32
    _sem::close_sem(inputBuffer.itemAvailable);
    80002e90:	00009497          	auipc	s1,0x9
    80002e94:	c0048493          	addi	s1,s1,-1024 # 8000ba90 <_ZN2IO11inputBufferE>
    80002e98:	0004b503          	ld	a0,0(s1)
    80002e9c:	00000097          	auipc	ra,0x0
    80002ea0:	b84080e7          	jalr	-1148(ra) # 80002a20 <_ZN4_sem9close_semEPS_>
    _sem::close_sem(outputBuffer.itemAvailable);
    80002ea4:	1204b503          	ld	a0,288(s1)
    80002ea8:	00000097          	auipc	ra,0x0
    80002eac:	b78080e7          	jalr	-1160(ra) # 80002a20 <_ZN4_sem9close_semEPS_>
}
    80002eb0:	01813083          	ld	ra,24(sp)
    80002eb4:	01013403          	ld	s0,16(sp)
    80002eb8:	00813483          	ld	s1,8(sp)
    80002ebc:	02010113          	addi	sp,sp,32
    80002ec0:	00008067          	ret

0000000080002ec4 <_GLOBAL__sub_I__ZN2IO11inputBufferE>:
    80002ec4:	ff010113          	addi	sp,sp,-16
    80002ec8:	00113423          	sd	ra,8(sp)
    80002ecc:	00813023          	sd	s0,0(sp)
    80002ed0:	01010413          	addi	s0,sp,16
    80002ed4:	000105b7          	lui	a1,0x10
    80002ed8:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002edc:	00100513          	li	a0,1
    80002ee0:	00000097          	auipc	ra,0x0
    80002ee4:	ea0080e7          	jalr	-352(ra) # 80002d80 <_Z41__static_initialization_and_destruction_0ii>
    80002ee8:	00813083          	ld	ra,8(sp)
    80002eec:	00013403          	ld	s0,0(sp)
    80002ef0:	01010113          	addi	sp,sp,16
    80002ef4:	00008067          	ret

0000000080002ef8 <_ZN6BufferC1Ev>:
#include "../h/buffer.hpp"

Buffer::Buffer() : itemAvailable(_sem::init(0)){
    80002ef8:	fe010113          	addi	sp,sp,-32
    80002efc:	00113c23          	sd	ra,24(sp)
    80002f00:	00813823          	sd	s0,16(sp)
    80002f04:	00913423          	sd	s1,8(sp)
    80002f08:	02010413          	addi	s0,sp,32
    80002f0c:	00050493          	mv	s1,a0
    80002f10:	00000513          	li	a0,0
    80002f14:	00000097          	auipc	ra,0x0
    80002f18:	b8c080e7          	jalr	-1140(ra) # 80002aa0 <_ZN4_sem4initEi>
    80002f1c:	00a4b023          	sd	a0,0(s1)
    80002f20:	1004b423          	sd	zero,264(s1)
    80002f24:	1004b823          	sd	zero,272(s1)
    80002f28:	1004bc23          	sd	zero,280(s1)
   //sem_open(&itemAvailable, 0);
}
    80002f2c:	01813083          	ld	ra,24(sp)
    80002f30:	01013403          	ld	s0,16(sp)
    80002f34:	00813483          	ld	s1,8(sp)
    80002f38:	02010113          	addi	sp,sp,32
    80002f3c:	00008067          	ret

0000000080002f40 <_ZN6Buffer4putcEc>:

void Buffer::putc(char c) {
    if(count < bafSize){
    80002f40:	11853783          	ld	a5,280(a0)
    80002f44:	0ff00713          	li	a4,255
    80002f48:	00f77463          	bgeu	a4,a5,80002f50 <_ZN6Buffer4putcEc+0x10>
    80002f4c:	00008067          	ret
void Buffer::putc(char c) {
    80002f50:	ff010113          	addi	sp,sp,-16
    80002f54:	00113423          	sd	ra,8(sp)
    80002f58:	00813023          	sd	s0,0(sp)
    80002f5c:	01010413          	addi	s0,sp,16
        buffer[tail] = c;
    80002f60:	11053703          	ld	a4,272(a0)
    80002f64:	00e506b3          	add	a3,a0,a4
    80002f68:	00b68423          	sb	a1,8(a3)
        tail = (tail + 1)%bafSize;
    80002f6c:	00170713          	addi	a4,a4,1
    80002f70:	0ff77713          	andi	a4,a4,255
    80002f74:	10e53823          	sd	a4,272(a0)
        count++;
    80002f78:	00178793          	addi	a5,a5,1
    80002f7c:	10f53c23          	sd	a5,280(a0)
        itemAvailable->signal();
    80002f80:	00053503          	ld	a0,0(a0)
    80002f84:	00000097          	auipc	ra,0x0
    80002f88:	940080e7          	jalr	-1728(ra) # 800028c4 <_ZN4_sem6signalEv>
    }
}
    80002f8c:	00813083          	ld	ra,8(sp)
    80002f90:	00013403          	ld	s0,0(sp)
    80002f94:	01010113          	addi	sp,sp,16
    80002f98:	00008067          	ret

0000000080002f9c <_ZN6Buffer4getcEv>:

char Buffer::getc() {
    80002f9c:	fe010113          	addi	sp,sp,-32
    80002fa0:	00113c23          	sd	ra,24(sp)
    80002fa4:	00813823          	sd	s0,16(sp)
    80002fa8:	00913423          	sd	s1,8(sp)
    80002fac:	02010413          	addi	s0,sp,32
    80002fb0:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80002fb4:	00053503          	ld	a0,0(a0)
    80002fb8:	00000097          	auipc	ra,0x0
    80002fbc:	9d8080e7          	jalr	-1576(ra) # 80002990 <_ZN4_sem4waitEv>
    char ret = buffer[head];
    80002fc0:	1084b783          	ld	a5,264(s1)
    80002fc4:	00f48733          	add	a4,s1,a5
    80002fc8:	00874503          	lbu	a0,8(a4)
    head = (head + 1)%bafSize;
    80002fcc:	00178793          	addi	a5,a5,1
    80002fd0:	0ff7f793          	andi	a5,a5,255
    80002fd4:	10f4b423          	sd	a5,264(s1)
    count--;
    80002fd8:	1184b783          	ld	a5,280(s1)
    80002fdc:	fff78793          	addi	a5,a5,-1
    80002fe0:	10f4bc23          	sd	a5,280(s1)
    return ret;
}
    80002fe4:	01813083          	ld	ra,24(sp)
    80002fe8:	01013403          	ld	s0,16(sp)
    80002fec:	00813483          	ld	s1,8(sp)
    80002ff0:	02010113          	addi	sp,sp,32
    80002ff4:	00008067          	ret

0000000080002ff8 <_ZN6Buffer4initEv>:

void Buffer::init() {
    80002ff8:	fe010113          	addi	sp,sp,-32
    80002ffc:	00113c23          	sd	ra,24(sp)
    80003000:	00813823          	sd	s0,16(sp)
    80003004:	00913423          	sd	s1,8(sp)
    80003008:	02010413          	addi	s0,sp,32
    8000300c:	00050493          	mv	s1,a0
    _sem* temp = _sem::init(0);
    80003010:	00000513          	li	a0,0
    80003014:	00000097          	auipc	ra,0x0
    80003018:	a8c080e7          	jalr	-1396(ra) # 80002aa0 <_ZN4_sem4initEi>
    itemAvailable = temp;
    8000301c:	00a4b023          	sd	a0,0(s1)
}
    80003020:	01813083          	ld	ra,24(sp)
    80003024:	01013403          	ld	s0,16(sp)
    80003028:	00813483          	ld	s1,8(sp)
    8000302c:	02010113          	addi	sp,sp,32
    80003030:	00008067          	ret

0000000080003034 <_Z10updateUsedP9BlockHeadS0_>:
#include "../h/MemAlloc.hpp"




void updateUsed(BlockHead* usedS, BlockHead* newBlock){         //Places newBlock in usedS list
    80003034:	ff010113          	addi	sp,sp,-16
    80003038:	00813423          	sd	s0,8(sp)
    8000303c:	01010413          	addi	s0,sp,16
    if(!usedS){                                          //First block allocated
    80003040:	00050c63          	beqz	a0,80003058 <_Z10updateUsedP9BlockHeadS0_+0x24>
        usedS = newBlock;
        newBlock->next = nullptr;
    } else if ((char *) newBlock < (char*) usedS){      //New block goes as head block
    80003044:	00a5fe63          	bgeu	a1,a0,80003060 <_Z10updateUsedP9BlockHeadS0_+0x2c>
        newBlock->next = usedS;
    80003048:	00a5b023          	sd	a0,0(a1)
        BlockHead* prevUsed = usedS;
        for(;prevUsed->next && (char*)prevUsed->next < (char *)newBlock; prevUsed = prevUsed->next);
        newBlock->next = prevUsed->next;
        prevUsed->next = newBlock;
    }
}
    8000304c:	00813403          	ld	s0,8(sp)
    80003050:	01010113          	addi	sp,sp,16
    80003054:	00008067          	ret
        newBlock->next = nullptr;
    80003058:	0005b023          	sd	zero,0(a1)
    8000305c:	ff1ff06f          	j	8000304c <_Z10updateUsedP9BlockHeadS0_+0x18>
        for(;prevUsed->next && (char*)prevUsed->next < (char *)newBlock; prevUsed = prevUsed->next);
    80003060:	00050793          	mv	a5,a0
    80003064:	00053503          	ld	a0,0(a0)
    80003068:	00050463          	beqz	a0,80003070 <_Z10updateUsedP9BlockHeadS0_+0x3c>
    8000306c:	feb56ae3          	bltu	a0,a1,80003060 <_Z10updateUsedP9BlockHeadS0_+0x2c>
        newBlock->next = prevUsed->next;
    80003070:	00a5b023          	sd	a0,0(a1)
        prevUsed->next = newBlock;
    80003074:	00b7b023          	sd	a1,0(a5)
}
    80003078:	fd5ff06f          	j	8000304c <_Z10updateUsedP9BlockHeadS0_+0x18>

000000008000307c <_ZN15MemoryAllocator9mem_allocEm>:

BlockHead* MemoryAllocator::freeStart = nullptr;
BlockHead* MemoryAllocator::usedStart = nullptr;

void *MemoryAllocator::mem_alloc(size_t size) {
    8000307c:	ff010113          	addi	sp,sp,-16
    80003080:	00813423          	sd	s0,8(sp)
    80003084:	01010413          	addi	s0,sp,16
    size_t actualSize;
    size += sizeof(BlockHead);
    80003088:	01050713          	addi	a4,a0,16
    if(size%MEM_BLOCK_SIZE == 0){
    8000308c:	03f77793          	andi	a5,a4,63
    80003090:	00078663          	beqz	a5,8000309c <_ZN15MemoryAllocator9mem_allocEm+0x20>
        actualSize = size;          //Size fits exactly in a block
    } else {
        actualSize = ((size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE) * MEM_BLOCK_SIZE; //Find block count then multiply by block size
    80003094:	04f50713          	addi	a4,a0,79
    80003098:	fc077713          	andi	a4,a4,-64
    }
    BlockHead* prev = nullptr;
    BlockHead* curr = nullptr;
    for(curr = freeStart; curr != nullptr; curr = curr->next){
    8000309c:	00009517          	auipc	a0,0x9
    800030a0:	c3453503          	ld	a0,-972(a0) # 8000bcd0 <_ZN15MemoryAllocator9freeStartE>
    BlockHead* prev = nullptr;
    800030a4:	00000693          	li	a3,0
    800030a8:	0cc0006f          	j	80003174 <_ZN15MemoryAllocator9mem_allocEm+0xf8>
        if(curr->size > actualSize){        //Found the block we need, fragment it and update the lists
            BlockHead* freeFragment = (BlockHead*)((char*)curr + actualSize);
    800030ac:	00e50633          	add	a2,a0,a4

            //Update block sizes
            freeFragment->size = curr->size - actualSize;
    800030b0:	40e787b3          	sub	a5,a5,a4
    800030b4:	00f63423          	sd	a5,8(a2)
            curr->size = actualSize;
    800030b8:	00e53423          	sd	a4,8(a0)

            //Fix block order
            if(prev) prev->next = freeFragment;
    800030bc:	02068e63          	beqz	a3,800030f8 <_ZN15MemoryAllocator9mem_allocEm+0x7c>
    800030c0:	00c6b023          	sd	a2,0(a3)
            else freeStart = freeFragment;
            freeFragment->next = curr->next;
    800030c4:	00053783          	ld	a5,0(a0)
    800030c8:	00f63023          	sd	a5,0(a2)

            //Place newly allocated block in used list

            if(!usedStart){                                          //First block allocated
    800030cc:	00009797          	auipc	a5,0x9
    800030d0:	c0c7b783          	ld	a5,-1012(a5) # 8000bcd8 <_ZN15MemoryAllocator9usedStartE>
    800030d4:	02078863          	beqz	a5,80003104 <_ZN15MemoryAllocator9mem_allocEm+0x88>
                usedStart = curr;
                curr->next = nullptr;
            } else if ((char *) curr < (char*) usedStart){      //New block goes as head block
    800030d8:	02f57e63          	bgeu	a0,a5,80003114 <_ZN15MemoryAllocator9mem_allocEm+0x98>
                curr->next = usedStart;
    800030dc:	00f53023          	sd	a5,0(a0)
                usedStart = curr;
    800030e0:	00009797          	auipc	a5,0x9
    800030e4:	bea7bc23          	sd	a0,-1032(a5) # 8000bcd8 <_ZN15MemoryAllocator9usedStartE>
            prev = curr;     //Current block doesn't fit, record it as previous
        }
    }

    return (char*)curr + sizeof(BlockHead);             //Could return nullptr but shouldn't happen
}
    800030e8:	01050513          	addi	a0,a0,16
    800030ec:	00813403          	ld	s0,8(sp)
    800030f0:	01010113          	addi	sp,sp,16
    800030f4:	00008067          	ret
            else freeStart = freeFragment;
    800030f8:	00009797          	auipc	a5,0x9
    800030fc:	bcc7bc23          	sd	a2,-1064(a5) # 8000bcd0 <_ZN15MemoryAllocator9freeStartE>
    80003100:	fc5ff06f          	j	800030c4 <_ZN15MemoryAllocator9mem_allocEm+0x48>
                usedStart = curr;
    80003104:	00009797          	auipc	a5,0x9
    80003108:	bca7ba23          	sd	a0,-1068(a5) # 8000bcd8 <_ZN15MemoryAllocator9usedStartE>
                curr->next = nullptr;
    8000310c:	00053023          	sd	zero,0(a0)
    80003110:	fd9ff06f          	j	800030e8 <_ZN15MemoryAllocator9mem_allocEm+0x6c>
                for(;prevUsed->next && (char*)prevUsed->next < (char *)curr; prevUsed = prevUsed->next);
    80003114:	00078713          	mv	a4,a5
    80003118:	0007b783          	ld	a5,0(a5)
    8000311c:	00078463          	beqz	a5,80003124 <_ZN15MemoryAllocator9mem_allocEm+0xa8>
    80003120:	fea7eae3          	bltu	a5,a0,80003114 <_ZN15MemoryAllocator9mem_allocEm+0x98>
                curr->next = prevUsed->next;
    80003124:	00f53023          	sd	a5,0(a0)
                prevUsed->next = curr;
    80003128:	00a73023          	sd	a0,0(a4)
    8000312c:	fbdff06f          	j	800030e8 <_ZN15MemoryAllocator9mem_allocEm+0x6c>
            else freeStart = curr->next;
    80003130:	00053783          	ld	a5,0(a0)
    80003134:	00009717          	auipc	a4,0x9
    80003138:	b8f73e23          	sd	a5,-1124(a4) # 8000bcd0 <_ZN15MemoryAllocator9freeStartE>
    8000313c:	0540006f          	j	80003190 <_ZN15MemoryAllocator9mem_allocEm+0x114>
                usedStart = curr;
    80003140:	00009797          	auipc	a5,0x9
    80003144:	b8a7bc23          	sd	a0,-1128(a5) # 8000bcd8 <_ZN15MemoryAllocator9usedStartE>
                curr->next = nullptr;
    80003148:	00053023          	sd	zero,0(a0)
    8000314c:	f9dff06f          	j	800030e8 <_ZN15MemoryAllocator9mem_allocEm+0x6c>
                for(;prevUsed->next && (char*)prevUsed->next < (char *)curr; prevUsed = prevUsed->next);
    80003150:	00078713          	mv	a4,a5
    80003154:	0007b783          	ld	a5,0(a5)
    80003158:	00078463          	beqz	a5,80003160 <_ZN15MemoryAllocator9mem_allocEm+0xe4>
    8000315c:	fea7eae3          	bltu	a5,a0,80003150 <_ZN15MemoryAllocator9mem_allocEm+0xd4>
                curr->next = prevUsed->next;
    80003160:	00f53023          	sd	a5,0(a0)
                prevUsed->next = curr;
    80003164:	00a73023          	sd	a0,0(a4)
    80003168:	f81ff06f          	j	800030e8 <_ZN15MemoryAllocator9mem_allocEm+0x6c>
            prev = curr;     //Current block doesn't fit, record it as previous
    8000316c:	00050693          	mv	a3,a0
    for(curr = freeStart; curr != nullptr; curr = curr->next){
    80003170:	00053503          	ld	a0,0(a0)
    80003174:	f6050ae3          	beqz	a0,800030e8 <_ZN15MemoryAllocator9mem_allocEm+0x6c>
        if(curr->size > actualSize){        //Found the block we need, fragment it and update the lists
    80003178:	00853783          	ld	a5,8(a0)
    8000317c:	f2f768e3          	bltu	a4,a5,800030ac <_ZN15MemoryAllocator9mem_allocEm+0x30>
        } else if (curr->size == actualSize){   //Found block with exact size, no fragmenting needed
    80003180:	fee796e3          	bne	a5,a4,8000316c <_ZN15MemoryAllocator9mem_allocEm+0xf0>
            if(prev) prev->next = curr->next;
    80003184:	fa0686e3          	beqz	a3,80003130 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
    80003188:	00053783          	ld	a5,0(a0)
    8000318c:	00f6b023          	sd	a5,0(a3)
            if(!usedStart){                                          //First block allocated
    80003190:	00009797          	auipc	a5,0x9
    80003194:	b487b783          	ld	a5,-1208(a5) # 8000bcd8 <_ZN15MemoryAllocator9usedStartE>
    80003198:	fa0784e3          	beqz	a5,80003140 <_ZN15MemoryAllocator9mem_allocEm+0xc4>
            } else if ((char *) curr < (char*) usedStart){      //New block goes as head block
    8000319c:	faf57ae3          	bgeu	a0,a5,80003150 <_ZN15MemoryAllocator9mem_allocEm+0xd4>
                curr->next = usedStart;
    800031a0:	00f53023          	sd	a5,0(a0)
                usedStart = curr;
    800031a4:	00009797          	auipc	a5,0x9
    800031a8:	b2a7ba23          	sd	a0,-1228(a5) # 8000bcd8 <_ZN15MemoryAllocator9usedStartE>
    800031ac:	f3dff06f          	j	800030e8 <_ZN15MemoryAllocator9mem_allocEm+0x6c>

00000000800031b0 <_ZN15MemoryAllocator15tryJoinWithNextEP9BlockHead>:
        a++;
    }
    return 0;
}

void MemoryAllocator::tryJoinWithNext(BlockHead *curr) {
    800031b0:	ff010113          	addi	sp,sp,-16
    800031b4:	00813423          	sd	s0,8(sp)
    800031b8:	01010413          	addi	s0,sp,16
    if(curr->next && (char*)curr->next == (char*)curr + curr->size + sizeof(BlockHead)){
    800031bc:	00053783          	ld	a5,0(a0)
    800031c0:	00078a63          	beqz	a5,800031d4 <_ZN15MemoryAllocator15tryJoinWithNextEP9BlockHead+0x24>
    800031c4:	00853683          	ld	a3,8(a0)
    800031c8:	01068713          	addi	a4,a3,16
    800031cc:	00e50733          	add	a4,a0,a4
    800031d0:	00e78863          	beq	a5,a4,800031e0 <_ZN15MemoryAllocator15tryJoinWithNextEP9BlockHead+0x30>
        curr->size += curr->next->size + sizeof (BlockHead);
        curr->next = curr->next->next;
    }
}
    800031d4:	00813403          	ld	s0,8(sp)
    800031d8:	01010113          	addi	sp,sp,16
    800031dc:	00008067          	ret
        curr->size += curr->next->size + sizeof (BlockHead);
    800031e0:	0087b703          	ld	a4,8(a5)
    800031e4:	00e686b3          	add	a3,a3,a4
    800031e8:	01068693          	addi	a3,a3,16
    800031ec:	00d53423          	sd	a3,8(a0)
        curr->next = curr->next->next;
    800031f0:	0007b783          	ld	a5,0(a5)
    800031f4:	00f53023          	sd	a5,0(a0)
}
    800031f8:	fddff06f          	j	800031d4 <_ZN15MemoryAllocator15tryJoinWithNextEP9BlockHead+0x24>

00000000800031fc <_ZN15MemoryAllocator8mem_freeEPv>:
    if(!old || old < HEAP_START_ADDR || old > HEAP_END_ADDR) return -1;
    800031fc:	10050463          	beqz	a0,80003304 <_ZN15MemoryAllocator8mem_freeEPv+0x108>
    80003200:	00050713          	mv	a4,a0
    80003204:	00008797          	auipc	a5,0x8
    80003208:	77c7b783          	ld	a5,1916(a5) # 8000b980 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000320c:	0007b783          	ld	a5,0(a5)
    80003210:	0ef56e63          	bltu	a0,a5,8000330c <_ZN15MemoryAllocator8mem_freeEPv+0x110>
    80003214:	00008797          	auipc	a5,0x8
    80003218:	7b47b783          	ld	a5,1972(a5) # 8000b9c8 <_GLOBAL_OFFSET_TABLE_+0x68>
    8000321c:	0007b783          	ld	a5,0(a5)
    80003220:	0ea7ea63          	bltu	a5,a0,80003314 <_ZN15MemoryAllocator8mem_freeEPv+0x118>
    if(usedStart == nullptr) return -2;
    80003224:	00009797          	auipc	a5,0x9
    80003228:	ab47b783          	ld	a5,-1356(a5) # 8000bcd8 <_ZN15MemoryAllocator9usedStartE>
    8000322c:	0e078863          	beqz	a5,8000331c <_ZN15MemoryAllocator8mem_freeEPv+0x120>
    BlockHead* curr = (BlockHead*)((char*)old - sizeof(BlockHead));
    80003230:	ff050513          	addi	a0,a0,-16
    if(curr < usedStart){       //Shouldn't happen
    80003234:	0ef56863          	bltu	a0,a5,80003324 <_ZN15MemoryAllocator8mem_freeEPv+0x128>
    if(curr == usedStart){
    80003238:	08a78463          	beq	a5,a0,800032c0 <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
        for(prev = usedStart; prev->next && prev->next != curr; prev = prev->next);
    8000323c:	00078693          	mv	a3,a5
    80003240:	0007b783          	ld	a5,0(a5)
    80003244:	00078463          	beqz	a5,8000324c <_ZN15MemoryAllocator8mem_freeEPv+0x50>
    80003248:	fea79ae3          	bne	a5,a0,8000323c <_ZN15MemoryAllocator8mem_freeEPv+0x40>
        prev->next = curr->next;
    8000324c:	ff073783          	ld	a5,-16(a4)
    80003250:	00f6b023          	sd	a5,0(a3)
        curr->next = nullptr;
    80003254:	fe073823          	sd	zero,-16(a4)
    if(freeStart == nullptr){       //The only free block
    80003258:	00009797          	auipc	a5,0x9
    8000325c:	a787b783          	ld	a5,-1416(a5) # 8000bcd0 <_ZN15MemoryAllocator9freeStartE>
    80003260:	06078a63          	beqz	a5,800032d4 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
int MemoryAllocator::mem_free(void *old) {
    80003264:	fe010113          	addi	sp,sp,-32
    80003268:	00113c23          	sd	ra,24(sp)
    8000326c:	00813823          	sd	s0,16(sp)
    80003270:	00913423          	sd	s1,8(sp)
    80003274:	02010413          	addi	s0,sp,32
    } else if ((char*) curr < (char *)freeStart){   //Goes before the first free block
    80003278:	06f56863          	bltu	a0,a5,800032e8 <_ZN15MemoryAllocator8mem_freeEPv+0xec>
        for(; prev->next && (char*)prev->next < (char*)curr; prev = prev->next);
    8000327c:	00078493          	mv	s1,a5
    80003280:	0007b783          	ld	a5,0(a5)
    80003284:	00078463          	beqz	a5,8000328c <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    80003288:	fea7eae3          	bltu	a5,a0,8000327c <_ZN15MemoryAllocator8mem_freeEPv+0x80>
        curr->next = prev->next;
    8000328c:	fef73823          	sd	a5,-16(a4)
        prev->next = curr;
    80003290:	00a4b023          	sd	a0,0(s1)
        tryJoinWithNext(curr);
    80003294:	00000097          	auipc	ra,0x0
    80003298:	f1c080e7          	jalr	-228(ra) # 800031b0 <_ZN15MemoryAllocator15tryJoinWithNextEP9BlockHead>
        tryJoinWithNext(prev);
    8000329c:	00048513          	mv	a0,s1
    800032a0:	00000097          	auipc	ra,0x0
    800032a4:	f10080e7          	jalr	-240(ra) # 800031b0 <_ZN15MemoryAllocator15tryJoinWithNextEP9BlockHead>
    return 0;
    800032a8:	00000513          	li	a0,0
}
    800032ac:	01813083          	ld	ra,24(sp)
    800032b0:	01013403          	ld	s0,16(sp)
    800032b4:	00813483          	ld	s1,8(sp)
    800032b8:	02010113          	addi	sp,sp,32
    800032bc:	00008067          	ret
        usedStart = usedStart->next;
    800032c0:	0007b783          	ld	a5,0(a5)
    800032c4:	00009697          	auipc	a3,0x9
    800032c8:	a0f6ba23          	sd	a5,-1516(a3) # 8000bcd8 <_ZN15MemoryAllocator9usedStartE>
        curr->next = nullptr;
    800032cc:	fe073823          	sd	zero,-16(a4)
    800032d0:	f89ff06f          	j	80003258 <_ZN15MemoryAllocator8mem_freeEPv+0x5c>
        freeStart = curr;
    800032d4:	00009797          	auipc	a5,0x9
    800032d8:	9ea7be23          	sd	a0,-1540(a5) # 8000bcd0 <_ZN15MemoryAllocator9freeStartE>
        curr->next = nullptr;
    800032dc:	fe073823          	sd	zero,-16(a4)
    return 0;
    800032e0:	00000513          	li	a0,0
    800032e4:	00008067          	ret
        curr->next = freeStart;
    800032e8:	fef73823          	sd	a5,-16(a4)
        freeStart = curr;
    800032ec:	00009797          	auipc	a5,0x9
    800032f0:	9ea7b223          	sd	a0,-1564(a5) # 8000bcd0 <_ZN15MemoryAllocator9freeStartE>
        tryJoinWithNext(curr);
    800032f4:	00000097          	auipc	ra,0x0
    800032f8:	ebc080e7          	jalr	-324(ra) # 800031b0 <_ZN15MemoryAllocator15tryJoinWithNextEP9BlockHead>
    return 0;
    800032fc:	00000513          	li	a0,0
    80003300:	fadff06f          	j	800032ac <_ZN15MemoryAllocator8mem_freeEPv+0xb0>
    if(!old || old < HEAP_START_ADDR || old > HEAP_END_ADDR) return -1;
    80003304:	fff00513          	li	a0,-1
    80003308:	00008067          	ret
    8000330c:	fff00513          	li	a0,-1
    80003310:	00008067          	ret
    80003314:	fff00513          	li	a0,-1
    80003318:	00008067          	ret
    if(usedStart == nullptr) return -2;
    8000331c:	ffe00513          	li	a0,-2
    80003320:	00008067          	ret
        return -3;
    80003324:	ffd00513          	li	a0,-3
}
    80003328:	00008067          	ret

000000008000332c <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    8000332c:	fe010113          	addi	sp,sp,-32
    80003330:	00113c23          	sd	ra,24(sp)
    80003334:	00813823          	sd	s0,16(sp)
    80003338:	00913423          	sd	s1,8(sp)
    8000333c:	01213023          	sd	s2,0(sp)
    80003340:	02010413          	addi	s0,sp,32
    80003344:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003348:	00000913          	li	s2,0
    8000334c:	00c0006f          	j	80003358 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003350:	ffffe097          	auipc	ra,0xffffe
    80003354:	ed0080e7          	jalr	-304(ra) # 80001220 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80003358:	ffffe097          	auipc	ra,0xffffe
    8000335c:	040080e7          	jalr	64(ra) # 80001398 <_Z4getcv>
    80003360:	0005059b          	sext.w	a1,a0
    80003364:	01b00793          	li	a5,27
    80003368:	02f58a63          	beq	a1,a5,8000339c <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    8000336c:	0084b503          	ld	a0,8(s1)
    80003370:	00003097          	auipc	ra,0x3
    80003374:	414080e7          	jalr	1044(ra) # 80006784 <_ZN6Buffer3putEi>
        i++;
    80003378:	0019071b          	addiw	a4,s2,1
    8000337c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003380:	0004a683          	lw	a3,0(s1)
    80003384:	0026979b          	slliw	a5,a3,0x2
    80003388:	00d787bb          	addw	a5,a5,a3
    8000338c:	0017979b          	slliw	a5,a5,0x1
    80003390:	02f767bb          	remw	a5,a4,a5
    80003394:	fc0792e3          	bnez	a5,80003358 <_ZL16producerKeyboardPv+0x2c>
    80003398:	fb9ff06f          	j	80003350 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    8000339c:	00100793          	li	a5,1
    800033a0:	00009717          	auipc	a4,0x9
    800033a4:	94f72023          	sw	a5,-1728(a4) # 8000bce0 <_ZL9threadEnd>
    data->buffer->put('!');
    800033a8:	02100593          	li	a1,33
    800033ac:	0084b503          	ld	a0,8(s1)
    800033b0:	00003097          	auipc	ra,0x3
    800033b4:	3d4080e7          	jalr	980(ra) # 80006784 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    800033b8:	0104b503          	ld	a0,16(s1)
    800033bc:	ffffe097          	auipc	ra,0xffffe
    800033c0:	f1c080e7          	jalr	-228(ra) # 800012d8 <_Z10sem_signalP4_sem>
}
    800033c4:	01813083          	ld	ra,24(sp)
    800033c8:	01013403          	ld	s0,16(sp)
    800033cc:	00813483          	ld	s1,8(sp)
    800033d0:	00013903          	ld	s2,0(sp)
    800033d4:	02010113          	addi	sp,sp,32
    800033d8:	00008067          	ret

00000000800033dc <_ZL8producerPv>:

static void producer(void *arg) {
    800033dc:	fe010113          	addi	sp,sp,-32
    800033e0:	00113c23          	sd	ra,24(sp)
    800033e4:	00813823          	sd	s0,16(sp)
    800033e8:	00913423          	sd	s1,8(sp)
    800033ec:	01213023          	sd	s2,0(sp)
    800033f0:	02010413          	addi	s0,sp,32
    800033f4:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800033f8:	00000913          	li	s2,0
    800033fc:	00c0006f          	j	80003408 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003400:	ffffe097          	auipc	ra,0xffffe
    80003404:	e20080e7          	jalr	-480(ra) # 80001220 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80003408:	00009797          	auipc	a5,0x9
    8000340c:	8d87a783          	lw	a5,-1832(a5) # 8000bce0 <_ZL9threadEnd>
    80003410:	02079e63          	bnez	a5,8000344c <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003414:	0004a583          	lw	a1,0(s1)
    80003418:	0305859b          	addiw	a1,a1,48
    8000341c:	0084b503          	ld	a0,8(s1)
    80003420:	00003097          	auipc	ra,0x3
    80003424:	364080e7          	jalr	868(ra) # 80006784 <_ZN6Buffer3putEi>
        i++;
    80003428:	0019071b          	addiw	a4,s2,1
    8000342c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003430:	0004a683          	lw	a3,0(s1)
    80003434:	0026979b          	slliw	a5,a3,0x2
    80003438:	00d787bb          	addw	a5,a5,a3
    8000343c:	0017979b          	slliw	a5,a5,0x1
    80003440:	02f767bb          	remw	a5,a4,a5
    80003444:	fc0792e3          	bnez	a5,80003408 <_ZL8producerPv+0x2c>
    80003448:	fb9ff06f          	j	80003400 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    8000344c:	0104b503          	ld	a0,16(s1)
    80003450:	ffffe097          	auipc	ra,0xffffe
    80003454:	e88080e7          	jalr	-376(ra) # 800012d8 <_Z10sem_signalP4_sem>
}
    80003458:	01813083          	ld	ra,24(sp)
    8000345c:	01013403          	ld	s0,16(sp)
    80003460:	00813483          	ld	s1,8(sp)
    80003464:	00013903          	ld	s2,0(sp)
    80003468:	02010113          	addi	sp,sp,32
    8000346c:	00008067          	ret

0000000080003470 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003470:	fd010113          	addi	sp,sp,-48
    80003474:	02113423          	sd	ra,40(sp)
    80003478:	02813023          	sd	s0,32(sp)
    8000347c:	00913c23          	sd	s1,24(sp)
    80003480:	01213823          	sd	s2,16(sp)
    80003484:	01313423          	sd	s3,8(sp)
    80003488:	03010413          	addi	s0,sp,48
    8000348c:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003490:	00000993          	li	s3,0
    80003494:	01c0006f          	j	800034b0 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003498:	ffffe097          	auipc	ra,0xffffe
    8000349c:	d88080e7          	jalr	-632(ra) # 80001220 <_Z15thread_dispatchv>
    800034a0:	0500006f          	j	800034f0 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800034a4:	00a00513          	li	a0,10
    800034a8:	ffffe097          	auipc	ra,0xffffe
    800034ac:	f18080e7          	jalr	-232(ra) # 800013c0 <_Z4putcc>
    while (!threadEnd) {
    800034b0:	00009797          	auipc	a5,0x9
    800034b4:	8307a783          	lw	a5,-2000(a5) # 8000bce0 <_ZL9threadEnd>
    800034b8:	06079063          	bnez	a5,80003518 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    800034bc:	00893503          	ld	a0,8(s2)
    800034c0:	00003097          	auipc	ra,0x3
    800034c4:	354080e7          	jalr	852(ra) # 80006814 <_ZN6Buffer3getEv>
        i++;
    800034c8:	0019849b          	addiw	s1,s3,1
    800034cc:	0004899b          	sext.w	s3,s1
        putc(key);
    800034d0:	0ff57513          	andi	a0,a0,255
    800034d4:	ffffe097          	auipc	ra,0xffffe
    800034d8:	eec080e7          	jalr	-276(ra) # 800013c0 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800034dc:	00092703          	lw	a4,0(s2)
    800034e0:	0027179b          	slliw	a5,a4,0x2
    800034e4:	00e787bb          	addw	a5,a5,a4
    800034e8:	02f4e7bb          	remw	a5,s1,a5
    800034ec:	fa0786e3          	beqz	a5,80003498 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    800034f0:	05000793          	li	a5,80
    800034f4:	02f4e4bb          	remw	s1,s1,a5
    800034f8:	fa049ce3          	bnez	s1,800034b0 <_ZL8consumerPv+0x40>
    800034fc:	fa9ff06f          	j	800034a4 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003500:	00893503          	ld	a0,8(s2)
    80003504:	00003097          	auipc	ra,0x3
    80003508:	310080e7          	jalr	784(ra) # 80006814 <_ZN6Buffer3getEv>
        putc(key);
    8000350c:	0ff57513          	andi	a0,a0,255
    80003510:	ffffe097          	auipc	ra,0xffffe
    80003514:	eb0080e7          	jalr	-336(ra) # 800013c0 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003518:	00893503          	ld	a0,8(s2)
    8000351c:	00003097          	auipc	ra,0x3
    80003520:	384080e7          	jalr	900(ra) # 800068a0 <_ZN6Buffer6getCntEv>
    80003524:	fca04ee3          	bgtz	a0,80003500 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003528:	01093503          	ld	a0,16(s2)
    8000352c:	ffffe097          	auipc	ra,0xffffe
    80003530:	dac080e7          	jalr	-596(ra) # 800012d8 <_Z10sem_signalP4_sem>
}
    80003534:	02813083          	ld	ra,40(sp)
    80003538:	02013403          	ld	s0,32(sp)
    8000353c:	01813483          	ld	s1,24(sp)
    80003540:	01013903          	ld	s2,16(sp)
    80003544:	00813983          	ld	s3,8(sp)
    80003548:	03010113          	addi	sp,sp,48
    8000354c:	00008067          	ret

0000000080003550 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003550:	f9010113          	addi	sp,sp,-112
    80003554:	06113423          	sd	ra,104(sp)
    80003558:	06813023          	sd	s0,96(sp)
    8000355c:	04913c23          	sd	s1,88(sp)
    80003560:	05213823          	sd	s2,80(sp)
    80003564:	05313423          	sd	s3,72(sp)
    80003568:	05413023          	sd	s4,64(sp)
    8000356c:	03513c23          	sd	s5,56(sp)
    80003570:	03613823          	sd	s6,48(sp)
    80003574:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003578:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    8000357c:	00006517          	auipc	a0,0x6
    80003580:	bb450513          	addi	a0,a0,-1100 # 80009130 <CONSOLE_STATUS+0x120>
    80003584:	00002097          	auipc	ra,0x2
    80003588:	234080e7          	jalr	564(ra) # 800057b8 <_Z11printStringPKc>
    getString(input, 30);
    8000358c:	01e00593          	li	a1,30
    80003590:	fa040493          	addi	s1,s0,-96
    80003594:	00048513          	mv	a0,s1
    80003598:	00002097          	auipc	ra,0x2
    8000359c:	2a8080e7          	jalr	680(ra) # 80005840 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800035a0:	00048513          	mv	a0,s1
    800035a4:	00002097          	auipc	ra,0x2
    800035a8:	374080e7          	jalr	884(ra) # 80005918 <_Z11stringToIntPKc>
    800035ac:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800035b0:	00006517          	auipc	a0,0x6
    800035b4:	ba050513          	addi	a0,a0,-1120 # 80009150 <CONSOLE_STATUS+0x140>
    800035b8:	00002097          	auipc	ra,0x2
    800035bc:	200080e7          	jalr	512(ra) # 800057b8 <_Z11printStringPKc>
    getString(input, 30);
    800035c0:	01e00593          	li	a1,30
    800035c4:	00048513          	mv	a0,s1
    800035c8:	00002097          	auipc	ra,0x2
    800035cc:	278080e7          	jalr	632(ra) # 80005840 <_Z9getStringPci>
    n = stringToInt(input);
    800035d0:	00048513          	mv	a0,s1
    800035d4:	00002097          	auipc	ra,0x2
    800035d8:	344080e7          	jalr	836(ra) # 80005918 <_Z11stringToIntPKc>
    800035dc:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800035e0:	00006517          	auipc	a0,0x6
    800035e4:	b9050513          	addi	a0,a0,-1136 # 80009170 <CONSOLE_STATUS+0x160>
    800035e8:	00002097          	auipc	ra,0x2
    800035ec:	1d0080e7          	jalr	464(ra) # 800057b8 <_Z11printStringPKc>
    800035f0:	00000613          	li	a2,0
    800035f4:	00a00593          	li	a1,10
    800035f8:	00090513          	mv	a0,s2
    800035fc:	00002097          	auipc	ra,0x2
    80003600:	36c080e7          	jalr	876(ra) # 80005968 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003604:	00006517          	auipc	a0,0x6
    80003608:	b8450513          	addi	a0,a0,-1148 # 80009188 <CONSOLE_STATUS+0x178>
    8000360c:	00002097          	auipc	ra,0x2
    80003610:	1ac080e7          	jalr	428(ra) # 800057b8 <_Z11printStringPKc>
    80003614:	00000613          	li	a2,0
    80003618:	00a00593          	li	a1,10
    8000361c:	00048513          	mv	a0,s1
    80003620:	00002097          	auipc	ra,0x2
    80003624:	348080e7          	jalr	840(ra) # 80005968 <_Z8printIntiii>
    printString(".\n");
    80003628:	00006517          	auipc	a0,0x6
    8000362c:	b7850513          	addi	a0,a0,-1160 # 800091a0 <CONSOLE_STATUS+0x190>
    80003630:	00002097          	auipc	ra,0x2
    80003634:	188080e7          	jalr	392(ra) # 800057b8 <_Z11printStringPKc>
    if(threadNum > n) {
    80003638:	0324c463          	blt	s1,s2,80003660 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    8000363c:	03205c63          	blez	s2,80003674 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003640:	03800513          	li	a0,56
    80003644:	ffffe097          	auipc	ra,0xffffe
    80003648:	3bc080e7          	jalr	956(ra) # 80001a00 <_Znwm>
    8000364c:	00050a13          	mv	s4,a0
    80003650:	00048593          	mv	a1,s1
    80003654:	00003097          	auipc	ra,0x3
    80003658:	094080e7          	jalr	148(ra) # 800066e8 <_ZN6BufferC1Ei>
    8000365c:	0300006f          	j	8000368c <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003660:	00006517          	auipc	a0,0x6
    80003664:	b4850513          	addi	a0,a0,-1208 # 800091a8 <CONSOLE_STATUS+0x198>
    80003668:	00002097          	auipc	ra,0x2
    8000366c:	150080e7          	jalr	336(ra) # 800057b8 <_Z11printStringPKc>
        return;
    80003670:	0140006f          	j	80003684 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003674:	00006517          	auipc	a0,0x6
    80003678:	b7450513          	addi	a0,a0,-1164 # 800091e8 <CONSOLE_STATUS+0x1d8>
    8000367c:	00002097          	auipc	ra,0x2
    80003680:	13c080e7          	jalr	316(ra) # 800057b8 <_Z11printStringPKc>
        return;
    80003684:	000b0113          	mv	sp,s6
    80003688:	1500006f          	j	800037d8 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    8000368c:	00000593          	li	a1,0
    80003690:	00008517          	auipc	a0,0x8
    80003694:	65850513          	addi	a0,a0,1624 # 8000bce8 <_ZL10waitForAll>
    80003698:	ffffe097          	auipc	ra,0xffffe
    8000369c:	ba8080e7          	jalr	-1112(ra) # 80001240 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    800036a0:	00391793          	slli	a5,s2,0x3
    800036a4:	00f78793          	addi	a5,a5,15
    800036a8:	ff07f793          	andi	a5,a5,-16
    800036ac:	40f10133          	sub	sp,sp,a5
    800036b0:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    800036b4:	0019071b          	addiw	a4,s2,1
    800036b8:	00171793          	slli	a5,a4,0x1
    800036bc:	00e787b3          	add	a5,a5,a4
    800036c0:	00379793          	slli	a5,a5,0x3
    800036c4:	00f78793          	addi	a5,a5,15
    800036c8:	ff07f793          	andi	a5,a5,-16
    800036cc:	40f10133          	sub	sp,sp,a5
    800036d0:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    800036d4:	00191613          	slli	a2,s2,0x1
    800036d8:	012607b3          	add	a5,a2,s2
    800036dc:	00379793          	slli	a5,a5,0x3
    800036e0:	00f987b3          	add	a5,s3,a5
    800036e4:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800036e8:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    800036ec:	00008717          	auipc	a4,0x8
    800036f0:	5fc73703          	ld	a4,1532(a4) # 8000bce8 <_ZL10waitForAll>
    800036f4:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    800036f8:	00078613          	mv	a2,a5
    800036fc:	00000597          	auipc	a1,0x0
    80003700:	d7458593          	addi	a1,a1,-652 # 80003470 <_ZL8consumerPv>
    80003704:	f9840513          	addi	a0,s0,-104
    80003708:	ffffe097          	auipc	ra,0xffffe
    8000370c:	abc080e7          	jalr	-1348(ra) # 800011c4 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003710:	00000493          	li	s1,0
    80003714:	0280006f          	j	8000373c <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003718:	00000597          	auipc	a1,0x0
    8000371c:	c1458593          	addi	a1,a1,-1004 # 8000332c <_ZL16producerKeyboardPv>
                      data + i);
    80003720:	00179613          	slli	a2,a5,0x1
    80003724:	00f60633          	add	a2,a2,a5
    80003728:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    8000372c:	00c98633          	add	a2,s3,a2
    80003730:	ffffe097          	auipc	ra,0xffffe
    80003734:	a94080e7          	jalr	-1388(ra) # 800011c4 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003738:	0014849b          	addiw	s1,s1,1
    8000373c:	0524d263          	bge	s1,s2,80003780 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003740:	00149793          	slli	a5,s1,0x1
    80003744:	009787b3          	add	a5,a5,s1
    80003748:	00379793          	slli	a5,a5,0x3
    8000374c:	00f987b3          	add	a5,s3,a5
    80003750:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003754:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003758:	00008717          	auipc	a4,0x8
    8000375c:	59073703          	ld	a4,1424(a4) # 8000bce8 <_ZL10waitForAll>
    80003760:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003764:	00048793          	mv	a5,s1
    80003768:	00349513          	slli	a0,s1,0x3
    8000376c:	00aa8533          	add	a0,s5,a0
    80003770:	fa9054e3          	blez	s1,80003718 <_Z22producerConsumer_C_APIv+0x1c8>
    80003774:	00000597          	auipc	a1,0x0
    80003778:	c6858593          	addi	a1,a1,-920 # 800033dc <_ZL8producerPv>
    8000377c:	fa5ff06f          	j	80003720 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003780:	ffffe097          	auipc	ra,0xffffe
    80003784:	aa0080e7          	jalr	-1376(ra) # 80001220 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003788:	00000493          	li	s1,0
    8000378c:	00994e63          	blt	s2,s1,800037a8 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003790:	00008517          	auipc	a0,0x8
    80003794:	55853503          	ld	a0,1368(a0) # 8000bce8 <_ZL10waitForAll>
    80003798:	ffffe097          	auipc	ra,0xffffe
    8000379c:	b10080e7          	jalr	-1264(ra) # 800012a8 <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    800037a0:	0014849b          	addiw	s1,s1,1
    800037a4:	fe9ff06f          	j	8000378c <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    800037a8:	00008517          	auipc	a0,0x8
    800037ac:	54053503          	ld	a0,1344(a0) # 8000bce8 <_ZL10waitForAll>
    800037b0:	ffffe097          	auipc	ra,0xffffe
    800037b4:	ac8080e7          	jalr	-1336(ra) # 80001278 <_Z9sem_closeP4_sem>
    delete buffer;
    800037b8:	000a0e63          	beqz	s4,800037d4 <_Z22producerConsumer_C_APIv+0x284>
    800037bc:	000a0513          	mv	a0,s4
    800037c0:	00003097          	auipc	ra,0x3
    800037c4:	168080e7          	jalr	360(ra) # 80006928 <_ZN6BufferD1Ev>
    800037c8:	000a0513          	mv	a0,s4
    800037cc:	ffffe097          	auipc	ra,0xffffe
    800037d0:	25c080e7          	jalr	604(ra) # 80001a28 <_ZdlPv>
    800037d4:	000b0113          	mv	sp,s6

}
    800037d8:	f9040113          	addi	sp,s0,-112
    800037dc:	06813083          	ld	ra,104(sp)
    800037e0:	06013403          	ld	s0,96(sp)
    800037e4:	05813483          	ld	s1,88(sp)
    800037e8:	05013903          	ld	s2,80(sp)
    800037ec:	04813983          	ld	s3,72(sp)
    800037f0:	04013a03          	ld	s4,64(sp)
    800037f4:	03813a83          	ld	s5,56(sp)
    800037f8:	03013b03          	ld	s6,48(sp)
    800037fc:	07010113          	addi	sp,sp,112
    80003800:	00008067          	ret
    80003804:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003808:	000a0513          	mv	a0,s4
    8000380c:	ffffe097          	auipc	ra,0xffffe
    80003810:	21c080e7          	jalr	540(ra) # 80001a28 <_ZdlPv>
    80003814:	00048513          	mv	a0,s1
    80003818:	00009097          	auipc	ra,0x9
    8000381c:	5e0080e7          	jalr	1504(ra) # 8000cdf8 <_Unwind_Resume>

0000000080003820 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003820:	fe010113          	addi	sp,sp,-32
    80003824:	00113c23          	sd	ra,24(sp)
    80003828:	00813823          	sd	s0,16(sp)
    8000382c:	00913423          	sd	s1,8(sp)
    80003830:	01213023          	sd	s2,0(sp)
    80003834:	02010413          	addi	s0,sp,32
    80003838:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000383c:	00100793          	li	a5,1
    80003840:	02a7f863          	bgeu	a5,a0,80003870 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003844:	00a00793          	li	a5,10
    80003848:	02f577b3          	remu	a5,a0,a5
    8000384c:	02078e63          	beqz	a5,80003888 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003850:	fff48513          	addi	a0,s1,-1
    80003854:	00000097          	auipc	ra,0x0
    80003858:	fcc080e7          	jalr	-52(ra) # 80003820 <_ZL9fibonaccim>
    8000385c:	00050913          	mv	s2,a0
    80003860:	ffe48513          	addi	a0,s1,-2
    80003864:	00000097          	auipc	ra,0x0
    80003868:	fbc080e7          	jalr	-68(ra) # 80003820 <_ZL9fibonaccim>
    8000386c:	00a90533          	add	a0,s2,a0
}
    80003870:	01813083          	ld	ra,24(sp)
    80003874:	01013403          	ld	s0,16(sp)
    80003878:	00813483          	ld	s1,8(sp)
    8000387c:	00013903          	ld	s2,0(sp)
    80003880:	02010113          	addi	sp,sp,32
    80003884:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003888:	ffffe097          	auipc	ra,0xffffe
    8000388c:	998080e7          	jalr	-1640(ra) # 80001220 <_Z15thread_dispatchv>
    80003890:	fc1ff06f          	j	80003850 <_ZL9fibonaccim+0x30>

0000000080003894 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003894:	fe010113          	addi	sp,sp,-32
    80003898:	00113c23          	sd	ra,24(sp)
    8000389c:	00813823          	sd	s0,16(sp)
    800038a0:	00913423          	sd	s1,8(sp)
    800038a4:	01213023          	sd	s2,0(sp)
    800038a8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800038ac:	00000913          	li	s2,0
    800038b0:	0380006f          	j	800038e8 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800038b4:	ffffe097          	auipc	ra,0xffffe
    800038b8:	96c080e7          	jalr	-1684(ra) # 80001220 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800038bc:	00148493          	addi	s1,s1,1
    800038c0:	000027b7          	lui	a5,0x2
    800038c4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800038c8:	0097ee63          	bltu	a5,s1,800038e4 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800038cc:	00000713          	li	a4,0
    800038d0:	000077b7          	lui	a5,0x7
    800038d4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800038d8:	fce7eee3          	bltu	a5,a4,800038b4 <_ZN7WorkerA11workerBodyAEPv+0x20>
    800038dc:	00170713          	addi	a4,a4,1
    800038e0:	ff1ff06f          	j	800038d0 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800038e4:	00190913          	addi	s2,s2,1
    800038e8:	00900793          	li	a5,9
    800038ec:	0527e063          	bltu	a5,s2,8000392c <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800038f0:	00006517          	auipc	a0,0x6
    800038f4:	92850513          	addi	a0,a0,-1752 # 80009218 <CONSOLE_STATUS+0x208>
    800038f8:	00002097          	auipc	ra,0x2
    800038fc:	ec0080e7          	jalr	-320(ra) # 800057b8 <_Z11printStringPKc>
    80003900:	00000613          	li	a2,0
    80003904:	00a00593          	li	a1,10
    80003908:	0009051b          	sext.w	a0,s2
    8000390c:	00002097          	auipc	ra,0x2
    80003910:	05c080e7          	jalr	92(ra) # 80005968 <_Z8printIntiii>
    80003914:	00006517          	auipc	a0,0x6
    80003918:	b5450513          	addi	a0,a0,-1196 # 80009468 <CONSOLE_STATUS+0x458>
    8000391c:	00002097          	auipc	ra,0x2
    80003920:	e9c080e7          	jalr	-356(ra) # 800057b8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003924:	00000493          	li	s1,0
    80003928:	f99ff06f          	j	800038c0 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    8000392c:	00006517          	auipc	a0,0x6
    80003930:	8f450513          	addi	a0,a0,-1804 # 80009220 <CONSOLE_STATUS+0x210>
    80003934:	00002097          	auipc	ra,0x2
    80003938:	e84080e7          	jalr	-380(ra) # 800057b8 <_Z11printStringPKc>
    finishedA = true;
    8000393c:	00100793          	li	a5,1
    80003940:	00008717          	auipc	a4,0x8
    80003944:	3af70823          	sb	a5,944(a4) # 8000bcf0 <_ZL9finishedA>
}
    80003948:	01813083          	ld	ra,24(sp)
    8000394c:	01013403          	ld	s0,16(sp)
    80003950:	00813483          	ld	s1,8(sp)
    80003954:	00013903          	ld	s2,0(sp)
    80003958:	02010113          	addi	sp,sp,32
    8000395c:	00008067          	ret

0000000080003960 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003960:	fe010113          	addi	sp,sp,-32
    80003964:	00113c23          	sd	ra,24(sp)
    80003968:	00813823          	sd	s0,16(sp)
    8000396c:	00913423          	sd	s1,8(sp)
    80003970:	01213023          	sd	s2,0(sp)
    80003974:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003978:	00000913          	li	s2,0
    8000397c:	0380006f          	j	800039b4 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003980:	ffffe097          	auipc	ra,0xffffe
    80003984:	8a0080e7          	jalr	-1888(ra) # 80001220 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003988:	00148493          	addi	s1,s1,1
    8000398c:	000027b7          	lui	a5,0x2
    80003990:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003994:	0097ee63          	bltu	a5,s1,800039b0 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003998:	00000713          	li	a4,0
    8000399c:	000077b7          	lui	a5,0x7
    800039a0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800039a4:	fce7eee3          	bltu	a5,a4,80003980 <_ZN7WorkerB11workerBodyBEPv+0x20>
    800039a8:	00170713          	addi	a4,a4,1
    800039ac:	ff1ff06f          	j	8000399c <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800039b0:	00190913          	addi	s2,s2,1
    800039b4:	00f00793          	li	a5,15
    800039b8:	0527e063          	bltu	a5,s2,800039f8 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800039bc:	00006517          	auipc	a0,0x6
    800039c0:	87450513          	addi	a0,a0,-1932 # 80009230 <CONSOLE_STATUS+0x220>
    800039c4:	00002097          	auipc	ra,0x2
    800039c8:	df4080e7          	jalr	-524(ra) # 800057b8 <_Z11printStringPKc>
    800039cc:	00000613          	li	a2,0
    800039d0:	00a00593          	li	a1,10
    800039d4:	0009051b          	sext.w	a0,s2
    800039d8:	00002097          	auipc	ra,0x2
    800039dc:	f90080e7          	jalr	-112(ra) # 80005968 <_Z8printIntiii>
    800039e0:	00006517          	auipc	a0,0x6
    800039e4:	a8850513          	addi	a0,a0,-1400 # 80009468 <CONSOLE_STATUS+0x458>
    800039e8:	00002097          	auipc	ra,0x2
    800039ec:	dd0080e7          	jalr	-560(ra) # 800057b8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800039f0:	00000493          	li	s1,0
    800039f4:	f99ff06f          	j	8000398c <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    800039f8:	00006517          	auipc	a0,0x6
    800039fc:	84050513          	addi	a0,a0,-1984 # 80009238 <CONSOLE_STATUS+0x228>
    80003a00:	00002097          	auipc	ra,0x2
    80003a04:	db8080e7          	jalr	-584(ra) # 800057b8 <_Z11printStringPKc>
    finishedB = true;
    80003a08:	00100793          	li	a5,1
    80003a0c:	00008717          	auipc	a4,0x8
    80003a10:	2ef702a3          	sb	a5,741(a4) # 8000bcf1 <_ZL9finishedB>
    thread_dispatch();
    80003a14:	ffffe097          	auipc	ra,0xffffe
    80003a18:	80c080e7          	jalr	-2036(ra) # 80001220 <_Z15thread_dispatchv>
}
    80003a1c:	01813083          	ld	ra,24(sp)
    80003a20:	01013403          	ld	s0,16(sp)
    80003a24:	00813483          	ld	s1,8(sp)
    80003a28:	00013903          	ld	s2,0(sp)
    80003a2c:	02010113          	addi	sp,sp,32
    80003a30:	00008067          	ret

0000000080003a34 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003a34:	fe010113          	addi	sp,sp,-32
    80003a38:	00113c23          	sd	ra,24(sp)
    80003a3c:	00813823          	sd	s0,16(sp)
    80003a40:	00913423          	sd	s1,8(sp)
    80003a44:	01213023          	sd	s2,0(sp)
    80003a48:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003a4c:	00000493          	li	s1,0
    80003a50:	0400006f          	j	80003a90 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003a54:	00005517          	auipc	a0,0x5
    80003a58:	7f450513          	addi	a0,a0,2036 # 80009248 <CONSOLE_STATUS+0x238>
    80003a5c:	00002097          	auipc	ra,0x2
    80003a60:	d5c080e7          	jalr	-676(ra) # 800057b8 <_Z11printStringPKc>
    80003a64:	00000613          	li	a2,0
    80003a68:	00a00593          	li	a1,10
    80003a6c:	00048513          	mv	a0,s1
    80003a70:	00002097          	auipc	ra,0x2
    80003a74:	ef8080e7          	jalr	-264(ra) # 80005968 <_Z8printIntiii>
    80003a78:	00006517          	auipc	a0,0x6
    80003a7c:	9f050513          	addi	a0,a0,-1552 # 80009468 <CONSOLE_STATUS+0x458>
    80003a80:	00002097          	auipc	ra,0x2
    80003a84:	d38080e7          	jalr	-712(ra) # 800057b8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003a88:	0014849b          	addiw	s1,s1,1
    80003a8c:	0ff4f493          	andi	s1,s1,255
    80003a90:	00200793          	li	a5,2
    80003a94:	fc97f0e3          	bgeu	a5,s1,80003a54 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003a98:	00005517          	auipc	a0,0x5
    80003a9c:	7b850513          	addi	a0,a0,1976 # 80009250 <CONSOLE_STATUS+0x240>
    80003aa0:	00002097          	auipc	ra,0x2
    80003aa4:	d18080e7          	jalr	-744(ra) # 800057b8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003aa8:	00700313          	li	t1,7
    thread_dispatch();
    80003aac:	ffffd097          	auipc	ra,0xffffd
    80003ab0:	774080e7          	jalr	1908(ra) # 80001220 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003ab4:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003ab8:	00005517          	auipc	a0,0x5
    80003abc:	7a850513          	addi	a0,a0,1960 # 80009260 <CONSOLE_STATUS+0x250>
    80003ac0:	00002097          	auipc	ra,0x2
    80003ac4:	cf8080e7          	jalr	-776(ra) # 800057b8 <_Z11printStringPKc>
    80003ac8:	00000613          	li	a2,0
    80003acc:	00a00593          	li	a1,10
    80003ad0:	0009051b          	sext.w	a0,s2
    80003ad4:	00002097          	auipc	ra,0x2
    80003ad8:	e94080e7          	jalr	-364(ra) # 80005968 <_Z8printIntiii>
    80003adc:	00006517          	auipc	a0,0x6
    80003ae0:	98c50513          	addi	a0,a0,-1652 # 80009468 <CONSOLE_STATUS+0x458>
    80003ae4:	00002097          	auipc	ra,0x2
    80003ae8:	cd4080e7          	jalr	-812(ra) # 800057b8 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003aec:	00c00513          	li	a0,12
    80003af0:	00000097          	auipc	ra,0x0
    80003af4:	d30080e7          	jalr	-720(ra) # 80003820 <_ZL9fibonaccim>
    80003af8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003afc:	00005517          	auipc	a0,0x5
    80003b00:	76c50513          	addi	a0,a0,1900 # 80009268 <CONSOLE_STATUS+0x258>
    80003b04:	00002097          	auipc	ra,0x2
    80003b08:	cb4080e7          	jalr	-844(ra) # 800057b8 <_Z11printStringPKc>
    80003b0c:	00000613          	li	a2,0
    80003b10:	00a00593          	li	a1,10
    80003b14:	0009051b          	sext.w	a0,s2
    80003b18:	00002097          	auipc	ra,0x2
    80003b1c:	e50080e7          	jalr	-432(ra) # 80005968 <_Z8printIntiii>
    80003b20:	00006517          	auipc	a0,0x6
    80003b24:	94850513          	addi	a0,a0,-1720 # 80009468 <CONSOLE_STATUS+0x458>
    80003b28:	00002097          	auipc	ra,0x2
    80003b2c:	c90080e7          	jalr	-880(ra) # 800057b8 <_Z11printStringPKc>
    80003b30:	0400006f          	j	80003b70 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003b34:	00005517          	auipc	a0,0x5
    80003b38:	71450513          	addi	a0,a0,1812 # 80009248 <CONSOLE_STATUS+0x238>
    80003b3c:	00002097          	auipc	ra,0x2
    80003b40:	c7c080e7          	jalr	-900(ra) # 800057b8 <_Z11printStringPKc>
    80003b44:	00000613          	li	a2,0
    80003b48:	00a00593          	li	a1,10
    80003b4c:	00048513          	mv	a0,s1
    80003b50:	00002097          	auipc	ra,0x2
    80003b54:	e18080e7          	jalr	-488(ra) # 80005968 <_Z8printIntiii>
    80003b58:	00006517          	auipc	a0,0x6
    80003b5c:	91050513          	addi	a0,a0,-1776 # 80009468 <CONSOLE_STATUS+0x458>
    80003b60:	00002097          	auipc	ra,0x2
    80003b64:	c58080e7          	jalr	-936(ra) # 800057b8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003b68:	0014849b          	addiw	s1,s1,1
    80003b6c:	0ff4f493          	andi	s1,s1,255
    80003b70:	00500793          	li	a5,5
    80003b74:	fc97f0e3          	bgeu	a5,s1,80003b34 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003b78:	00005517          	auipc	a0,0x5
    80003b7c:	6a850513          	addi	a0,a0,1704 # 80009220 <CONSOLE_STATUS+0x210>
    80003b80:	00002097          	auipc	ra,0x2
    80003b84:	c38080e7          	jalr	-968(ra) # 800057b8 <_Z11printStringPKc>
    finishedC = true;
    80003b88:	00100793          	li	a5,1
    80003b8c:	00008717          	auipc	a4,0x8
    80003b90:	16f70323          	sb	a5,358(a4) # 8000bcf2 <_ZL9finishedC>
    thread_dispatch();
    80003b94:	ffffd097          	auipc	ra,0xffffd
    80003b98:	68c080e7          	jalr	1676(ra) # 80001220 <_Z15thread_dispatchv>
}
    80003b9c:	01813083          	ld	ra,24(sp)
    80003ba0:	01013403          	ld	s0,16(sp)
    80003ba4:	00813483          	ld	s1,8(sp)
    80003ba8:	00013903          	ld	s2,0(sp)
    80003bac:	02010113          	addi	sp,sp,32
    80003bb0:	00008067          	ret

0000000080003bb4 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003bb4:	fe010113          	addi	sp,sp,-32
    80003bb8:	00113c23          	sd	ra,24(sp)
    80003bbc:	00813823          	sd	s0,16(sp)
    80003bc0:	00913423          	sd	s1,8(sp)
    80003bc4:	01213023          	sd	s2,0(sp)
    80003bc8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003bcc:	00a00493          	li	s1,10
    80003bd0:	0400006f          	j	80003c10 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003bd4:	00005517          	auipc	a0,0x5
    80003bd8:	6a450513          	addi	a0,a0,1700 # 80009278 <CONSOLE_STATUS+0x268>
    80003bdc:	00002097          	auipc	ra,0x2
    80003be0:	bdc080e7          	jalr	-1060(ra) # 800057b8 <_Z11printStringPKc>
    80003be4:	00000613          	li	a2,0
    80003be8:	00a00593          	li	a1,10
    80003bec:	00048513          	mv	a0,s1
    80003bf0:	00002097          	auipc	ra,0x2
    80003bf4:	d78080e7          	jalr	-648(ra) # 80005968 <_Z8printIntiii>
    80003bf8:	00006517          	auipc	a0,0x6
    80003bfc:	87050513          	addi	a0,a0,-1936 # 80009468 <CONSOLE_STATUS+0x458>
    80003c00:	00002097          	auipc	ra,0x2
    80003c04:	bb8080e7          	jalr	-1096(ra) # 800057b8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003c08:	0014849b          	addiw	s1,s1,1
    80003c0c:	0ff4f493          	andi	s1,s1,255
    80003c10:	00c00793          	li	a5,12
    80003c14:	fc97f0e3          	bgeu	a5,s1,80003bd4 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003c18:	00005517          	auipc	a0,0x5
    80003c1c:	66850513          	addi	a0,a0,1640 # 80009280 <CONSOLE_STATUS+0x270>
    80003c20:	00002097          	auipc	ra,0x2
    80003c24:	b98080e7          	jalr	-1128(ra) # 800057b8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003c28:	00500313          	li	t1,5
    thread_dispatch();
    80003c2c:	ffffd097          	auipc	ra,0xffffd
    80003c30:	5f4080e7          	jalr	1524(ra) # 80001220 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003c34:	01000513          	li	a0,16
    80003c38:	00000097          	auipc	ra,0x0
    80003c3c:	be8080e7          	jalr	-1048(ra) # 80003820 <_ZL9fibonaccim>
    80003c40:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003c44:	00005517          	auipc	a0,0x5
    80003c48:	64c50513          	addi	a0,a0,1612 # 80009290 <CONSOLE_STATUS+0x280>
    80003c4c:	00002097          	auipc	ra,0x2
    80003c50:	b6c080e7          	jalr	-1172(ra) # 800057b8 <_Z11printStringPKc>
    80003c54:	00000613          	li	a2,0
    80003c58:	00a00593          	li	a1,10
    80003c5c:	0009051b          	sext.w	a0,s2
    80003c60:	00002097          	auipc	ra,0x2
    80003c64:	d08080e7          	jalr	-760(ra) # 80005968 <_Z8printIntiii>
    80003c68:	00006517          	auipc	a0,0x6
    80003c6c:	80050513          	addi	a0,a0,-2048 # 80009468 <CONSOLE_STATUS+0x458>
    80003c70:	00002097          	auipc	ra,0x2
    80003c74:	b48080e7          	jalr	-1208(ra) # 800057b8 <_Z11printStringPKc>
    80003c78:	0400006f          	j	80003cb8 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003c7c:	00005517          	auipc	a0,0x5
    80003c80:	5fc50513          	addi	a0,a0,1532 # 80009278 <CONSOLE_STATUS+0x268>
    80003c84:	00002097          	auipc	ra,0x2
    80003c88:	b34080e7          	jalr	-1228(ra) # 800057b8 <_Z11printStringPKc>
    80003c8c:	00000613          	li	a2,0
    80003c90:	00a00593          	li	a1,10
    80003c94:	00048513          	mv	a0,s1
    80003c98:	00002097          	auipc	ra,0x2
    80003c9c:	cd0080e7          	jalr	-816(ra) # 80005968 <_Z8printIntiii>
    80003ca0:	00005517          	auipc	a0,0x5
    80003ca4:	7c850513          	addi	a0,a0,1992 # 80009468 <CONSOLE_STATUS+0x458>
    80003ca8:	00002097          	auipc	ra,0x2
    80003cac:	b10080e7          	jalr	-1264(ra) # 800057b8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003cb0:	0014849b          	addiw	s1,s1,1
    80003cb4:	0ff4f493          	andi	s1,s1,255
    80003cb8:	00f00793          	li	a5,15
    80003cbc:	fc97f0e3          	bgeu	a5,s1,80003c7c <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003cc0:	00005517          	auipc	a0,0x5
    80003cc4:	5e050513          	addi	a0,a0,1504 # 800092a0 <CONSOLE_STATUS+0x290>
    80003cc8:	00002097          	auipc	ra,0x2
    80003ccc:	af0080e7          	jalr	-1296(ra) # 800057b8 <_Z11printStringPKc>
    finishedD = true;
    80003cd0:	00100793          	li	a5,1
    80003cd4:	00008717          	auipc	a4,0x8
    80003cd8:	00f70fa3          	sb	a5,31(a4) # 8000bcf3 <_ZL9finishedD>
    thread_dispatch();
    80003cdc:	ffffd097          	auipc	ra,0xffffd
    80003ce0:	544080e7          	jalr	1348(ra) # 80001220 <_Z15thread_dispatchv>
}
    80003ce4:	01813083          	ld	ra,24(sp)
    80003ce8:	01013403          	ld	s0,16(sp)
    80003cec:	00813483          	ld	s1,8(sp)
    80003cf0:	00013903          	ld	s2,0(sp)
    80003cf4:	02010113          	addi	sp,sp,32
    80003cf8:	00008067          	ret

0000000080003cfc <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003cfc:	fc010113          	addi	sp,sp,-64
    80003d00:	02113c23          	sd	ra,56(sp)
    80003d04:	02813823          	sd	s0,48(sp)
    80003d08:	02913423          	sd	s1,40(sp)
    80003d0c:	03213023          	sd	s2,32(sp)
    80003d10:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003d14:	02000513          	li	a0,32
    80003d18:	ffffe097          	auipc	ra,0xffffe
    80003d1c:	ce8080e7          	jalr	-792(ra) # 80001a00 <_Znwm>
    80003d20:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003d24:	ffffe097          	auipc	ra,0xffffe
    80003d28:	e28080e7          	jalr	-472(ra) # 80001b4c <_ZN6ThreadC1Ev>
    80003d2c:	00008797          	auipc	a5,0x8
    80003d30:	a9c78793          	addi	a5,a5,-1380 # 8000b7c8 <_ZTV7WorkerA+0x10>
    80003d34:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003d38:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003d3c:	00005517          	auipc	a0,0x5
    80003d40:	57450513          	addi	a0,a0,1396 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80003d44:	00002097          	auipc	ra,0x2
    80003d48:	a74080e7          	jalr	-1420(ra) # 800057b8 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003d4c:	02000513          	li	a0,32
    80003d50:	ffffe097          	auipc	ra,0xffffe
    80003d54:	cb0080e7          	jalr	-848(ra) # 80001a00 <_Znwm>
    80003d58:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003d5c:	ffffe097          	auipc	ra,0xffffe
    80003d60:	df0080e7          	jalr	-528(ra) # 80001b4c <_ZN6ThreadC1Ev>
    80003d64:	00008797          	auipc	a5,0x8
    80003d68:	a8c78793          	addi	a5,a5,-1396 # 8000b7f0 <_ZTV7WorkerB+0x10>
    80003d6c:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003d70:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003d74:	00005517          	auipc	a0,0x5
    80003d78:	55450513          	addi	a0,a0,1364 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80003d7c:	00002097          	auipc	ra,0x2
    80003d80:	a3c080e7          	jalr	-1476(ra) # 800057b8 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003d84:	02000513          	li	a0,32
    80003d88:	ffffe097          	auipc	ra,0xffffe
    80003d8c:	c78080e7          	jalr	-904(ra) # 80001a00 <_Znwm>
    80003d90:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003d94:	ffffe097          	auipc	ra,0xffffe
    80003d98:	db8080e7          	jalr	-584(ra) # 80001b4c <_ZN6ThreadC1Ev>
    80003d9c:	00008797          	auipc	a5,0x8
    80003da0:	a7c78793          	addi	a5,a5,-1412 # 8000b818 <_ZTV7WorkerC+0x10>
    80003da4:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003da8:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003dac:	00005517          	auipc	a0,0x5
    80003db0:	53450513          	addi	a0,a0,1332 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80003db4:	00002097          	auipc	ra,0x2
    80003db8:	a04080e7          	jalr	-1532(ra) # 800057b8 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003dbc:	02000513          	li	a0,32
    80003dc0:	ffffe097          	auipc	ra,0xffffe
    80003dc4:	c40080e7          	jalr	-960(ra) # 80001a00 <_Znwm>
    80003dc8:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003dcc:	ffffe097          	auipc	ra,0xffffe
    80003dd0:	d80080e7          	jalr	-640(ra) # 80001b4c <_ZN6ThreadC1Ev>
    80003dd4:	00008797          	auipc	a5,0x8
    80003dd8:	a6c78793          	addi	a5,a5,-1428 # 8000b840 <_ZTV7WorkerD+0x10>
    80003ddc:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003de0:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003de4:	00005517          	auipc	a0,0x5
    80003de8:	51450513          	addi	a0,a0,1300 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80003dec:	00002097          	auipc	ra,0x2
    80003df0:	9cc080e7          	jalr	-1588(ra) # 800057b8 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003df4:	00000493          	li	s1,0
    80003df8:	00300793          	li	a5,3
    80003dfc:	0297c663          	blt	a5,s1,80003e28 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003e00:	00349793          	slli	a5,s1,0x3
    80003e04:	fe040713          	addi	a4,s0,-32
    80003e08:	00f707b3          	add	a5,a4,a5
    80003e0c:	fe07b503          	ld	a0,-32(a5)
    80003e10:	ffffe097          	auipc	ra,0xffffe
    80003e14:	d68080e7          	jalr	-664(ra) # 80001b78 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003e18:	0014849b          	addiw	s1,s1,1
    80003e1c:	fddff06f          	j	80003df8 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003e20:	ffffe097          	auipc	ra,0xffffe
    80003e24:	d04080e7          	jalr	-764(ra) # 80001b24 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003e28:	00008797          	auipc	a5,0x8
    80003e2c:	ec87c783          	lbu	a5,-312(a5) # 8000bcf0 <_ZL9finishedA>
    80003e30:	fe0788e3          	beqz	a5,80003e20 <_Z20Threads_CPP_API_testv+0x124>
    80003e34:	00008797          	auipc	a5,0x8
    80003e38:	ebd7c783          	lbu	a5,-323(a5) # 8000bcf1 <_ZL9finishedB>
    80003e3c:	fe0782e3          	beqz	a5,80003e20 <_Z20Threads_CPP_API_testv+0x124>
    80003e40:	00008797          	auipc	a5,0x8
    80003e44:	eb27c783          	lbu	a5,-334(a5) # 8000bcf2 <_ZL9finishedC>
    80003e48:	fc078ce3          	beqz	a5,80003e20 <_Z20Threads_CPP_API_testv+0x124>
    80003e4c:	00008797          	auipc	a5,0x8
    80003e50:	ea77c783          	lbu	a5,-345(a5) # 8000bcf3 <_ZL9finishedD>
    80003e54:	fc0786e3          	beqz	a5,80003e20 <_Z20Threads_CPP_API_testv+0x124>
    80003e58:	fc040493          	addi	s1,s0,-64
    80003e5c:	0080006f          	j	80003e64 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003e60:	00848493          	addi	s1,s1,8
    80003e64:	fe040793          	addi	a5,s0,-32
    80003e68:	08f48663          	beq	s1,a5,80003ef4 <_Z20Threads_CPP_API_testv+0x1f8>
    80003e6c:	0004b503          	ld	a0,0(s1)
    80003e70:	fe0508e3          	beqz	a0,80003e60 <_Z20Threads_CPP_API_testv+0x164>
    80003e74:	00053783          	ld	a5,0(a0)
    80003e78:	0087b783          	ld	a5,8(a5)
    80003e7c:	000780e7          	jalr	a5
    80003e80:	fe1ff06f          	j	80003e60 <_Z20Threads_CPP_API_testv+0x164>
    80003e84:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003e88:	00048513          	mv	a0,s1
    80003e8c:	ffffe097          	auipc	ra,0xffffe
    80003e90:	b9c080e7          	jalr	-1124(ra) # 80001a28 <_ZdlPv>
    80003e94:	00090513          	mv	a0,s2
    80003e98:	00009097          	auipc	ra,0x9
    80003e9c:	f60080e7          	jalr	-160(ra) # 8000cdf8 <_Unwind_Resume>
    80003ea0:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003ea4:	00048513          	mv	a0,s1
    80003ea8:	ffffe097          	auipc	ra,0xffffe
    80003eac:	b80080e7          	jalr	-1152(ra) # 80001a28 <_ZdlPv>
    80003eb0:	00090513          	mv	a0,s2
    80003eb4:	00009097          	auipc	ra,0x9
    80003eb8:	f44080e7          	jalr	-188(ra) # 8000cdf8 <_Unwind_Resume>
    80003ebc:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003ec0:	00048513          	mv	a0,s1
    80003ec4:	ffffe097          	auipc	ra,0xffffe
    80003ec8:	b64080e7          	jalr	-1180(ra) # 80001a28 <_ZdlPv>
    80003ecc:	00090513          	mv	a0,s2
    80003ed0:	00009097          	auipc	ra,0x9
    80003ed4:	f28080e7          	jalr	-216(ra) # 8000cdf8 <_Unwind_Resume>
    80003ed8:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003edc:	00048513          	mv	a0,s1
    80003ee0:	ffffe097          	auipc	ra,0xffffe
    80003ee4:	b48080e7          	jalr	-1208(ra) # 80001a28 <_ZdlPv>
    80003ee8:	00090513          	mv	a0,s2
    80003eec:	00009097          	auipc	ra,0x9
    80003ef0:	f0c080e7          	jalr	-244(ra) # 8000cdf8 <_Unwind_Resume>
}
    80003ef4:	03813083          	ld	ra,56(sp)
    80003ef8:	03013403          	ld	s0,48(sp)
    80003efc:	02813483          	ld	s1,40(sp)
    80003f00:	02013903          	ld	s2,32(sp)
    80003f04:	04010113          	addi	sp,sp,64
    80003f08:	00008067          	ret

0000000080003f0c <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003f0c:	ff010113          	addi	sp,sp,-16
    80003f10:	00113423          	sd	ra,8(sp)
    80003f14:	00813023          	sd	s0,0(sp)
    80003f18:	01010413          	addi	s0,sp,16
    80003f1c:	00008797          	auipc	a5,0x8
    80003f20:	8ac78793          	addi	a5,a5,-1876 # 8000b7c8 <_ZTV7WorkerA+0x10>
    80003f24:	00f53023          	sd	a5,0(a0)
    80003f28:	ffffe097          	auipc	ra,0xffffe
    80003f2c:	a6c080e7          	jalr	-1428(ra) # 80001994 <_ZN6ThreadD1Ev>
    80003f30:	00813083          	ld	ra,8(sp)
    80003f34:	00013403          	ld	s0,0(sp)
    80003f38:	01010113          	addi	sp,sp,16
    80003f3c:	00008067          	ret

0000000080003f40 <_ZN7WorkerAD0Ev>:
    80003f40:	fe010113          	addi	sp,sp,-32
    80003f44:	00113c23          	sd	ra,24(sp)
    80003f48:	00813823          	sd	s0,16(sp)
    80003f4c:	00913423          	sd	s1,8(sp)
    80003f50:	02010413          	addi	s0,sp,32
    80003f54:	00050493          	mv	s1,a0
    80003f58:	00008797          	auipc	a5,0x8
    80003f5c:	87078793          	addi	a5,a5,-1936 # 8000b7c8 <_ZTV7WorkerA+0x10>
    80003f60:	00f53023          	sd	a5,0(a0)
    80003f64:	ffffe097          	auipc	ra,0xffffe
    80003f68:	a30080e7          	jalr	-1488(ra) # 80001994 <_ZN6ThreadD1Ev>
    80003f6c:	00048513          	mv	a0,s1
    80003f70:	ffffe097          	auipc	ra,0xffffe
    80003f74:	ab8080e7          	jalr	-1352(ra) # 80001a28 <_ZdlPv>
    80003f78:	01813083          	ld	ra,24(sp)
    80003f7c:	01013403          	ld	s0,16(sp)
    80003f80:	00813483          	ld	s1,8(sp)
    80003f84:	02010113          	addi	sp,sp,32
    80003f88:	00008067          	ret

0000000080003f8c <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003f8c:	ff010113          	addi	sp,sp,-16
    80003f90:	00113423          	sd	ra,8(sp)
    80003f94:	00813023          	sd	s0,0(sp)
    80003f98:	01010413          	addi	s0,sp,16
    80003f9c:	00008797          	auipc	a5,0x8
    80003fa0:	85478793          	addi	a5,a5,-1964 # 8000b7f0 <_ZTV7WorkerB+0x10>
    80003fa4:	00f53023          	sd	a5,0(a0)
    80003fa8:	ffffe097          	auipc	ra,0xffffe
    80003fac:	9ec080e7          	jalr	-1556(ra) # 80001994 <_ZN6ThreadD1Ev>
    80003fb0:	00813083          	ld	ra,8(sp)
    80003fb4:	00013403          	ld	s0,0(sp)
    80003fb8:	01010113          	addi	sp,sp,16
    80003fbc:	00008067          	ret

0000000080003fc0 <_ZN7WorkerBD0Ev>:
    80003fc0:	fe010113          	addi	sp,sp,-32
    80003fc4:	00113c23          	sd	ra,24(sp)
    80003fc8:	00813823          	sd	s0,16(sp)
    80003fcc:	00913423          	sd	s1,8(sp)
    80003fd0:	02010413          	addi	s0,sp,32
    80003fd4:	00050493          	mv	s1,a0
    80003fd8:	00008797          	auipc	a5,0x8
    80003fdc:	81878793          	addi	a5,a5,-2024 # 8000b7f0 <_ZTV7WorkerB+0x10>
    80003fe0:	00f53023          	sd	a5,0(a0)
    80003fe4:	ffffe097          	auipc	ra,0xffffe
    80003fe8:	9b0080e7          	jalr	-1616(ra) # 80001994 <_ZN6ThreadD1Ev>
    80003fec:	00048513          	mv	a0,s1
    80003ff0:	ffffe097          	auipc	ra,0xffffe
    80003ff4:	a38080e7          	jalr	-1480(ra) # 80001a28 <_ZdlPv>
    80003ff8:	01813083          	ld	ra,24(sp)
    80003ffc:	01013403          	ld	s0,16(sp)
    80004000:	00813483          	ld	s1,8(sp)
    80004004:	02010113          	addi	sp,sp,32
    80004008:	00008067          	ret

000000008000400c <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    8000400c:	ff010113          	addi	sp,sp,-16
    80004010:	00113423          	sd	ra,8(sp)
    80004014:	00813023          	sd	s0,0(sp)
    80004018:	01010413          	addi	s0,sp,16
    8000401c:	00007797          	auipc	a5,0x7
    80004020:	7fc78793          	addi	a5,a5,2044 # 8000b818 <_ZTV7WorkerC+0x10>
    80004024:	00f53023          	sd	a5,0(a0)
    80004028:	ffffe097          	auipc	ra,0xffffe
    8000402c:	96c080e7          	jalr	-1684(ra) # 80001994 <_ZN6ThreadD1Ev>
    80004030:	00813083          	ld	ra,8(sp)
    80004034:	00013403          	ld	s0,0(sp)
    80004038:	01010113          	addi	sp,sp,16
    8000403c:	00008067          	ret

0000000080004040 <_ZN7WorkerCD0Ev>:
    80004040:	fe010113          	addi	sp,sp,-32
    80004044:	00113c23          	sd	ra,24(sp)
    80004048:	00813823          	sd	s0,16(sp)
    8000404c:	00913423          	sd	s1,8(sp)
    80004050:	02010413          	addi	s0,sp,32
    80004054:	00050493          	mv	s1,a0
    80004058:	00007797          	auipc	a5,0x7
    8000405c:	7c078793          	addi	a5,a5,1984 # 8000b818 <_ZTV7WorkerC+0x10>
    80004060:	00f53023          	sd	a5,0(a0)
    80004064:	ffffe097          	auipc	ra,0xffffe
    80004068:	930080e7          	jalr	-1744(ra) # 80001994 <_ZN6ThreadD1Ev>
    8000406c:	00048513          	mv	a0,s1
    80004070:	ffffe097          	auipc	ra,0xffffe
    80004074:	9b8080e7          	jalr	-1608(ra) # 80001a28 <_ZdlPv>
    80004078:	01813083          	ld	ra,24(sp)
    8000407c:	01013403          	ld	s0,16(sp)
    80004080:	00813483          	ld	s1,8(sp)
    80004084:	02010113          	addi	sp,sp,32
    80004088:	00008067          	ret

000000008000408c <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    8000408c:	ff010113          	addi	sp,sp,-16
    80004090:	00113423          	sd	ra,8(sp)
    80004094:	00813023          	sd	s0,0(sp)
    80004098:	01010413          	addi	s0,sp,16
    8000409c:	00007797          	auipc	a5,0x7
    800040a0:	7a478793          	addi	a5,a5,1956 # 8000b840 <_ZTV7WorkerD+0x10>
    800040a4:	00f53023          	sd	a5,0(a0)
    800040a8:	ffffe097          	auipc	ra,0xffffe
    800040ac:	8ec080e7          	jalr	-1812(ra) # 80001994 <_ZN6ThreadD1Ev>
    800040b0:	00813083          	ld	ra,8(sp)
    800040b4:	00013403          	ld	s0,0(sp)
    800040b8:	01010113          	addi	sp,sp,16
    800040bc:	00008067          	ret

00000000800040c0 <_ZN7WorkerDD0Ev>:
    800040c0:	fe010113          	addi	sp,sp,-32
    800040c4:	00113c23          	sd	ra,24(sp)
    800040c8:	00813823          	sd	s0,16(sp)
    800040cc:	00913423          	sd	s1,8(sp)
    800040d0:	02010413          	addi	s0,sp,32
    800040d4:	00050493          	mv	s1,a0
    800040d8:	00007797          	auipc	a5,0x7
    800040dc:	76878793          	addi	a5,a5,1896 # 8000b840 <_ZTV7WorkerD+0x10>
    800040e0:	00f53023          	sd	a5,0(a0)
    800040e4:	ffffe097          	auipc	ra,0xffffe
    800040e8:	8b0080e7          	jalr	-1872(ra) # 80001994 <_ZN6ThreadD1Ev>
    800040ec:	00048513          	mv	a0,s1
    800040f0:	ffffe097          	auipc	ra,0xffffe
    800040f4:	938080e7          	jalr	-1736(ra) # 80001a28 <_ZdlPv>
    800040f8:	01813083          	ld	ra,24(sp)
    800040fc:	01013403          	ld	s0,16(sp)
    80004100:	00813483          	ld	s1,8(sp)
    80004104:	02010113          	addi	sp,sp,32
    80004108:	00008067          	ret

000000008000410c <_ZN7WorkerA3runEv>:
    void run() override {
    8000410c:	ff010113          	addi	sp,sp,-16
    80004110:	00113423          	sd	ra,8(sp)
    80004114:	00813023          	sd	s0,0(sp)
    80004118:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    8000411c:	00000593          	li	a1,0
    80004120:	fffff097          	auipc	ra,0xfffff
    80004124:	774080e7          	jalr	1908(ra) # 80003894 <_ZN7WorkerA11workerBodyAEPv>
    }
    80004128:	00813083          	ld	ra,8(sp)
    8000412c:	00013403          	ld	s0,0(sp)
    80004130:	01010113          	addi	sp,sp,16
    80004134:	00008067          	ret

0000000080004138 <_ZN7WorkerB3runEv>:
    void run() override {
    80004138:	ff010113          	addi	sp,sp,-16
    8000413c:	00113423          	sd	ra,8(sp)
    80004140:	00813023          	sd	s0,0(sp)
    80004144:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004148:	00000593          	li	a1,0
    8000414c:	00000097          	auipc	ra,0x0
    80004150:	814080e7          	jalr	-2028(ra) # 80003960 <_ZN7WorkerB11workerBodyBEPv>
    }
    80004154:	00813083          	ld	ra,8(sp)
    80004158:	00013403          	ld	s0,0(sp)
    8000415c:	01010113          	addi	sp,sp,16
    80004160:	00008067          	ret

0000000080004164 <_ZN7WorkerC3runEv>:
    void run() override {
    80004164:	ff010113          	addi	sp,sp,-16
    80004168:	00113423          	sd	ra,8(sp)
    8000416c:	00813023          	sd	s0,0(sp)
    80004170:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004174:	00000593          	li	a1,0
    80004178:	00000097          	auipc	ra,0x0
    8000417c:	8bc080e7          	jalr	-1860(ra) # 80003a34 <_ZN7WorkerC11workerBodyCEPv>
    }
    80004180:	00813083          	ld	ra,8(sp)
    80004184:	00013403          	ld	s0,0(sp)
    80004188:	01010113          	addi	sp,sp,16
    8000418c:	00008067          	ret

0000000080004190 <_ZN7WorkerD3runEv>:
    void run() override {
    80004190:	ff010113          	addi	sp,sp,-16
    80004194:	00113423          	sd	ra,8(sp)
    80004198:	00813023          	sd	s0,0(sp)
    8000419c:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800041a0:	00000593          	li	a1,0
    800041a4:	00000097          	auipc	ra,0x0
    800041a8:	a10080e7          	jalr	-1520(ra) # 80003bb4 <_ZN7WorkerD11workerBodyDEPv>
    }
    800041ac:	00813083          	ld	ra,8(sp)
    800041b0:	00013403          	ld	s0,0(sp)
    800041b4:	01010113          	addi	sp,sp,16
    800041b8:	00008067          	ret

00000000800041bc <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    800041bc:	f8010113          	addi	sp,sp,-128
    800041c0:	06113c23          	sd	ra,120(sp)
    800041c4:	06813823          	sd	s0,112(sp)
    800041c8:	06913423          	sd	s1,104(sp)
    800041cc:	07213023          	sd	s2,96(sp)
    800041d0:	05313c23          	sd	s3,88(sp)
    800041d4:	05413823          	sd	s4,80(sp)
    800041d8:	05513423          	sd	s5,72(sp)
    800041dc:	05613023          	sd	s6,64(sp)
    800041e0:	03713c23          	sd	s7,56(sp)
    800041e4:	03813823          	sd	s8,48(sp)
    800041e8:	03913423          	sd	s9,40(sp)
    800041ec:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    800041f0:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    800041f4:	00005517          	auipc	a0,0x5
    800041f8:	f3c50513          	addi	a0,a0,-196 # 80009130 <CONSOLE_STATUS+0x120>
    800041fc:	00001097          	auipc	ra,0x1
    80004200:	5bc080e7          	jalr	1468(ra) # 800057b8 <_Z11printStringPKc>
    getString(input, 30);
    80004204:	01e00593          	li	a1,30
    80004208:	f8040493          	addi	s1,s0,-128
    8000420c:	00048513          	mv	a0,s1
    80004210:	00001097          	auipc	ra,0x1
    80004214:	630080e7          	jalr	1584(ra) # 80005840 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004218:	00048513          	mv	a0,s1
    8000421c:	00001097          	auipc	ra,0x1
    80004220:	6fc080e7          	jalr	1788(ra) # 80005918 <_Z11stringToIntPKc>
    80004224:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80004228:	00005517          	auipc	a0,0x5
    8000422c:	f2850513          	addi	a0,a0,-216 # 80009150 <CONSOLE_STATUS+0x140>
    80004230:	00001097          	auipc	ra,0x1
    80004234:	588080e7          	jalr	1416(ra) # 800057b8 <_Z11printStringPKc>
    getString(input, 30);
    80004238:	01e00593          	li	a1,30
    8000423c:	00048513          	mv	a0,s1
    80004240:	00001097          	auipc	ra,0x1
    80004244:	600080e7          	jalr	1536(ra) # 80005840 <_Z9getStringPci>
    n = stringToInt(input);
    80004248:	00048513          	mv	a0,s1
    8000424c:	00001097          	auipc	ra,0x1
    80004250:	6cc080e7          	jalr	1740(ra) # 80005918 <_Z11stringToIntPKc>
    80004254:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80004258:	00005517          	auipc	a0,0x5
    8000425c:	f1850513          	addi	a0,a0,-232 # 80009170 <CONSOLE_STATUS+0x160>
    80004260:	00001097          	auipc	ra,0x1
    80004264:	558080e7          	jalr	1368(ra) # 800057b8 <_Z11printStringPKc>
    printInt(threadNum);
    80004268:	00000613          	li	a2,0
    8000426c:	00a00593          	li	a1,10
    80004270:	00098513          	mv	a0,s3
    80004274:	00001097          	auipc	ra,0x1
    80004278:	6f4080e7          	jalr	1780(ra) # 80005968 <_Z8printIntiii>
    printString(" i velicina bafera ");
    8000427c:	00005517          	auipc	a0,0x5
    80004280:	f0c50513          	addi	a0,a0,-244 # 80009188 <CONSOLE_STATUS+0x178>
    80004284:	00001097          	auipc	ra,0x1
    80004288:	534080e7          	jalr	1332(ra) # 800057b8 <_Z11printStringPKc>
    printInt(n);
    8000428c:	00000613          	li	a2,0
    80004290:	00a00593          	li	a1,10
    80004294:	00048513          	mv	a0,s1
    80004298:	00001097          	auipc	ra,0x1
    8000429c:	6d0080e7          	jalr	1744(ra) # 80005968 <_Z8printIntiii>
    printString(".\n");
    800042a0:	00005517          	auipc	a0,0x5
    800042a4:	f0050513          	addi	a0,a0,-256 # 800091a0 <CONSOLE_STATUS+0x190>
    800042a8:	00001097          	auipc	ra,0x1
    800042ac:	510080e7          	jalr	1296(ra) # 800057b8 <_Z11printStringPKc>
    if (threadNum > n) {
    800042b0:	0334c463          	blt	s1,s3,800042d8 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    800042b4:	03305c63          	blez	s3,800042ec <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800042b8:	03800513          	li	a0,56
    800042bc:	ffffd097          	auipc	ra,0xffffd
    800042c0:	744080e7          	jalr	1860(ra) # 80001a00 <_Znwm>
    800042c4:	00050a93          	mv	s5,a0
    800042c8:	00048593          	mv	a1,s1
    800042cc:	00001097          	auipc	ra,0x1
    800042d0:	7bc080e7          	jalr	1980(ra) # 80005a88 <_ZN9BufferCPPC1Ei>
    800042d4:	0300006f          	j	80004304 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800042d8:	00005517          	auipc	a0,0x5
    800042dc:	ed050513          	addi	a0,a0,-304 # 800091a8 <CONSOLE_STATUS+0x198>
    800042e0:	00001097          	auipc	ra,0x1
    800042e4:	4d8080e7          	jalr	1240(ra) # 800057b8 <_Z11printStringPKc>
        return;
    800042e8:	0140006f          	j	800042fc <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800042ec:	00005517          	auipc	a0,0x5
    800042f0:	efc50513          	addi	a0,a0,-260 # 800091e8 <CONSOLE_STATUS+0x1d8>
    800042f4:	00001097          	auipc	ra,0x1
    800042f8:	4c4080e7          	jalr	1220(ra) # 800057b8 <_Z11printStringPKc>
        return;
    800042fc:	000c0113          	mv	sp,s8
    80004300:	2140006f          	j	80004514 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80004304:	01000513          	li	a0,16
    80004308:	ffffd097          	auipc	ra,0xffffd
    8000430c:	6f8080e7          	jalr	1784(ra) # 80001a00 <_Znwm>
    80004310:	00050913          	mv	s2,a0
    80004314:	00000593          	li	a1,0
    80004318:	ffffe097          	auipc	ra,0xffffe
    8000431c:	894080e7          	jalr	-1900(ra) # 80001bac <_ZN9SemaphoreC1Ej>
    80004320:	00008797          	auipc	a5,0x8
    80004324:	9f27b023          	sd	s2,-1568(a5) # 8000bd00 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004328:	00399793          	slli	a5,s3,0x3
    8000432c:	00f78793          	addi	a5,a5,15
    80004330:	ff07f793          	andi	a5,a5,-16
    80004334:	40f10133          	sub	sp,sp,a5
    80004338:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    8000433c:	0019871b          	addiw	a4,s3,1
    80004340:	00171793          	slli	a5,a4,0x1
    80004344:	00e787b3          	add	a5,a5,a4
    80004348:	00379793          	slli	a5,a5,0x3
    8000434c:	00f78793          	addi	a5,a5,15
    80004350:	ff07f793          	andi	a5,a5,-16
    80004354:	40f10133          	sub	sp,sp,a5
    80004358:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    8000435c:	00199493          	slli	s1,s3,0x1
    80004360:	013484b3          	add	s1,s1,s3
    80004364:	00349493          	slli	s1,s1,0x3
    80004368:	009b04b3          	add	s1,s6,s1
    8000436c:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004370:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80004374:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004378:	02800513          	li	a0,40
    8000437c:	ffffd097          	auipc	ra,0xffffd
    80004380:	684080e7          	jalr	1668(ra) # 80001a00 <_Znwm>
    80004384:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004388:	ffffd097          	auipc	ra,0xffffd
    8000438c:	7c4080e7          	jalr	1988(ra) # 80001b4c <_ZN6ThreadC1Ev>
    80004390:	00007797          	auipc	a5,0x7
    80004394:	52878793          	addi	a5,a5,1320 # 8000b8b8 <_ZTV8Consumer+0x10>
    80004398:	00fbb023          	sd	a5,0(s7)
    8000439c:	029bb023          	sd	s1,32(s7)
    consumer->start();
    800043a0:	000b8513          	mv	a0,s7
    800043a4:	ffffd097          	auipc	ra,0xffffd
    800043a8:	7d4080e7          	jalr	2004(ra) # 80001b78 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    800043ac:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    800043b0:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    800043b4:	00008797          	auipc	a5,0x8
    800043b8:	94c7b783          	ld	a5,-1716(a5) # 8000bd00 <_ZL10waitForAll>
    800043bc:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800043c0:	02800513          	li	a0,40
    800043c4:	ffffd097          	auipc	ra,0xffffd
    800043c8:	63c080e7          	jalr	1596(ra) # 80001a00 <_Znwm>
    800043cc:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    800043d0:	ffffd097          	auipc	ra,0xffffd
    800043d4:	77c080e7          	jalr	1916(ra) # 80001b4c <_ZN6ThreadC1Ev>
    800043d8:	00007797          	auipc	a5,0x7
    800043dc:	49078793          	addi	a5,a5,1168 # 8000b868 <_ZTV16ProducerKeyborad+0x10>
    800043e0:	00f4b023          	sd	a5,0(s1)
    800043e4:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800043e8:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    800043ec:	00048513          	mv	a0,s1
    800043f0:	ffffd097          	auipc	ra,0xffffd
    800043f4:	788080e7          	jalr	1928(ra) # 80001b78 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800043f8:	00100913          	li	s2,1
    800043fc:	0300006f          	j	8000442c <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004400:	00007797          	auipc	a5,0x7
    80004404:	49078793          	addi	a5,a5,1168 # 8000b890 <_ZTV8Producer+0x10>
    80004408:	00fcb023          	sd	a5,0(s9)
    8000440c:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80004410:	00391793          	slli	a5,s2,0x3
    80004414:	00fa07b3          	add	a5,s4,a5
    80004418:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    8000441c:	000c8513          	mv	a0,s9
    80004420:	ffffd097          	auipc	ra,0xffffd
    80004424:	758080e7          	jalr	1880(ra) # 80001b78 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004428:	0019091b          	addiw	s2,s2,1
    8000442c:	05395263          	bge	s2,s3,80004470 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004430:	00191493          	slli	s1,s2,0x1
    80004434:	012484b3          	add	s1,s1,s2
    80004438:	00349493          	slli	s1,s1,0x3
    8000443c:	009b04b3          	add	s1,s6,s1
    80004440:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004444:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004448:	00008797          	auipc	a5,0x8
    8000444c:	8b87b783          	ld	a5,-1864(a5) # 8000bd00 <_ZL10waitForAll>
    80004450:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004454:	02800513          	li	a0,40
    80004458:	ffffd097          	auipc	ra,0xffffd
    8000445c:	5a8080e7          	jalr	1448(ra) # 80001a00 <_Znwm>
    80004460:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004464:	ffffd097          	auipc	ra,0xffffd
    80004468:	6e8080e7          	jalr	1768(ra) # 80001b4c <_ZN6ThreadC1Ev>
    8000446c:	f95ff06f          	j	80004400 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004470:	ffffd097          	auipc	ra,0xffffd
    80004474:	6b4080e7          	jalr	1716(ra) # 80001b24 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004478:	00000493          	li	s1,0
    8000447c:	0099ce63          	blt	s3,s1,80004498 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004480:	00008517          	auipc	a0,0x8
    80004484:	88053503          	ld	a0,-1920(a0) # 8000bd00 <_ZL10waitForAll>
    80004488:	ffffd097          	auipc	ra,0xffffd
    8000448c:	75c080e7          	jalr	1884(ra) # 80001be4 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004490:	0014849b          	addiw	s1,s1,1
    80004494:	fe9ff06f          	j	8000447c <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004498:	00008517          	auipc	a0,0x8
    8000449c:	86853503          	ld	a0,-1944(a0) # 8000bd00 <_ZL10waitForAll>
    800044a0:	00050863          	beqz	a0,800044b0 <_Z20testConsumerProducerv+0x2f4>
    800044a4:	00053783          	ld	a5,0(a0)
    800044a8:	0087b783          	ld	a5,8(a5)
    800044ac:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    800044b0:	00000493          	li	s1,0
    800044b4:	0080006f          	j	800044bc <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    800044b8:	0014849b          	addiw	s1,s1,1
    800044bc:	0334d263          	bge	s1,s3,800044e0 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    800044c0:	00349793          	slli	a5,s1,0x3
    800044c4:	00fa07b3          	add	a5,s4,a5
    800044c8:	0007b503          	ld	a0,0(a5)
    800044cc:	fe0506e3          	beqz	a0,800044b8 <_Z20testConsumerProducerv+0x2fc>
    800044d0:	00053783          	ld	a5,0(a0)
    800044d4:	0087b783          	ld	a5,8(a5)
    800044d8:	000780e7          	jalr	a5
    800044dc:	fddff06f          	j	800044b8 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    800044e0:	000b8a63          	beqz	s7,800044f4 <_Z20testConsumerProducerv+0x338>
    800044e4:	000bb783          	ld	a5,0(s7)
    800044e8:	0087b783          	ld	a5,8(a5)
    800044ec:	000b8513          	mv	a0,s7
    800044f0:	000780e7          	jalr	a5
    delete buffer;
    800044f4:	000a8e63          	beqz	s5,80004510 <_Z20testConsumerProducerv+0x354>
    800044f8:	000a8513          	mv	a0,s5
    800044fc:	00002097          	auipc	ra,0x2
    80004500:	884080e7          	jalr	-1916(ra) # 80005d80 <_ZN9BufferCPPD1Ev>
    80004504:	000a8513          	mv	a0,s5
    80004508:	ffffd097          	auipc	ra,0xffffd
    8000450c:	520080e7          	jalr	1312(ra) # 80001a28 <_ZdlPv>
    80004510:	000c0113          	mv	sp,s8
}
    80004514:	f8040113          	addi	sp,s0,-128
    80004518:	07813083          	ld	ra,120(sp)
    8000451c:	07013403          	ld	s0,112(sp)
    80004520:	06813483          	ld	s1,104(sp)
    80004524:	06013903          	ld	s2,96(sp)
    80004528:	05813983          	ld	s3,88(sp)
    8000452c:	05013a03          	ld	s4,80(sp)
    80004530:	04813a83          	ld	s5,72(sp)
    80004534:	04013b03          	ld	s6,64(sp)
    80004538:	03813b83          	ld	s7,56(sp)
    8000453c:	03013c03          	ld	s8,48(sp)
    80004540:	02813c83          	ld	s9,40(sp)
    80004544:	08010113          	addi	sp,sp,128
    80004548:	00008067          	ret
    8000454c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004550:	000a8513          	mv	a0,s5
    80004554:	ffffd097          	auipc	ra,0xffffd
    80004558:	4d4080e7          	jalr	1236(ra) # 80001a28 <_ZdlPv>
    8000455c:	00048513          	mv	a0,s1
    80004560:	00009097          	auipc	ra,0x9
    80004564:	898080e7          	jalr	-1896(ra) # 8000cdf8 <_Unwind_Resume>
    80004568:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    8000456c:	00090513          	mv	a0,s2
    80004570:	ffffd097          	auipc	ra,0xffffd
    80004574:	4b8080e7          	jalr	1208(ra) # 80001a28 <_ZdlPv>
    80004578:	00048513          	mv	a0,s1
    8000457c:	00009097          	auipc	ra,0x9
    80004580:	87c080e7          	jalr	-1924(ra) # 8000cdf8 <_Unwind_Resume>
    80004584:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004588:	000b8513          	mv	a0,s7
    8000458c:	ffffd097          	auipc	ra,0xffffd
    80004590:	49c080e7          	jalr	1180(ra) # 80001a28 <_ZdlPv>
    80004594:	00048513          	mv	a0,s1
    80004598:	00009097          	auipc	ra,0x9
    8000459c:	860080e7          	jalr	-1952(ra) # 8000cdf8 <_Unwind_Resume>
    800045a0:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800045a4:	00048513          	mv	a0,s1
    800045a8:	ffffd097          	auipc	ra,0xffffd
    800045ac:	480080e7          	jalr	1152(ra) # 80001a28 <_ZdlPv>
    800045b0:	00090513          	mv	a0,s2
    800045b4:	00009097          	auipc	ra,0x9
    800045b8:	844080e7          	jalr	-1980(ra) # 8000cdf8 <_Unwind_Resume>
    800045bc:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    800045c0:	000c8513          	mv	a0,s9
    800045c4:	ffffd097          	auipc	ra,0xffffd
    800045c8:	464080e7          	jalr	1124(ra) # 80001a28 <_ZdlPv>
    800045cc:	00048513          	mv	a0,s1
    800045d0:	00009097          	auipc	ra,0x9
    800045d4:	828080e7          	jalr	-2008(ra) # 8000cdf8 <_Unwind_Resume>

00000000800045d8 <_ZN8Consumer3runEv>:
    void run() override {
    800045d8:	fd010113          	addi	sp,sp,-48
    800045dc:	02113423          	sd	ra,40(sp)
    800045e0:	02813023          	sd	s0,32(sp)
    800045e4:	00913c23          	sd	s1,24(sp)
    800045e8:	01213823          	sd	s2,16(sp)
    800045ec:	01313423          	sd	s3,8(sp)
    800045f0:	03010413          	addi	s0,sp,48
    800045f4:	00050913          	mv	s2,a0
        int i = 0;
    800045f8:	00000993          	li	s3,0
    800045fc:	0100006f          	j	8000460c <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004600:	00a00513          	li	a0,10
    80004604:	ffffd097          	auipc	ra,0xffffd
    80004608:	6b8080e7          	jalr	1720(ra) # 80001cbc <_ZN7Console4putcEc>
        while (!threadEnd) {
    8000460c:	00007797          	auipc	a5,0x7
    80004610:	6ec7a783          	lw	a5,1772(a5) # 8000bcf8 <_ZL9threadEnd>
    80004614:	04079a63          	bnez	a5,80004668 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004618:	02093783          	ld	a5,32(s2)
    8000461c:	0087b503          	ld	a0,8(a5)
    80004620:	00001097          	auipc	ra,0x1
    80004624:	64c080e7          	jalr	1612(ra) # 80005c6c <_ZN9BufferCPP3getEv>
            i++;
    80004628:	0019849b          	addiw	s1,s3,1
    8000462c:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004630:	0ff57513          	andi	a0,a0,255
    80004634:	ffffd097          	auipc	ra,0xffffd
    80004638:	688080e7          	jalr	1672(ra) # 80001cbc <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    8000463c:	05000793          	li	a5,80
    80004640:	02f4e4bb          	remw	s1,s1,a5
    80004644:	fc0494e3          	bnez	s1,8000460c <_ZN8Consumer3runEv+0x34>
    80004648:	fb9ff06f          	j	80004600 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    8000464c:	02093783          	ld	a5,32(s2)
    80004650:	0087b503          	ld	a0,8(a5)
    80004654:	00001097          	auipc	ra,0x1
    80004658:	618080e7          	jalr	1560(ra) # 80005c6c <_ZN9BufferCPP3getEv>
            Console::putc(key);
    8000465c:	0ff57513          	andi	a0,a0,255
    80004660:	ffffd097          	auipc	ra,0xffffd
    80004664:	65c080e7          	jalr	1628(ra) # 80001cbc <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004668:	02093783          	ld	a5,32(s2)
    8000466c:	0087b503          	ld	a0,8(a5)
    80004670:	00001097          	auipc	ra,0x1
    80004674:	688080e7          	jalr	1672(ra) # 80005cf8 <_ZN9BufferCPP6getCntEv>
    80004678:	fca04ae3          	bgtz	a0,8000464c <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    8000467c:	02093783          	ld	a5,32(s2)
    80004680:	0107b503          	ld	a0,16(a5)
    80004684:	ffffd097          	auipc	ra,0xffffd
    80004688:	58c080e7          	jalr	1420(ra) # 80001c10 <_ZN9Semaphore6signalEv>
    }
    8000468c:	02813083          	ld	ra,40(sp)
    80004690:	02013403          	ld	s0,32(sp)
    80004694:	01813483          	ld	s1,24(sp)
    80004698:	01013903          	ld	s2,16(sp)
    8000469c:	00813983          	ld	s3,8(sp)
    800046a0:	03010113          	addi	sp,sp,48
    800046a4:	00008067          	ret

00000000800046a8 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    800046a8:	ff010113          	addi	sp,sp,-16
    800046ac:	00113423          	sd	ra,8(sp)
    800046b0:	00813023          	sd	s0,0(sp)
    800046b4:	01010413          	addi	s0,sp,16
    800046b8:	00007797          	auipc	a5,0x7
    800046bc:	20078793          	addi	a5,a5,512 # 8000b8b8 <_ZTV8Consumer+0x10>
    800046c0:	00f53023          	sd	a5,0(a0)
    800046c4:	ffffd097          	auipc	ra,0xffffd
    800046c8:	2d0080e7          	jalr	720(ra) # 80001994 <_ZN6ThreadD1Ev>
    800046cc:	00813083          	ld	ra,8(sp)
    800046d0:	00013403          	ld	s0,0(sp)
    800046d4:	01010113          	addi	sp,sp,16
    800046d8:	00008067          	ret

00000000800046dc <_ZN8ConsumerD0Ev>:
    800046dc:	fe010113          	addi	sp,sp,-32
    800046e0:	00113c23          	sd	ra,24(sp)
    800046e4:	00813823          	sd	s0,16(sp)
    800046e8:	00913423          	sd	s1,8(sp)
    800046ec:	02010413          	addi	s0,sp,32
    800046f0:	00050493          	mv	s1,a0
    800046f4:	00007797          	auipc	a5,0x7
    800046f8:	1c478793          	addi	a5,a5,452 # 8000b8b8 <_ZTV8Consumer+0x10>
    800046fc:	00f53023          	sd	a5,0(a0)
    80004700:	ffffd097          	auipc	ra,0xffffd
    80004704:	294080e7          	jalr	660(ra) # 80001994 <_ZN6ThreadD1Ev>
    80004708:	00048513          	mv	a0,s1
    8000470c:	ffffd097          	auipc	ra,0xffffd
    80004710:	31c080e7          	jalr	796(ra) # 80001a28 <_ZdlPv>
    80004714:	01813083          	ld	ra,24(sp)
    80004718:	01013403          	ld	s0,16(sp)
    8000471c:	00813483          	ld	s1,8(sp)
    80004720:	02010113          	addi	sp,sp,32
    80004724:	00008067          	ret

0000000080004728 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004728:	ff010113          	addi	sp,sp,-16
    8000472c:	00113423          	sd	ra,8(sp)
    80004730:	00813023          	sd	s0,0(sp)
    80004734:	01010413          	addi	s0,sp,16
    80004738:	00007797          	auipc	a5,0x7
    8000473c:	13078793          	addi	a5,a5,304 # 8000b868 <_ZTV16ProducerKeyborad+0x10>
    80004740:	00f53023          	sd	a5,0(a0)
    80004744:	ffffd097          	auipc	ra,0xffffd
    80004748:	250080e7          	jalr	592(ra) # 80001994 <_ZN6ThreadD1Ev>
    8000474c:	00813083          	ld	ra,8(sp)
    80004750:	00013403          	ld	s0,0(sp)
    80004754:	01010113          	addi	sp,sp,16
    80004758:	00008067          	ret

000000008000475c <_ZN16ProducerKeyboradD0Ev>:
    8000475c:	fe010113          	addi	sp,sp,-32
    80004760:	00113c23          	sd	ra,24(sp)
    80004764:	00813823          	sd	s0,16(sp)
    80004768:	00913423          	sd	s1,8(sp)
    8000476c:	02010413          	addi	s0,sp,32
    80004770:	00050493          	mv	s1,a0
    80004774:	00007797          	auipc	a5,0x7
    80004778:	0f478793          	addi	a5,a5,244 # 8000b868 <_ZTV16ProducerKeyborad+0x10>
    8000477c:	00f53023          	sd	a5,0(a0)
    80004780:	ffffd097          	auipc	ra,0xffffd
    80004784:	214080e7          	jalr	532(ra) # 80001994 <_ZN6ThreadD1Ev>
    80004788:	00048513          	mv	a0,s1
    8000478c:	ffffd097          	auipc	ra,0xffffd
    80004790:	29c080e7          	jalr	668(ra) # 80001a28 <_ZdlPv>
    80004794:	01813083          	ld	ra,24(sp)
    80004798:	01013403          	ld	s0,16(sp)
    8000479c:	00813483          	ld	s1,8(sp)
    800047a0:	02010113          	addi	sp,sp,32
    800047a4:	00008067          	ret

00000000800047a8 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    800047a8:	ff010113          	addi	sp,sp,-16
    800047ac:	00113423          	sd	ra,8(sp)
    800047b0:	00813023          	sd	s0,0(sp)
    800047b4:	01010413          	addi	s0,sp,16
    800047b8:	00007797          	auipc	a5,0x7
    800047bc:	0d878793          	addi	a5,a5,216 # 8000b890 <_ZTV8Producer+0x10>
    800047c0:	00f53023          	sd	a5,0(a0)
    800047c4:	ffffd097          	auipc	ra,0xffffd
    800047c8:	1d0080e7          	jalr	464(ra) # 80001994 <_ZN6ThreadD1Ev>
    800047cc:	00813083          	ld	ra,8(sp)
    800047d0:	00013403          	ld	s0,0(sp)
    800047d4:	01010113          	addi	sp,sp,16
    800047d8:	00008067          	ret

00000000800047dc <_ZN8ProducerD0Ev>:
    800047dc:	fe010113          	addi	sp,sp,-32
    800047e0:	00113c23          	sd	ra,24(sp)
    800047e4:	00813823          	sd	s0,16(sp)
    800047e8:	00913423          	sd	s1,8(sp)
    800047ec:	02010413          	addi	s0,sp,32
    800047f0:	00050493          	mv	s1,a0
    800047f4:	00007797          	auipc	a5,0x7
    800047f8:	09c78793          	addi	a5,a5,156 # 8000b890 <_ZTV8Producer+0x10>
    800047fc:	00f53023          	sd	a5,0(a0)
    80004800:	ffffd097          	auipc	ra,0xffffd
    80004804:	194080e7          	jalr	404(ra) # 80001994 <_ZN6ThreadD1Ev>
    80004808:	00048513          	mv	a0,s1
    8000480c:	ffffd097          	auipc	ra,0xffffd
    80004810:	21c080e7          	jalr	540(ra) # 80001a28 <_ZdlPv>
    80004814:	01813083          	ld	ra,24(sp)
    80004818:	01013403          	ld	s0,16(sp)
    8000481c:	00813483          	ld	s1,8(sp)
    80004820:	02010113          	addi	sp,sp,32
    80004824:	00008067          	ret

0000000080004828 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004828:	fe010113          	addi	sp,sp,-32
    8000482c:	00113c23          	sd	ra,24(sp)
    80004830:	00813823          	sd	s0,16(sp)
    80004834:	00913423          	sd	s1,8(sp)
    80004838:	02010413          	addi	s0,sp,32
    8000483c:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004840:	ffffd097          	auipc	ra,0xffffd
    80004844:	b58080e7          	jalr	-1192(ra) # 80001398 <_Z4getcv>
    80004848:	0005059b          	sext.w	a1,a0
    8000484c:	01b00793          	li	a5,27
    80004850:	00f58c63          	beq	a1,a5,80004868 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004854:	0204b783          	ld	a5,32(s1)
    80004858:	0087b503          	ld	a0,8(a5)
    8000485c:	00001097          	auipc	ra,0x1
    80004860:	380080e7          	jalr	896(ra) # 80005bdc <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004864:	fddff06f          	j	80004840 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004868:	00100793          	li	a5,1
    8000486c:	00007717          	auipc	a4,0x7
    80004870:	48f72623          	sw	a5,1164(a4) # 8000bcf8 <_ZL9threadEnd>
        td->buffer->put('!');
    80004874:	0204b783          	ld	a5,32(s1)
    80004878:	02100593          	li	a1,33
    8000487c:	0087b503          	ld	a0,8(a5)
    80004880:	00001097          	auipc	ra,0x1
    80004884:	35c080e7          	jalr	860(ra) # 80005bdc <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004888:	0204b783          	ld	a5,32(s1)
    8000488c:	0107b503          	ld	a0,16(a5)
    80004890:	ffffd097          	auipc	ra,0xffffd
    80004894:	380080e7          	jalr	896(ra) # 80001c10 <_ZN9Semaphore6signalEv>
    }
    80004898:	01813083          	ld	ra,24(sp)
    8000489c:	01013403          	ld	s0,16(sp)
    800048a0:	00813483          	ld	s1,8(sp)
    800048a4:	02010113          	addi	sp,sp,32
    800048a8:	00008067          	ret

00000000800048ac <_ZN8Producer3runEv>:
    void run() override {
    800048ac:	fe010113          	addi	sp,sp,-32
    800048b0:	00113c23          	sd	ra,24(sp)
    800048b4:	00813823          	sd	s0,16(sp)
    800048b8:	00913423          	sd	s1,8(sp)
    800048bc:	01213023          	sd	s2,0(sp)
    800048c0:	02010413          	addi	s0,sp,32
    800048c4:	00050493          	mv	s1,a0
        int i = 0;
    800048c8:	00000913          	li	s2,0
        while (!threadEnd) {
    800048cc:	00007797          	auipc	a5,0x7
    800048d0:	42c7a783          	lw	a5,1068(a5) # 8000bcf8 <_ZL9threadEnd>
    800048d4:	04079263          	bnez	a5,80004918 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    800048d8:	0204b783          	ld	a5,32(s1)
    800048dc:	0007a583          	lw	a1,0(a5)
    800048e0:	0305859b          	addiw	a1,a1,48
    800048e4:	0087b503          	ld	a0,8(a5)
    800048e8:	00001097          	auipc	ra,0x1
    800048ec:	2f4080e7          	jalr	756(ra) # 80005bdc <_ZN9BufferCPP3putEi>
            i++;
    800048f0:	0019071b          	addiw	a4,s2,1
    800048f4:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    800048f8:	0204b783          	ld	a5,32(s1)
    800048fc:	0007a783          	lw	a5,0(a5)
    80004900:	00e787bb          	addw	a5,a5,a4
    80004904:	00500513          	li	a0,5
    80004908:	02a7e53b          	remw	a0,a5,a0
    8000490c:	ffffd097          	auipc	ra,0xffffd
    80004910:	1f0080e7          	jalr	496(ra) # 80001afc <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004914:	fb9ff06f          	j	800048cc <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004918:	0204b783          	ld	a5,32(s1)
    8000491c:	0107b503          	ld	a0,16(a5)
    80004920:	ffffd097          	auipc	ra,0xffffd
    80004924:	2f0080e7          	jalr	752(ra) # 80001c10 <_ZN9Semaphore6signalEv>
    }
    80004928:	01813083          	ld	ra,24(sp)
    8000492c:	01013403          	ld	s0,16(sp)
    80004930:	00813483          	ld	s1,8(sp)
    80004934:	00013903          	ld	s2,0(sp)
    80004938:	02010113          	addi	sp,sp,32
    8000493c:	00008067          	ret

0000000080004940 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004940:	fe010113          	addi	sp,sp,-32
    80004944:	00113c23          	sd	ra,24(sp)
    80004948:	00813823          	sd	s0,16(sp)
    8000494c:	00913423          	sd	s1,8(sp)
    80004950:	01213023          	sd	s2,0(sp)
    80004954:	02010413          	addi	s0,sp,32
    80004958:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000495c:	00100793          	li	a5,1
    80004960:	02a7f863          	bgeu	a5,a0,80004990 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004964:	00a00793          	li	a5,10
    80004968:	02f577b3          	remu	a5,a0,a5
    8000496c:	02078e63          	beqz	a5,800049a8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004970:	fff48513          	addi	a0,s1,-1
    80004974:	00000097          	auipc	ra,0x0
    80004978:	fcc080e7          	jalr	-52(ra) # 80004940 <_ZL9fibonaccim>
    8000497c:	00050913          	mv	s2,a0
    80004980:	ffe48513          	addi	a0,s1,-2
    80004984:	00000097          	auipc	ra,0x0
    80004988:	fbc080e7          	jalr	-68(ra) # 80004940 <_ZL9fibonaccim>
    8000498c:	00a90533          	add	a0,s2,a0
}
    80004990:	01813083          	ld	ra,24(sp)
    80004994:	01013403          	ld	s0,16(sp)
    80004998:	00813483          	ld	s1,8(sp)
    8000499c:	00013903          	ld	s2,0(sp)
    800049a0:	02010113          	addi	sp,sp,32
    800049a4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800049a8:	ffffd097          	auipc	ra,0xffffd
    800049ac:	878080e7          	jalr	-1928(ra) # 80001220 <_Z15thread_dispatchv>
    800049b0:	fc1ff06f          	j	80004970 <_ZL9fibonaccim+0x30>

00000000800049b4 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800049b4:	fe010113          	addi	sp,sp,-32
    800049b8:	00113c23          	sd	ra,24(sp)
    800049bc:	00813823          	sd	s0,16(sp)
    800049c0:	00913423          	sd	s1,8(sp)
    800049c4:	01213023          	sd	s2,0(sp)
    800049c8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800049cc:	00a00493          	li	s1,10
    800049d0:	0400006f          	j	80004a10 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800049d4:	00005517          	auipc	a0,0x5
    800049d8:	8a450513          	addi	a0,a0,-1884 # 80009278 <CONSOLE_STATUS+0x268>
    800049dc:	00001097          	auipc	ra,0x1
    800049e0:	ddc080e7          	jalr	-548(ra) # 800057b8 <_Z11printStringPKc>
    800049e4:	00000613          	li	a2,0
    800049e8:	00a00593          	li	a1,10
    800049ec:	00048513          	mv	a0,s1
    800049f0:	00001097          	auipc	ra,0x1
    800049f4:	f78080e7          	jalr	-136(ra) # 80005968 <_Z8printIntiii>
    800049f8:	00005517          	auipc	a0,0x5
    800049fc:	a7050513          	addi	a0,a0,-1424 # 80009468 <CONSOLE_STATUS+0x458>
    80004a00:	00001097          	auipc	ra,0x1
    80004a04:	db8080e7          	jalr	-584(ra) # 800057b8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004a08:	0014849b          	addiw	s1,s1,1
    80004a0c:	0ff4f493          	andi	s1,s1,255
    80004a10:	00c00793          	li	a5,12
    80004a14:	fc97f0e3          	bgeu	a5,s1,800049d4 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004a18:	00005517          	auipc	a0,0x5
    80004a1c:	86850513          	addi	a0,a0,-1944 # 80009280 <CONSOLE_STATUS+0x270>
    80004a20:	00001097          	auipc	ra,0x1
    80004a24:	d98080e7          	jalr	-616(ra) # 800057b8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004a28:	00500313          	li	t1,5
    thread_dispatch();
    80004a2c:	ffffc097          	auipc	ra,0xffffc
    80004a30:	7f4080e7          	jalr	2036(ra) # 80001220 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004a34:	01000513          	li	a0,16
    80004a38:	00000097          	auipc	ra,0x0
    80004a3c:	f08080e7          	jalr	-248(ra) # 80004940 <_ZL9fibonaccim>
    80004a40:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004a44:	00005517          	auipc	a0,0x5
    80004a48:	84c50513          	addi	a0,a0,-1972 # 80009290 <CONSOLE_STATUS+0x280>
    80004a4c:	00001097          	auipc	ra,0x1
    80004a50:	d6c080e7          	jalr	-660(ra) # 800057b8 <_Z11printStringPKc>
    80004a54:	00000613          	li	a2,0
    80004a58:	00a00593          	li	a1,10
    80004a5c:	0009051b          	sext.w	a0,s2
    80004a60:	00001097          	auipc	ra,0x1
    80004a64:	f08080e7          	jalr	-248(ra) # 80005968 <_Z8printIntiii>
    80004a68:	00005517          	auipc	a0,0x5
    80004a6c:	a0050513          	addi	a0,a0,-1536 # 80009468 <CONSOLE_STATUS+0x458>
    80004a70:	00001097          	auipc	ra,0x1
    80004a74:	d48080e7          	jalr	-696(ra) # 800057b8 <_Z11printStringPKc>
    80004a78:	0400006f          	j	80004ab8 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004a7c:	00004517          	auipc	a0,0x4
    80004a80:	7fc50513          	addi	a0,a0,2044 # 80009278 <CONSOLE_STATUS+0x268>
    80004a84:	00001097          	auipc	ra,0x1
    80004a88:	d34080e7          	jalr	-716(ra) # 800057b8 <_Z11printStringPKc>
    80004a8c:	00000613          	li	a2,0
    80004a90:	00a00593          	li	a1,10
    80004a94:	00048513          	mv	a0,s1
    80004a98:	00001097          	auipc	ra,0x1
    80004a9c:	ed0080e7          	jalr	-304(ra) # 80005968 <_Z8printIntiii>
    80004aa0:	00005517          	auipc	a0,0x5
    80004aa4:	9c850513          	addi	a0,a0,-1592 # 80009468 <CONSOLE_STATUS+0x458>
    80004aa8:	00001097          	auipc	ra,0x1
    80004aac:	d10080e7          	jalr	-752(ra) # 800057b8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004ab0:	0014849b          	addiw	s1,s1,1
    80004ab4:	0ff4f493          	andi	s1,s1,255
    80004ab8:	00f00793          	li	a5,15
    80004abc:	fc97f0e3          	bgeu	a5,s1,80004a7c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004ac0:	00004517          	auipc	a0,0x4
    80004ac4:	7e050513          	addi	a0,a0,2016 # 800092a0 <CONSOLE_STATUS+0x290>
    80004ac8:	00001097          	auipc	ra,0x1
    80004acc:	cf0080e7          	jalr	-784(ra) # 800057b8 <_Z11printStringPKc>
    finishedD = true;
    80004ad0:	00100793          	li	a5,1
    80004ad4:	00007717          	auipc	a4,0x7
    80004ad8:	22f70a23          	sb	a5,564(a4) # 8000bd08 <_ZL9finishedD>
    thread_dispatch();
    80004adc:	ffffc097          	auipc	ra,0xffffc
    80004ae0:	744080e7          	jalr	1860(ra) # 80001220 <_Z15thread_dispatchv>
}
    80004ae4:	01813083          	ld	ra,24(sp)
    80004ae8:	01013403          	ld	s0,16(sp)
    80004aec:	00813483          	ld	s1,8(sp)
    80004af0:	00013903          	ld	s2,0(sp)
    80004af4:	02010113          	addi	sp,sp,32
    80004af8:	00008067          	ret

0000000080004afc <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004afc:	fe010113          	addi	sp,sp,-32
    80004b00:	00113c23          	sd	ra,24(sp)
    80004b04:	00813823          	sd	s0,16(sp)
    80004b08:	00913423          	sd	s1,8(sp)
    80004b0c:	01213023          	sd	s2,0(sp)
    80004b10:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004b14:	00000493          	li	s1,0
    80004b18:	0400006f          	j	80004b58 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004b1c:	00004517          	auipc	a0,0x4
    80004b20:	72c50513          	addi	a0,a0,1836 # 80009248 <CONSOLE_STATUS+0x238>
    80004b24:	00001097          	auipc	ra,0x1
    80004b28:	c94080e7          	jalr	-876(ra) # 800057b8 <_Z11printStringPKc>
    80004b2c:	00000613          	li	a2,0
    80004b30:	00a00593          	li	a1,10
    80004b34:	00048513          	mv	a0,s1
    80004b38:	00001097          	auipc	ra,0x1
    80004b3c:	e30080e7          	jalr	-464(ra) # 80005968 <_Z8printIntiii>
    80004b40:	00005517          	auipc	a0,0x5
    80004b44:	92850513          	addi	a0,a0,-1752 # 80009468 <CONSOLE_STATUS+0x458>
    80004b48:	00001097          	auipc	ra,0x1
    80004b4c:	c70080e7          	jalr	-912(ra) # 800057b8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004b50:	0014849b          	addiw	s1,s1,1
    80004b54:	0ff4f493          	andi	s1,s1,255
    80004b58:	00200793          	li	a5,2
    80004b5c:	fc97f0e3          	bgeu	a5,s1,80004b1c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004b60:	00004517          	auipc	a0,0x4
    80004b64:	6f050513          	addi	a0,a0,1776 # 80009250 <CONSOLE_STATUS+0x240>
    80004b68:	00001097          	auipc	ra,0x1
    80004b6c:	c50080e7          	jalr	-944(ra) # 800057b8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004b70:	00700313          	li	t1,7
    thread_dispatch();
    80004b74:	ffffc097          	auipc	ra,0xffffc
    80004b78:	6ac080e7          	jalr	1708(ra) # 80001220 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004b7c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004b80:	00004517          	auipc	a0,0x4
    80004b84:	6e050513          	addi	a0,a0,1760 # 80009260 <CONSOLE_STATUS+0x250>
    80004b88:	00001097          	auipc	ra,0x1
    80004b8c:	c30080e7          	jalr	-976(ra) # 800057b8 <_Z11printStringPKc>
    80004b90:	00000613          	li	a2,0
    80004b94:	00a00593          	li	a1,10
    80004b98:	0009051b          	sext.w	a0,s2
    80004b9c:	00001097          	auipc	ra,0x1
    80004ba0:	dcc080e7          	jalr	-564(ra) # 80005968 <_Z8printIntiii>
    80004ba4:	00005517          	auipc	a0,0x5
    80004ba8:	8c450513          	addi	a0,a0,-1852 # 80009468 <CONSOLE_STATUS+0x458>
    80004bac:	00001097          	auipc	ra,0x1
    80004bb0:	c0c080e7          	jalr	-1012(ra) # 800057b8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004bb4:	00c00513          	li	a0,12
    80004bb8:	00000097          	auipc	ra,0x0
    80004bbc:	d88080e7          	jalr	-632(ra) # 80004940 <_ZL9fibonaccim>
    80004bc0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004bc4:	00004517          	auipc	a0,0x4
    80004bc8:	6a450513          	addi	a0,a0,1700 # 80009268 <CONSOLE_STATUS+0x258>
    80004bcc:	00001097          	auipc	ra,0x1
    80004bd0:	bec080e7          	jalr	-1044(ra) # 800057b8 <_Z11printStringPKc>
    80004bd4:	00000613          	li	a2,0
    80004bd8:	00a00593          	li	a1,10
    80004bdc:	0009051b          	sext.w	a0,s2
    80004be0:	00001097          	auipc	ra,0x1
    80004be4:	d88080e7          	jalr	-632(ra) # 80005968 <_Z8printIntiii>
    80004be8:	00005517          	auipc	a0,0x5
    80004bec:	88050513          	addi	a0,a0,-1920 # 80009468 <CONSOLE_STATUS+0x458>
    80004bf0:	00001097          	auipc	ra,0x1
    80004bf4:	bc8080e7          	jalr	-1080(ra) # 800057b8 <_Z11printStringPKc>
    80004bf8:	0400006f          	j	80004c38 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004bfc:	00004517          	auipc	a0,0x4
    80004c00:	64c50513          	addi	a0,a0,1612 # 80009248 <CONSOLE_STATUS+0x238>
    80004c04:	00001097          	auipc	ra,0x1
    80004c08:	bb4080e7          	jalr	-1100(ra) # 800057b8 <_Z11printStringPKc>
    80004c0c:	00000613          	li	a2,0
    80004c10:	00a00593          	li	a1,10
    80004c14:	00048513          	mv	a0,s1
    80004c18:	00001097          	auipc	ra,0x1
    80004c1c:	d50080e7          	jalr	-688(ra) # 80005968 <_Z8printIntiii>
    80004c20:	00005517          	auipc	a0,0x5
    80004c24:	84850513          	addi	a0,a0,-1976 # 80009468 <CONSOLE_STATUS+0x458>
    80004c28:	00001097          	auipc	ra,0x1
    80004c2c:	b90080e7          	jalr	-1136(ra) # 800057b8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004c30:	0014849b          	addiw	s1,s1,1
    80004c34:	0ff4f493          	andi	s1,s1,255
    80004c38:	00500793          	li	a5,5
    80004c3c:	fc97f0e3          	bgeu	a5,s1,80004bfc <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004c40:	00004517          	auipc	a0,0x4
    80004c44:	5e050513          	addi	a0,a0,1504 # 80009220 <CONSOLE_STATUS+0x210>
    80004c48:	00001097          	auipc	ra,0x1
    80004c4c:	b70080e7          	jalr	-1168(ra) # 800057b8 <_Z11printStringPKc>
    finishedC = true;
    80004c50:	00100793          	li	a5,1
    80004c54:	00007717          	auipc	a4,0x7
    80004c58:	0af70aa3          	sb	a5,181(a4) # 8000bd09 <_ZL9finishedC>
    thread_dispatch();
    80004c5c:	ffffc097          	auipc	ra,0xffffc
    80004c60:	5c4080e7          	jalr	1476(ra) # 80001220 <_Z15thread_dispatchv>
}
    80004c64:	01813083          	ld	ra,24(sp)
    80004c68:	01013403          	ld	s0,16(sp)
    80004c6c:	00813483          	ld	s1,8(sp)
    80004c70:	00013903          	ld	s2,0(sp)
    80004c74:	02010113          	addi	sp,sp,32
    80004c78:	00008067          	ret

0000000080004c7c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004c7c:	fe010113          	addi	sp,sp,-32
    80004c80:	00113c23          	sd	ra,24(sp)
    80004c84:	00813823          	sd	s0,16(sp)
    80004c88:	00913423          	sd	s1,8(sp)
    80004c8c:	01213023          	sd	s2,0(sp)
    80004c90:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004c94:	00000913          	li	s2,0
    80004c98:	0380006f          	j	80004cd0 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004c9c:	ffffc097          	auipc	ra,0xffffc
    80004ca0:	584080e7          	jalr	1412(ra) # 80001220 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004ca4:	00148493          	addi	s1,s1,1
    80004ca8:	000027b7          	lui	a5,0x2
    80004cac:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004cb0:	0097ee63          	bltu	a5,s1,80004ccc <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004cb4:	00000713          	li	a4,0
    80004cb8:	000077b7          	lui	a5,0x7
    80004cbc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004cc0:	fce7eee3          	bltu	a5,a4,80004c9c <_ZL11workerBodyBPv+0x20>
    80004cc4:	00170713          	addi	a4,a4,1
    80004cc8:	ff1ff06f          	j	80004cb8 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004ccc:	00190913          	addi	s2,s2,1
    80004cd0:	00f00793          	li	a5,15
    80004cd4:	0527e063          	bltu	a5,s2,80004d14 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004cd8:	00004517          	auipc	a0,0x4
    80004cdc:	55850513          	addi	a0,a0,1368 # 80009230 <CONSOLE_STATUS+0x220>
    80004ce0:	00001097          	auipc	ra,0x1
    80004ce4:	ad8080e7          	jalr	-1320(ra) # 800057b8 <_Z11printStringPKc>
    80004ce8:	00000613          	li	a2,0
    80004cec:	00a00593          	li	a1,10
    80004cf0:	0009051b          	sext.w	a0,s2
    80004cf4:	00001097          	auipc	ra,0x1
    80004cf8:	c74080e7          	jalr	-908(ra) # 80005968 <_Z8printIntiii>
    80004cfc:	00004517          	auipc	a0,0x4
    80004d00:	76c50513          	addi	a0,a0,1900 # 80009468 <CONSOLE_STATUS+0x458>
    80004d04:	00001097          	auipc	ra,0x1
    80004d08:	ab4080e7          	jalr	-1356(ra) # 800057b8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004d0c:	00000493          	li	s1,0
    80004d10:	f99ff06f          	j	80004ca8 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004d14:	00004517          	auipc	a0,0x4
    80004d18:	52450513          	addi	a0,a0,1316 # 80009238 <CONSOLE_STATUS+0x228>
    80004d1c:	00001097          	auipc	ra,0x1
    80004d20:	a9c080e7          	jalr	-1380(ra) # 800057b8 <_Z11printStringPKc>
    finishedB = true;
    80004d24:	00100793          	li	a5,1
    80004d28:	00007717          	auipc	a4,0x7
    80004d2c:	fef70123          	sb	a5,-30(a4) # 8000bd0a <_ZL9finishedB>
    thread_dispatch();
    80004d30:	ffffc097          	auipc	ra,0xffffc
    80004d34:	4f0080e7          	jalr	1264(ra) # 80001220 <_Z15thread_dispatchv>
}
    80004d38:	01813083          	ld	ra,24(sp)
    80004d3c:	01013403          	ld	s0,16(sp)
    80004d40:	00813483          	ld	s1,8(sp)
    80004d44:	00013903          	ld	s2,0(sp)
    80004d48:	02010113          	addi	sp,sp,32
    80004d4c:	00008067          	ret

0000000080004d50 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004d50:	fe010113          	addi	sp,sp,-32
    80004d54:	00113c23          	sd	ra,24(sp)
    80004d58:	00813823          	sd	s0,16(sp)
    80004d5c:	00913423          	sd	s1,8(sp)
    80004d60:	01213023          	sd	s2,0(sp)
    80004d64:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004d68:	00000913          	li	s2,0
    80004d6c:	0380006f          	j	80004da4 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004d70:	ffffc097          	auipc	ra,0xffffc
    80004d74:	4b0080e7          	jalr	1200(ra) # 80001220 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004d78:	00148493          	addi	s1,s1,1
    80004d7c:	000027b7          	lui	a5,0x2
    80004d80:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004d84:	0097ee63          	bltu	a5,s1,80004da0 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004d88:	00000713          	li	a4,0
    80004d8c:	000077b7          	lui	a5,0x7
    80004d90:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004d94:	fce7eee3          	bltu	a5,a4,80004d70 <_ZL11workerBodyAPv+0x20>
    80004d98:	00170713          	addi	a4,a4,1
    80004d9c:	ff1ff06f          	j	80004d8c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004da0:	00190913          	addi	s2,s2,1
    80004da4:	00900793          	li	a5,9
    80004da8:	0527e063          	bltu	a5,s2,80004de8 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004dac:	00004517          	auipc	a0,0x4
    80004db0:	46c50513          	addi	a0,a0,1132 # 80009218 <CONSOLE_STATUS+0x208>
    80004db4:	00001097          	auipc	ra,0x1
    80004db8:	a04080e7          	jalr	-1532(ra) # 800057b8 <_Z11printStringPKc>
    80004dbc:	00000613          	li	a2,0
    80004dc0:	00a00593          	li	a1,10
    80004dc4:	0009051b          	sext.w	a0,s2
    80004dc8:	00001097          	auipc	ra,0x1
    80004dcc:	ba0080e7          	jalr	-1120(ra) # 80005968 <_Z8printIntiii>
    80004dd0:	00004517          	auipc	a0,0x4
    80004dd4:	69850513          	addi	a0,a0,1688 # 80009468 <CONSOLE_STATUS+0x458>
    80004dd8:	00001097          	auipc	ra,0x1
    80004ddc:	9e0080e7          	jalr	-1568(ra) # 800057b8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004de0:	00000493          	li	s1,0
    80004de4:	f99ff06f          	j	80004d7c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004de8:	00004517          	auipc	a0,0x4
    80004dec:	43850513          	addi	a0,a0,1080 # 80009220 <CONSOLE_STATUS+0x210>
    80004df0:	00001097          	auipc	ra,0x1
    80004df4:	9c8080e7          	jalr	-1592(ra) # 800057b8 <_Z11printStringPKc>
    finishedA = true;
    80004df8:	00100793          	li	a5,1
    80004dfc:	00007717          	auipc	a4,0x7
    80004e00:	f0f707a3          	sb	a5,-241(a4) # 8000bd0b <_ZL9finishedA>
}
    80004e04:	01813083          	ld	ra,24(sp)
    80004e08:	01013403          	ld	s0,16(sp)
    80004e0c:	00813483          	ld	s1,8(sp)
    80004e10:	00013903          	ld	s2,0(sp)
    80004e14:	02010113          	addi	sp,sp,32
    80004e18:	00008067          	ret

0000000080004e1c <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004e1c:	fd010113          	addi	sp,sp,-48
    80004e20:	02113423          	sd	ra,40(sp)
    80004e24:	02813023          	sd	s0,32(sp)
    80004e28:	03010413          	addi	s0,sp,48
    printInt(1024);
    80004e2c:	00000613          	li	a2,0
    80004e30:	00a00593          	li	a1,10
    80004e34:	40000513          	li	a0,1024
    80004e38:	00001097          	auipc	ra,0x1
    80004e3c:	b30080e7          	jalr	-1232(ra) # 80005968 <_Z8printIntiii>
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004e40:	00000613          	li	a2,0
    80004e44:	00000597          	auipc	a1,0x0
    80004e48:	f0c58593          	addi	a1,a1,-244 # 80004d50 <_ZL11workerBodyAPv>
    80004e4c:	fd040513          	addi	a0,s0,-48
    80004e50:	ffffc097          	auipc	ra,0xffffc
    80004e54:	374080e7          	jalr	884(ra) # 800011c4 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80004e58:	00004517          	auipc	a0,0x4
    80004e5c:	45850513          	addi	a0,a0,1112 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80004e60:	00001097          	auipc	ra,0x1
    80004e64:	958080e7          	jalr	-1704(ra) # 800057b8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004e68:	00000613          	li	a2,0
    80004e6c:	00000597          	auipc	a1,0x0
    80004e70:	e1058593          	addi	a1,a1,-496 # 80004c7c <_ZL11workerBodyBPv>
    80004e74:	fd840513          	addi	a0,s0,-40
    80004e78:	ffffc097          	auipc	ra,0xffffc
    80004e7c:	34c080e7          	jalr	844(ra) # 800011c4 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80004e80:	00004517          	auipc	a0,0x4
    80004e84:	44850513          	addi	a0,a0,1096 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80004e88:	00001097          	auipc	ra,0x1
    80004e8c:	930080e7          	jalr	-1744(ra) # 800057b8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004e90:	00000613          	li	a2,0
    80004e94:	00000597          	auipc	a1,0x0
    80004e98:	c6858593          	addi	a1,a1,-920 # 80004afc <_ZL11workerBodyCPv>
    80004e9c:	fe040513          	addi	a0,s0,-32
    80004ea0:	ffffc097          	auipc	ra,0xffffc
    80004ea4:	324080e7          	jalr	804(ra) # 800011c4 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80004ea8:	00004517          	auipc	a0,0x4
    80004eac:	43850513          	addi	a0,a0,1080 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80004eb0:	00001097          	auipc	ra,0x1
    80004eb4:	908080e7          	jalr	-1784(ra) # 800057b8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004eb8:	00000613          	li	a2,0
    80004ebc:	00000597          	auipc	a1,0x0
    80004ec0:	af858593          	addi	a1,a1,-1288 # 800049b4 <_ZL11workerBodyDPv>
    80004ec4:	fe840513          	addi	a0,s0,-24
    80004ec8:	ffffc097          	auipc	ra,0xffffc
    80004ecc:	2fc080e7          	jalr	764(ra) # 800011c4 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80004ed0:	00004517          	auipc	a0,0x4
    80004ed4:	42850513          	addi	a0,a0,1064 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80004ed8:	00001097          	auipc	ra,0x1
    80004edc:	8e0080e7          	jalr	-1824(ra) # 800057b8 <_Z11printStringPKc>
    80004ee0:	00c0006f          	j	80004eec <_Z18Threads_C_API_testv+0xd0>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004ee4:	ffffc097          	auipc	ra,0xffffc
    80004ee8:	33c080e7          	jalr	828(ra) # 80001220 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004eec:	00007797          	auipc	a5,0x7
    80004ef0:	e1f7c783          	lbu	a5,-481(a5) # 8000bd0b <_ZL9finishedA>
    80004ef4:	fe0788e3          	beqz	a5,80004ee4 <_Z18Threads_C_API_testv+0xc8>
    80004ef8:	00007797          	auipc	a5,0x7
    80004efc:	e127c783          	lbu	a5,-494(a5) # 8000bd0a <_ZL9finishedB>
    80004f00:	fe0782e3          	beqz	a5,80004ee4 <_Z18Threads_C_API_testv+0xc8>
    80004f04:	00007797          	auipc	a5,0x7
    80004f08:	e057c783          	lbu	a5,-507(a5) # 8000bd09 <_ZL9finishedC>
    80004f0c:	fc078ce3          	beqz	a5,80004ee4 <_Z18Threads_C_API_testv+0xc8>
    80004f10:	00007797          	auipc	a5,0x7
    80004f14:	df87c783          	lbu	a5,-520(a5) # 8000bd08 <_ZL9finishedD>
    80004f18:	fc0786e3          	beqz	a5,80004ee4 <_Z18Threads_C_API_testv+0xc8>
    }

}
    80004f1c:	02813083          	ld	ra,40(sp)
    80004f20:	02013403          	ld	s0,32(sp)
    80004f24:	03010113          	addi	sp,sp,48
    80004f28:	00008067          	ret

0000000080004f2c <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004f2c:	fd010113          	addi	sp,sp,-48
    80004f30:	02113423          	sd	ra,40(sp)
    80004f34:	02813023          	sd	s0,32(sp)
    80004f38:	00913c23          	sd	s1,24(sp)
    80004f3c:	01213823          	sd	s2,16(sp)
    80004f40:	01313423          	sd	s3,8(sp)
    80004f44:	03010413          	addi	s0,sp,48
    80004f48:	00050993          	mv	s3,a0
    80004f4c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004f50:	00000913          	li	s2,0
    80004f54:	00c0006f          	j	80004f60 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004f58:	ffffd097          	auipc	ra,0xffffd
    80004f5c:	bcc080e7          	jalr	-1076(ra) # 80001b24 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004f60:	ffffc097          	auipc	ra,0xffffc
    80004f64:	438080e7          	jalr	1080(ra) # 80001398 <_Z4getcv>
    80004f68:	0005059b          	sext.w	a1,a0
    80004f6c:	01b00793          	li	a5,27
    80004f70:	02f58a63          	beq	a1,a5,80004fa4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004f74:	0084b503          	ld	a0,8(s1)
    80004f78:	00001097          	auipc	ra,0x1
    80004f7c:	c64080e7          	jalr	-924(ra) # 80005bdc <_ZN9BufferCPP3putEi>
        i++;
    80004f80:	0019071b          	addiw	a4,s2,1
    80004f84:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004f88:	0004a683          	lw	a3,0(s1)
    80004f8c:	0026979b          	slliw	a5,a3,0x2
    80004f90:	00d787bb          	addw	a5,a5,a3
    80004f94:	0017979b          	slliw	a5,a5,0x1
    80004f98:	02f767bb          	remw	a5,a4,a5
    80004f9c:	fc0792e3          	bnez	a5,80004f60 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004fa0:	fb9ff06f          	j	80004f58 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004fa4:	00100793          	li	a5,1
    80004fa8:	00007717          	auipc	a4,0x7
    80004fac:	d6f72423          	sw	a5,-664(a4) # 8000bd10 <_ZL9threadEnd>
    td->buffer->put('!');
    80004fb0:	0209b783          	ld	a5,32(s3)
    80004fb4:	02100593          	li	a1,33
    80004fb8:	0087b503          	ld	a0,8(a5)
    80004fbc:	00001097          	auipc	ra,0x1
    80004fc0:	c20080e7          	jalr	-992(ra) # 80005bdc <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004fc4:	0104b503          	ld	a0,16(s1)
    80004fc8:	ffffd097          	auipc	ra,0xffffd
    80004fcc:	c48080e7          	jalr	-952(ra) # 80001c10 <_ZN9Semaphore6signalEv>
}
    80004fd0:	02813083          	ld	ra,40(sp)
    80004fd4:	02013403          	ld	s0,32(sp)
    80004fd8:	01813483          	ld	s1,24(sp)
    80004fdc:	01013903          	ld	s2,16(sp)
    80004fe0:	00813983          	ld	s3,8(sp)
    80004fe4:	03010113          	addi	sp,sp,48
    80004fe8:	00008067          	ret

0000000080004fec <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004fec:	fe010113          	addi	sp,sp,-32
    80004ff0:	00113c23          	sd	ra,24(sp)
    80004ff4:	00813823          	sd	s0,16(sp)
    80004ff8:	00913423          	sd	s1,8(sp)
    80004ffc:	01213023          	sd	s2,0(sp)
    80005000:	02010413          	addi	s0,sp,32
    80005004:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005008:	00000913          	li	s2,0
    8000500c:	00c0006f          	j	80005018 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005010:	ffffd097          	auipc	ra,0xffffd
    80005014:	b14080e7          	jalr	-1260(ra) # 80001b24 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80005018:	00007797          	auipc	a5,0x7
    8000501c:	cf87a783          	lw	a5,-776(a5) # 8000bd10 <_ZL9threadEnd>
    80005020:	02079e63          	bnez	a5,8000505c <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80005024:	0004a583          	lw	a1,0(s1)
    80005028:	0305859b          	addiw	a1,a1,48
    8000502c:	0084b503          	ld	a0,8(s1)
    80005030:	00001097          	auipc	ra,0x1
    80005034:	bac080e7          	jalr	-1108(ra) # 80005bdc <_ZN9BufferCPP3putEi>
        i++;
    80005038:	0019071b          	addiw	a4,s2,1
    8000503c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005040:	0004a683          	lw	a3,0(s1)
    80005044:	0026979b          	slliw	a5,a3,0x2
    80005048:	00d787bb          	addw	a5,a5,a3
    8000504c:	0017979b          	slliw	a5,a5,0x1
    80005050:	02f767bb          	remw	a5,a4,a5
    80005054:	fc0792e3          	bnez	a5,80005018 <_ZN12ProducerSync8producerEPv+0x2c>
    80005058:	fb9ff06f          	j	80005010 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    8000505c:	0104b503          	ld	a0,16(s1)
    80005060:	ffffd097          	auipc	ra,0xffffd
    80005064:	bb0080e7          	jalr	-1104(ra) # 80001c10 <_ZN9Semaphore6signalEv>
}
    80005068:	01813083          	ld	ra,24(sp)
    8000506c:	01013403          	ld	s0,16(sp)
    80005070:	00813483          	ld	s1,8(sp)
    80005074:	00013903          	ld	s2,0(sp)
    80005078:	02010113          	addi	sp,sp,32
    8000507c:	00008067          	ret

0000000080005080 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80005080:	fd010113          	addi	sp,sp,-48
    80005084:	02113423          	sd	ra,40(sp)
    80005088:	02813023          	sd	s0,32(sp)
    8000508c:	00913c23          	sd	s1,24(sp)
    80005090:	01213823          	sd	s2,16(sp)
    80005094:	01313423          	sd	s3,8(sp)
    80005098:	01413023          	sd	s4,0(sp)
    8000509c:	03010413          	addi	s0,sp,48
    800050a0:	00050993          	mv	s3,a0
    800050a4:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800050a8:	00000a13          	li	s4,0
    800050ac:	01c0006f          	j	800050c8 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    800050b0:	ffffd097          	auipc	ra,0xffffd
    800050b4:	a74080e7          	jalr	-1420(ra) # 80001b24 <_ZN6Thread8dispatchEv>
    800050b8:	0500006f          	j	80005108 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    800050bc:	00a00513          	li	a0,10
    800050c0:	ffffc097          	auipc	ra,0xffffc
    800050c4:	300080e7          	jalr	768(ra) # 800013c0 <_Z4putcc>
    while (!threadEnd) {
    800050c8:	00007797          	auipc	a5,0x7
    800050cc:	c487a783          	lw	a5,-952(a5) # 8000bd10 <_ZL9threadEnd>
    800050d0:	06079263          	bnez	a5,80005134 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    800050d4:	00893503          	ld	a0,8(s2)
    800050d8:	00001097          	auipc	ra,0x1
    800050dc:	b94080e7          	jalr	-1132(ra) # 80005c6c <_ZN9BufferCPP3getEv>
        i++;
    800050e0:	001a049b          	addiw	s1,s4,1
    800050e4:	00048a1b          	sext.w	s4,s1
        putc(key);
    800050e8:	0ff57513          	andi	a0,a0,255
    800050ec:	ffffc097          	auipc	ra,0xffffc
    800050f0:	2d4080e7          	jalr	724(ra) # 800013c0 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800050f4:	00092703          	lw	a4,0(s2)
    800050f8:	0027179b          	slliw	a5,a4,0x2
    800050fc:	00e787bb          	addw	a5,a5,a4
    80005100:	02f4e7bb          	remw	a5,s1,a5
    80005104:	fa0786e3          	beqz	a5,800050b0 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80005108:	05000793          	li	a5,80
    8000510c:	02f4e4bb          	remw	s1,s1,a5
    80005110:	fa049ce3          	bnez	s1,800050c8 <_ZN12ConsumerSync8consumerEPv+0x48>
    80005114:	fa9ff06f          	j	800050bc <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80005118:	0209b783          	ld	a5,32(s3)
    8000511c:	0087b503          	ld	a0,8(a5)
    80005120:	00001097          	auipc	ra,0x1
    80005124:	b4c080e7          	jalr	-1204(ra) # 80005c6c <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80005128:	0ff57513          	andi	a0,a0,255
    8000512c:	ffffd097          	auipc	ra,0xffffd
    80005130:	b90080e7          	jalr	-1136(ra) # 80001cbc <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80005134:	0209b783          	ld	a5,32(s3)
    80005138:	0087b503          	ld	a0,8(a5)
    8000513c:	00001097          	auipc	ra,0x1
    80005140:	bbc080e7          	jalr	-1092(ra) # 80005cf8 <_ZN9BufferCPP6getCntEv>
    80005144:	fca04ae3          	bgtz	a0,80005118 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80005148:	01093503          	ld	a0,16(s2)
    8000514c:	ffffd097          	auipc	ra,0xffffd
    80005150:	ac4080e7          	jalr	-1340(ra) # 80001c10 <_ZN9Semaphore6signalEv>
}
    80005154:	02813083          	ld	ra,40(sp)
    80005158:	02013403          	ld	s0,32(sp)
    8000515c:	01813483          	ld	s1,24(sp)
    80005160:	01013903          	ld	s2,16(sp)
    80005164:	00813983          	ld	s3,8(sp)
    80005168:	00013a03          	ld	s4,0(sp)
    8000516c:	03010113          	addi	sp,sp,48
    80005170:	00008067          	ret

0000000080005174 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80005174:	f8010113          	addi	sp,sp,-128
    80005178:	06113c23          	sd	ra,120(sp)
    8000517c:	06813823          	sd	s0,112(sp)
    80005180:	06913423          	sd	s1,104(sp)
    80005184:	07213023          	sd	s2,96(sp)
    80005188:	05313c23          	sd	s3,88(sp)
    8000518c:	05413823          	sd	s4,80(sp)
    80005190:	05513423          	sd	s5,72(sp)
    80005194:	05613023          	sd	s6,64(sp)
    80005198:	03713c23          	sd	s7,56(sp)
    8000519c:	03813823          	sd	s8,48(sp)
    800051a0:	03913423          	sd	s9,40(sp)
    800051a4:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    800051a8:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    800051ac:	00004517          	auipc	a0,0x4
    800051b0:	f8450513          	addi	a0,a0,-124 # 80009130 <CONSOLE_STATUS+0x120>
    800051b4:	00000097          	auipc	ra,0x0
    800051b8:	604080e7          	jalr	1540(ra) # 800057b8 <_Z11printStringPKc>
    getString(input, 30);
    800051bc:	01e00593          	li	a1,30
    800051c0:	f8040493          	addi	s1,s0,-128
    800051c4:	00048513          	mv	a0,s1
    800051c8:	00000097          	auipc	ra,0x0
    800051cc:	678080e7          	jalr	1656(ra) # 80005840 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800051d0:	00048513          	mv	a0,s1
    800051d4:	00000097          	auipc	ra,0x0
    800051d8:	744080e7          	jalr	1860(ra) # 80005918 <_Z11stringToIntPKc>
    800051dc:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800051e0:	00004517          	auipc	a0,0x4
    800051e4:	f7050513          	addi	a0,a0,-144 # 80009150 <CONSOLE_STATUS+0x140>
    800051e8:	00000097          	auipc	ra,0x0
    800051ec:	5d0080e7          	jalr	1488(ra) # 800057b8 <_Z11printStringPKc>
    getString(input, 30);
    800051f0:	01e00593          	li	a1,30
    800051f4:	00048513          	mv	a0,s1
    800051f8:	00000097          	auipc	ra,0x0
    800051fc:	648080e7          	jalr	1608(ra) # 80005840 <_Z9getStringPci>
    n = stringToInt(input);
    80005200:	00048513          	mv	a0,s1
    80005204:	00000097          	auipc	ra,0x0
    80005208:	714080e7          	jalr	1812(ra) # 80005918 <_Z11stringToIntPKc>
    8000520c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005210:	00004517          	auipc	a0,0x4
    80005214:	f6050513          	addi	a0,a0,-160 # 80009170 <CONSOLE_STATUS+0x160>
    80005218:	00000097          	auipc	ra,0x0
    8000521c:	5a0080e7          	jalr	1440(ra) # 800057b8 <_Z11printStringPKc>
    80005220:	00000613          	li	a2,0
    80005224:	00a00593          	li	a1,10
    80005228:	00090513          	mv	a0,s2
    8000522c:	00000097          	auipc	ra,0x0
    80005230:	73c080e7          	jalr	1852(ra) # 80005968 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005234:	00004517          	auipc	a0,0x4
    80005238:	f5450513          	addi	a0,a0,-172 # 80009188 <CONSOLE_STATUS+0x178>
    8000523c:	00000097          	auipc	ra,0x0
    80005240:	57c080e7          	jalr	1404(ra) # 800057b8 <_Z11printStringPKc>
    80005244:	00000613          	li	a2,0
    80005248:	00a00593          	li	a1,10
    8000524c:	00048513          	mv	a0,s1
    80005250:	00000097          	auipc	ra,0x0
    80005254:	718080e7          	jalr	1816(ra) # 80005968 <_Z8printIntiii>
    printString(".\n");
    80005258:	00004517          	auipc	a0,0x4
    8000525c:	f4850513          	addi	a0,a0,-184 # 800091a0 <CONSOLE_STATUS+0x190>
    80005260:	00000097          	auipc	ra,0x0
    80005264:	558080e7          	jalr	1368(ra) # 800057b8 <_Z11printStringPKc>
    if(threadNum > n) {
    80005268:	0324c463          	blt	s1,s2,80005290 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    8000526c:	03205c63          	blez	s2,800052a4 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005270:	03800513          	li	a0,56
    80005274:	ffffc097          	auipc	ra,0xffffc
    80005278:	78c080e7          	jalr	1932(ra) # 80001a00 <_Znwm>
    8000527c:	00050a93          	mv	s5,a0
    80005280:	00048593          	mv	a1,s1
    80005284:	00001097          	auipc	ra,0x1
    80005288:	804080e7          	jalr	-2044(ra) # 80005a88 <_ZN9BufferCPPC1Ei>
    8000528c:	0300006f          	j	800052bc <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005290:	00004517          	auipc	a0,0x4
    80005294:	f1850513          	addi	a0,a0,-232 # 800091a8 <CONSOLE_STATUS+0x198>
    80005298:	00000097          	auipc	ra,0x0
    8000529c:	520080e7          	jalr	1312(ra) # 800057b8 <_Z11printStringPKc>
        return;
    800052a0:	0140006f          	j	800052b4 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800052a4:	00004517          	auipc	a0,0x4
    800052a8:	f4450513          	addi	a0,a0,-188 # 800091e8 <CONSOLE_STATUS+0x1d8>
    800052ac:	00000097          	auipc	ra,0x0
    800052b0:	50c080e7          	jalr	1292(ra) # 800057b8 <_Z11printStringPKc>
        return;
    800052b4:	000b8113          	mv	sp,s7
    800052b8:	2380006f          	j	800054f0 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    800052bc:	01000513          	li	a0,16
    800052c0:	ffffc097          	auipc	ra,0xffffc
    800052c4:	740080e7          	jalr	1856(ra) # 80001a00 <_Znwm>
    800052c8:	00050493          	mv	s1,a0
    800052cc:	00000593          	li	a1,0
    800052d0:	ffffd097          	auipc	ra,0xffffd
    800052d4:	8dc080e7          	jalr	-1828(ra) # 80001bac <_ZN9SemaphoreC1Ej>
    800052d8:	00007797          	auipc	a5,0x7
    800052dc:	a497b023          	sd	s1,-1472(a5) # 8000bd18 <_ZL10waitForAll>
    Thread* threads[threadNum];
    800052e0:	00391793          	slli	a5,s2,0x3
    800052e4:	00f78793          	addi	a5,a5,15
    800052e8:	ff07f793          	andi	a5,a5,-16
    800052ec:	40f10133          	sub	sp,sp,a5
    800052f0:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800052f4:	0019071b          	addiw	a4,s2,1
    800052f8:	00171793          	slli	a5,a4,0x1
    800052fc:	00e787b3          	add	a5,a5,a4
    80005300:	00379793          	slli	a5,a5,0x3
    80005304:	00f78793          	addi	a5,a5,15
    80005308:	ff07f793          	andi	a5,a5,-16
    8000530c:	40f10133          	sub	sp,sp,a5
    80005310:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005314:	00191c13          	slli	s8,s2,0x1
    80005318:	012c07b3          	add	a5,s8,s2
    8000531c:	00379793          	slli	a5,a5,0x3
    80005320:	00fa07b3          	add	a5,s4,a5
    80005324:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005328:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    8000532c:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005330:	02800513          	li	a0,40
    80005334:	ffffc097          	auipc	ra,0xffffc
    80005338:	6cc080e7          	jalr	1740(ra) # 80001a00 <_Znwm>
    8000533c:	00050b13          	mv	s6,a0
    80005340:	012c0c33          	add	s8,s8,s2
    80005344:	003c1c13          	slli	s8,s8,0x3
    80005348:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    8000534c:	ffffd097          	auipc	ra,0xffffd
    80005350:	800080e7          	jalr	-2048(ra) # 80001b4c <_ZN6ThreadC1Ev>
    80005354:	00006797          	auipc	a5,0x6
    80005358:	5dc78793          	addi	a5,a5,1500 # 8000b930 <_ZTV12ConsumerSync+0x10>
    8000535c:	00fb3023          	sd	a5,0(s6)
    80005360:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005364:	000b0513          	mv	a0,s6
    80005368:	ffffd097          	auipc	ra,0xffffd
    8000536c:	810080e7          	jalr	-2032(ra) # 80001b78 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005370:	00000493          	li	s1,0
    80005374:	0380006f          	j	800053ac <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005378:	00006797          	auipc	a5,0x6
    8000537c:	59078793          	addi	a5,a5,1424 # 8000b908 <_ZTV12ProducerSync+0x10>
    80005380:	00fcb023          	sd	a5,0(s9)
    80005384:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005388:	00349793          	slli	a5,s1,0x3
    8000538c:	00f987b3          	add	a5,s3,a5
    80005390:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005394:	00349793          	slli	a5,s1,0x3
    80005398:	00f987b3          	add	a5,s3,a5
    8000539c:	0007b503          	ld	a0,0(a5)
    800053a0:	ffffc097          	auipc	ra,0xffffc
    800053a4:	7d8080e7          	jalr	2008(ra) # 80001b78 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800053a8:	0014849b          	addiw	s1,s1,1
    800053ac:	0b24d063          	bge	s1,s2,8000544c <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    800053b0:	00149793          	slli	a5,s1,0x1
    800053b4:	009787b3          	add	a5,a5,s1
    800053b8:	00379793          	slli	a5,a5,0x3
    800053bc:	00fa07b3          	add	a5,s4,a5
    800053c0:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800053c4:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800053c8:	00007717          	auipc	a4,0x7
    800053cc:	95073703          	ld	a4,-1712(a4) # 8000bd18 <_ZL10waitForAll>
    800053d0:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    800053d4:	02905863          	blez	s1,80005404 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    800053d8:	02800513          	li	a0,40
    800053dc:	ffffc097          	auipc	ra,0xffffc
    800053e0:	624080e7          	jalr	1572(ra) # 80001a00 <_Znwm>
    800053e4:	00050c93          	mv	s9,a0
    800053e8:	00149c13          	slli	s8,s1,0x1
    800053ec:	009c0c33          	add	s8,s8,s1
    800053f0:	003c1c13          	slli	s8,s8,0x3
    800053f4:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800053f8:	ffffc097          	auipc	ra,0xffffc
    800053fc:	754080e7          	jalr	1876(ra) # 80001b4c <_ZN6ThreadC1Ev>
    80005400:	f79ff06f          	j	80005378 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005404:	02800513          	li	a0,40
    80005408:	ffffc097          	auipc	ra,0xffffc
    8000540c:	5f8080e7          	jalr	1528(ra) # 80001a00 <_Znwm>
    80005410:	00050c93          	mv	s9,a0
    80005414:	00149c13          	slli	s8,s1,0x1
    80005418:	009c0c33          	add	s8,s8,s1
    8000541c:	003c1c13          	slli	s8,s8,0x3
    80005420:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005424:	ffffc097          	auipc	ra,0xffffc
    80005428:	728080e7          	jalr	1832(ra) # 80001b4c <_ZN6ThreadC1Ev>
    8000542c:	00006797          	auipc	a5,0x6
    80005430:	4b478793          	addi	a5,a5,1204 # 8000b8e0 <_ZTV16ProducerKeyboard+0x10>
    80005434:	00fcb023          	sd	a5,0(s9)
    80005438:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    8000543c:	00349793          	slli	a5,s1,0x3
    80005440:	00f987b3          	add	a5,s3,a5
    80005444:	0197b023          	sd	s9,0(a5)
    80005448:	f4dff06f          	j	80005394 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    8000544c:	ffffc097          	auipc	ra,0xffffc
    80005450:	6d8080e7          	jalr	1752(ra) # 80001b24 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005454:	00000493          	li	s1,0
    80005458:	00994e63          	blt	s2,s1,80005474 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    8000545c:	00007517          	auipc	a0,0x7
    80005460:	8bc53503          	ld	a0,-1860(a0) # 8000bd18 <_ZL10waitForAll>
    80005464:	ffffc097          	auipc	ra,0xffffc
    80005468:	780080e7          	jalr	1920(ra) # 80001be4 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    8000546c:	0014849b          	addiw	s1,s1,1
    80005470:	fe9ff06f          	j	80005458 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005474:	00000493          	li	s1,0
    80005478:	0080006f          	j	80005480 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    8000547c:	0014849b          	addiw	s1,s1,1
    80005480:	0324d263          	bge	s1,s2,800054a4 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005484:	00349793          	slli	a5,s1,0x3
    80005488:	00f987b3          	add	a5,s3,a5
    8000548c:	0007b503          	ld	a0,0(a5)
    80005490:	fe0506e3          	beqz	a0,8000547c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005494:	00053783          	ld	a5,0(a0)
    80005498:	0087b783          	ld	a5,8(a5)
    8000549c:	000780e7          	jalr	a5
    800054a0:	fddff06f          	j	8000547c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    800054a4:	000b0a63          	beqz	s6,800054b8 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    800054a8:	000b3783          	ld	a5,0(s6)
    800054ac:	0087b783          	ld	a5,8(a5)
    800054b0:	000b0513          	mv	a0,s6
    800054b4:	000780e7          	jalr	a5
    delete waitForAll;
    800054b8:	00007517          	auipc	a0,0x7
    800054bc:	86053503          	ld	a0,-1952(a0) # 8000bd18 <_ZL10waitForAll>
    800054c0:	00050863          	beqz	a0,800054d0 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    800054c4:	00053783          	ld	a5,0(a0)
    800054c8:	0087b783          	ld	a5,8(a5)
    800054cc:	000780e7          	jalr	a5
    delete buffer;
    800054d0:	000a8e63          	beqz	s5,800054ec <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    800054d4:	000a8513          	mv	a0,s5
    800054d8:	00001097          	auipc	ra,0x1
    800054dc:	8a8080e7          	jalr	-1880(ra) # 80005d80 <_ZN9BufferCPPD1Ev>
    800054e0:	000a8513          	mv	a0,s5
    800054e4:	ffffc097          	auipc	ra,0xffffc
    800054e8:	544080e7          	jalr	1348(ra) # 80001a28 <_ZdlPv>
    800054ec:	000b8113          	mv	sp,s7

}
    800054f0:	f8040113          	addi	sp,s0,-128
    800054f4:	07813083          	ld	ra,120(sp)
    800054f8:	07013403          	ld	s0,112(sp)
    800054fc:	06813483          	ld	s1,104(sp)
    80005500:	06013903          	ld	s2,96(sp)
    80005504:	05813983          	ld	s3,88(sp)
    80005508:	05013a03          	ld	s4,80(sp)
    8000550c:	04813a83          	ld	s5,72(sp)
    80005510:	04013b03          	ld	s6,64(sp)
    80005514:	03813b83          	ld	s7,56(sp)
    80005518:	03013c03          	ld	s8,48(sp)
    8000551c:	02813c83          	ld	s9,40(sp)
    80005520:	08010113          	addi	sp,sp,128
    80005524:	00008067          	ret
    80005528:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    8000552c:	000a8513          	mv	a0,s5
    80005530:	ffffc097          	auipc	ra,0xffffc
    80005534:	4f8080e7          	jalr	1272(ra) # 80001a28 <_ZdlPv>
    80005538:	00048513          	mv	a0,s1
    8000553c:	00008097          	auipc	ra,0x8
    80005540:	8bc080e7          	jalr	-1860(ra) # 8000cdf8 <_Unwind_Resume>
    80005544:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005548:	00048513          	mv	a0,s1
    8000554c:	ffffc097          	auipc	ra,0xffffc
    80005550:	4dc080e7          	jalr	1244(ra) # 80001a28 <_ZdlPv>
    80005554:	00090513          	mv	a0,s2
    80005558:	00008097          	auipc	ra,0x8
    8000555c:	8a0080e7          	jalr	-1888(ra) # 8000cdf8 <_Unwind_Resume>
    80005560:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005564:	000b0513          	mv	a0,s6
    80005568:	ffffc097          	auipc	ra,0xffffc
    8000556c:	4c0080e7          	jalr	1216(ra) # 80001a28 <_ZdlPv>
    80005570:	00048513          	mv	a0,s1
    80005574:	00008097          	auipc	ra,0x8
    80005578:	884080e7          	jalr	-1916(ra) # 8000cdf8 <_Unwind_Resume>
    8000557c:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005580:	000c8513          	mv	a0,s9
    80005584:	ffffc097          	auipc	ra,0xffffc
    80005588:	4a4080e7          	jalr	1188(ra) # 80001a28 <_ZdlPv>
    8000558c:	00048513          	mv	a0,s1
    80005590:	00008097          	auipc	ra,0x8
    80005594:	868080e7          	jalr	-1944(ra) # 8000cdf8 <_Unwind_Resume>
    80005598:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    8000559c:	000c8513          	mv	a0,s9
    800055a0:	ffffc097          	auipc	ra,0xffffc
    800055a4:	488080e7          	jalr	1160(ra) # 80001a28 <_ZdlPv>
    800055a8:	00048513          	mv	a0,s1
    800055ac:	00008097          	auipc	ra,0x8
    800055b0:	84c080e7          	jalr	-1972(ra) # 8000cdf8 <_Unwind_Resume>

00000000800055b4 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    800055b4:	ff010113          	addi	sp,sp,-16
    800055b8:	00113423          	sd	ra,8(sp)
    800055bc:	00813023          	sd	s0,0(sp)
    800055c0:	01010413          	addi	s0,sp,16
    800055c4:	00006797          	auipc	a5,0x6
    800055c8:	36c78793          	addi	a5,a5,876 # 8000b930 <_ZTV12ConsumerSync+0x10>
    800055cc:	00f53023          	sd	a5,0(a0)
    800055d0:	ffffc097          	auipc	ra,0xffffc
    800055d4:	3c4080e7          	jalr	964(ra) # 80001994 <_ZN6ThreadD1Ev>
    800055d8:	00813083          	ld	ra,8(sp)
    800055dc:	00013403          	ld	s0,0(sp)
    800055e0:	01010113          	addi	sp,sp,16
    800055e4:	00008067          	ret

00000000800055e8 <_ZN12ConsumerSyncD0Ev>:
    800055e8:	fe010113          	addi	sp,sp,-32
    800055ec:	00113c23          	sd	ra,24(sp)
    800055f0:	00813823          	sd	s0,16(sp)
    800055f4:	00913423          	sd	s1,8(sp)
    800055f8:	02010413          	addi	s0,sp,32
    800055fc:	00050493          	mv	s1,a0
    80005600:	00006797          	auipc	a5,0x6
    80005604:	33078793          	addi	a5,a5,816 # 8000b930 <_ZTV12ConsumerSync+0x10>
    80005608:	00f53023          	sd	a5,0(a0)
    8000560c:	ffffc097          	auipc	ra,0xffffc
    80005610:	388080e7          	jalr	904(ra) # 80001994 <_ZN6ThreadD1Ev>
    80005614:	00048513          	mv	a0,s1
    80005618:	ffffc097          	auipc	ra,0xffffc
    8000561c:	410080e7          	jalr	1040(ra) # 80001a28 <_ZdlPv>
    80005620:	01813083          	ld	ra,24(sp)
    80005624:	01013403          	ld	s0,16(sp)
    80005628:	00813483          	ld	s1,8(sp)
    8000562c:	02010113          	addi	sp,sp,32
    80005630:	00008067          	ret

0000000080005634 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005634:	ff010113          	addi	sp,sp,-16
    80005638:	00113423          	sd	ra,8(sp)
    8000563c:	00813023          	sd	s0,0(sp)
    80005640:	01010413          	addi	s0,sp,16
    80005644:	00006797          	auipc	a5,0x6
    80005648:	2c478793          	addi	a5,a5,708 # 8000b908 <_ZTV12ProducerSync+0x10>
    8000564c:	00f53023          	sd	a5,0(a0)
    80005650:	ffffc097          	auipc	ra,0xffffc
    80005654:	344080e7          	jalr	836(ra) # 80001994 <_ZN6ThreadD1Ev>
    80005658:	00813083          	ld	ra,8(sp)
    8000565c:	00013403          	ld	s0,0(sp)
    80005660:	01010113          	addi	sp,sp,16
    80005664:	00008067          	ret

0000000080005668 <_ZN12ProducerSyncD0Ev>:
    80005668:	fe010113          	addi	sp,sp,-32
    8000566c:	00113c23          	sd	ra,24(sp)
    80005670:	00813823          	sd	s0,16(sp)
    80005674:	00913423          	sd	s1,8(sp)
    80005678:	02010413          	addi	s0,sp,32
    8000567c:	00050493          	mv	s1,a0
    80005680:	00006797          	auipc	a5,0x6
    80005684:	28878793          	addi	a5,a5,648 # 8000b908 <_ZTV12ProducerSync+0x10>
    80005688:	00f53023          	sd	a5,0(a0)
    8000568c:	ffffc097          	auipc	ra,0xffffc
    80005690:	308080e7          	jalr	776(ra) # 80001994 <_ZN6ThreadD1Ev>
    80005694:	00048513          	mv	a0,s1
    80005698:	ffffc097          	auipc	ra,0xffffc
    8000569c:	390080e7          	jalr	912(ra) # 80001a28 <_ZdlPv>
    800056a0:	01813083          	ld	ra,24(sp)
    800056a4:	01013403          	ld	s0,16(sp)
    800056a8:	00813483          	ld	s1,8(sp)
    800056ac:	02010113          	addi	sp,sp,32
    800056b0:	00008067          	ret

00000000800056b4 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800056b4:	ff010113          	addi	sp,sp,-16
    800056b8:	00113423          	sd	ra,8(sp)
    800056bc:	00813023          	sd	s0,0(sp)
    800056c0:	01010413          	addi	s0,sp,16
    800056c4:	00006797          	auipc	a5,0x6
    800056c8:	21c78793          	addi	a5,a5,540 # 8000b8e0 <_ZTV16ProducerKeyboard+0x10>
    800056cc:	00f53023          	sd	a5,0(a0)
    800056d0:	ffffc097          	auipc	ra,0xffffc
    800056d4:	2c4080e7          	jalr	708(ra) # 80001994 <_ZN6ThreadD1Ev>
    800056d8:	00813083          	ld	ra,8(sp)
    800056dc:	00013403          	ld	s0,0(sp)
    800056e0:	01010113          	addi	sp,sp,16
    800056e4:	00008067          	ret

00000000800056e8 <_ZN16ProducerKeyboardD0Ev>:
    800056e8:	fe010113          	addi	sp,sp,-32
    800056ec:	00113c23          	sd	ra,24(sp)
    800056f0:	00813823          	sd	s0,16(sp)
    800056f4:	00913423          	sd	s1,8(sp)
    800056f8:	02010413          	addi	s0,sp,32
    800056fc:	00050493          	mv	s1,a0
    80005700:	00006797          	auipc	a5,0x6
    80005704:	1e078793          	addi	a5,a5,480 # 8000b8e0 <_ZTV16ProducerKeyboard+0x10>
    80005708:	00f53023          	sd	a5,0(a0)
    8000570c:	ffffc097          	auipc	ra,0xffffc
    80005710:	288080e7          	jalr	648(ra) # 80001994 <_ZN6ThreadD1Ev>
    80005714:	00048513          	mv	a0,s1
    80005718:	ffffc097          	auipc	ra,0xffffc
    8000571c:	310080e7          	jalr	784(ra) # 80001a28 <_ZdlPv>
    80005720:	01813083          	ld	ra,24(sp)
    80005724:	01013403          	ld	s0,16(sp)
    80005728:	00813483          	ld	s1,8(sp)
    8000572c:	02010113          	addi	sp,sp,32
    80005730:	00008067          	ret

0000000080005734 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005734:	ff010113          	addi	sp,sp,-16
    80005738:	00113423          	sd	ra,8(sp)
    8000573c:	00813023          	sd	s0,0(sp)
    80005740:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005744:	02053583          	ld	a1,32(a0)
    80005748:	fffff097          	auipc	ra,0xfffff
    8000574c:	7e4080e7          	jalr	2020(ra) # 80004f2c <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005750:	00813083          	ld	ra,8(sp)
    80005754:	00013403          	ld	s0,0(sp)
    80005758:	01010113          	addi	sp,sp,16
    8000575c:	00008067          	ret

0000000080005760 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005760:	ff010113          	addi	sp,sp,-16
    80005764:	00113423          	sd	ra,8(sp)
    80005768:	00813023          	sd	s0,0(sp)
    8000576c:	01010413          	addi	s0,sp,16
        producer(td);
    80005770:	02053583          	ld	a1,32(a0)
    80005774:	00000097          	auipc	ra,0x0
    80005778:	878080e7          	jalr	-1928(ra) # 80004fec <_ZN12ProducerSync8producerEPv>
    }
    8000577c:	00813083          	ld	ra,8(sp)
    80005780:	00013403          	ld	s0,0(sp)
    80005784:	01010113          	addi	sp,sp,16
    80005788:	00008067          	ret

000000008000578c <_ZN12ConsumerSync3runEv>:
    void run() override {
    8000578c:	ff010113          	addi	sp,sp,-16
    80005790:	00113423          	sd	ra,8(sp)
    80005794:	00813023          	sd	s0,0(sp)
    80005798:	01010413          	addi	s0,sp,16
        consumer(td);
    8000579c:	02053583          	ld	a1,32(a0)
    800057a0:	00000097          	auipc	ra,0x0
    800057a4:	8e0080e7          	jalr	-1824(ra) # 80005080 <_ZN12ConsumerSync8consumerEPv>
    }
    800057a8:	00813083          	ld	ra,8(sp)
    800057ac:	00013403          	ld	s0,0(sp)
    800057b0:	01010113          	addi	sp,sp,16
    800057b4:	00008067          	ret

00000000800057b8 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800057b8:	fe010113          	addi	sp,sp,-32
    800057bc:	00113c23          	sd	ra,24(sp)
    800057c0:	00813823          	sd	s0,16(sp)
    800057c4:	00913423          	sd	s1,8(sp)
    800057c8:	02010413          	addi	s0,sp,32
    800057cc:	00050493          	mv	s1,a0
    LOCK();
    800057d0:	00100613          	li	a2,1
    800057d4:	00000593          	li	a1,0
    800057d8:	00006517          	auipc	a0,0x6
    800057dc:	54850513          	addi	a0,a0,1352 # 8000bd20 <lockPrint>
    800057e0:	ffffc097          	auipc	ra,0xffffc
    800057e4:	960080e7          	jalr	-1696(ra) # 80001140 <copy_and_swap>
    800057e8:	00050863          	beqz	a0,800057f8 <_Z11printStringPKc+0x40>
    800057ec:	ffffc097          	auipc	ra,0xffffc
    800057f0:	a34080e7          	jalr	-1484(ra) # 80001220 <_Z15thread_dispatchv>
    800057f4:	fddff06f          	j	800057d0 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800057f8:	0004c503          	lbu	a0,0(s1)
    800057fc:	00050a63          	beqz	a0,80005810 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005800:	ffffc097          	auipc	ra,0xffffc
    80005804:	bc0080e7          	jalr	-1088(ra) # 800013c0 <_Z4putcc>
        string++;
    80005808:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000580c:	fedff06f          	j	800057f8 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005810:	00000613          	li	a2,0
    80005814:	00100593          	li	a1,1
    80005818:	00006517          	auipc	a0,0x6
    8000581c:	50850513          	addi	a0,a0,1288 # 8000bd20 <lockPrint>
    80005820:	ffffc097          	auipc	ra,0xffffc
    80005824:	920080e7          	jalr	-1760(ra) # 80001140 <copy_and_swap>
    80005828:	fe0514e3          	bnez	a0,80005810 <_Z11printStringPKc+0x58>
}
    8000582c:	01813083          	ld	ra,24(sp)
    80005830:	01013403          	ld	s0,16(sp)
    80005834:	00813483          	ld	s1,8(sp)
    80005838:	02010113          	addi	sp,sp,32
    8000583c:	00008067          	ret

0000000080005840 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005840:	fd010113          	addi	sp,sp,-48
    80005844:	02113423          	sd	ra,40(sp)
    80005848:	02813023          	sd	s0,32(sp)
    8000584c:	00913c23          	sd	s1,24(sp)
    80005850:	01213823          	sd	s2,16(sp)
    80005854:	01313423          	sd	s3,8(sp)
    80005858:	01413023          	sd	s4,0(sp)
    8000585c:	03010413          	addi	s0,sp,48
    80005860:	00050993          	mv	s3,a0
    80005864:	00058a13          	mv	s4,a1
    LOCK();
    80005868:	00100613          	li	a2,1
    8000586c:	00000593          	li	a1,0
    80005870:	00006517          	auipc	a0,0x6
    80005874:	4b050513          	addi	a0,a0,1200 # 8000bd20 <lockPrint>
    80005878:	ffffc097          	auipc	ra,0xffffc
    8000587c:	8c8080e7          	jalr	-1848(ra) # 80001140 <copy_and_swap>
    80005880:	00050863          	beqz	a0,80005890 <_Z9getStringPci+0x50>
    80005884:	ffffc097          	auipc	ra,0xffffc
    80005888:	99c080e7          	jalr	-1636(ra) # 80001220 <_Z15thread_dispatchv>
    8000588c:	fddff06f          	j	80005868 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005890:	00000913          	li	s2,0
    80005894:	00090493          	mv	s1,s2
    80005898:	0019091b          	addiw	s2,s2,1
    8000589c:	03495a63          	bge	s2,s4,800058d0 <_Z9getStringPci+0x90>
        cc = getc();
    800058a0:	ffffc097          	auipc	ra,0xffffc
    800058a4:	af8080e7          	jalr	-1288(ra) # 80001398 <_Z4getcv>
        if(cc < 1)
    800058a8:	02050463          	beqz	a0,800058d0 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    800058ac:	009984b3          	add	s1,s3,s1
    800058b0:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800058b4:	00a00793          	li	a5,10
    800058b8:	00f50a63          	beq	a0,a5,800058cc <_Z9getStringPci+0x8c>
    800058bc:	00d00793          	li	a5,13
    800058c0:	fcf51ae3          	bne	a0,a5,80005894 <_Z9getStringPci+0x54>
        buf[i++] = c;
    800058c4:	00090493          	mv	s1,s2
    800058c8:	0080006f          	j	800058d0 <_Z9getStringPci+0x90>
    800058cc:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800058d0:	009984b3          	add	s1,s3,s1
    800058d4:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800058d8:	00000613          	li	a2,0
    800058dc:	00100593          	li	a1,1
    800058e0:	00006517          	auipc	a0,0x6
    800058e4:	44050513          	addi	a0,a0,1088 # 8000bd20 <lockPrint>
    800058e8:	ffffc097          	auipc	ra,0xffffc
    800058ec:	858080e7          	jalr	-1960(ra) # 80001140 <copy_and_swap>
    800058f0:	fe0514e3          	bnez	a0,800058d8 <_Z9getStringPci+0x98>
    return buf;
}
    800058f4:	00098513          	mv	a0,s3
    800058f8:	02813083          	ld	ra,40(sp)
    800058fc:	02013403          	ld	s0,32(sp)
    80005900:	01813483          	ld	s1,24(sp)
    80005904:	01013903          	ld	s2,16(sp)
    80005908:	00813983          	ld	s3,8(sp)
    8000590c:	00013a03          	ld	s4,0(sp)
    80005910:	03010113          	addi	sp,sp,48
    80005914:	00008067          	ret

0000000080005918 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005918:	ff010113          	addi	sp,sp,-16
    8000591c:	00813423          	sd	s0,8(sp)
    80005920:	01010413          	addi	s0,sp,16
    80005924:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005928:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    8000592c:	0006c603          	lbu	a2,0(a3)
    80005930:	fd06071b          	addiw	a4,a2,-48
    80005934:	0ff77713          	andi	a4,a4,255
    80005938:	00900793          	li	a5,9
    8000593c:	02e7e063          	bltu	a5,a4,8000595c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005940:	0025179b          	slliw	a5,a0,0x2
    80005944:	00a787bb          	addw	a5,a5,a0
    80005948:	0017979b          	slliw	a5,a5,0x1
    8000594c:	00168693          	addi	a3,a3,1
    80005950:	00c787bb          	addw	a5,a5,a2
    80005954:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005958:	fd5ff06f          	j	8000592c <_Z11stringToIntPKc+0x14>
    return n;
}
    8000595c:	00813403          	ld	s0,8(sp)
    80005960:	01010113          	addi	sp,sp,16
    80005964:	00008067          	ret

0000000080005968 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005968:	fc010113          	addi	sp,sp,-64
    8000596c:	02113c23          	sd	ra,56(sp)
    80005970:	02813823          	sd	s0,48(sp)
    80005974:	02913423          	sd	s1,40(sp)
    80005978:	03213023          	sd	s2,32(sp)
    8000597c:	01313c23          	sd	s3,24(sp)
    80005980:	04010413          	addi	s0,sp,64
    80005984:	00050493          	mv	s1,a0
    80005988:	00058913          	mv	s2,a1
    8000598c:	00060993          	mv	s3,a2
    LOCK();
    80005990:	00100613          	li	a2,1
    80005994:	00000593          	li	a1,0
    80005998:	00006517          	auipc	a0,0x6
    8000599c:	38850513          	addi	a0,a0,904 # 8000bd20 <lockPrint>
    800059a0:	ffffb097          	auipc	ra,0xffffb
    800059a4:	7a0080e7          	jalr	1952(ra) # 80001140 <copy_and_swap>
    800059a8:	00050863          	beqz	a0,800059b8 <_Z8printIntiii+0x50>
    800059ac:	ffffc097          	auipc	ra,0xffffc
    800059b0:	874080e7          	jalr	-1932(ra) # 80001220 <_Z15thread_dispatchv>
    800059b4:	fddff06f          	j	80005990 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800059b8:	00098463          	beqz	s3,800059c0 <_Z8printIntiii+0x58>
    800059bc:	0804c463          	bltz	s1,80005a44 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800059c0:	0004851b          	sext.w	a0,s1
    neg = 0;
    800059c4:	00000593          	li	a1,0
    }

    i = 0;
    800059c8:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800059cc:	0009079b          	sext.w	a5,s2
    800059d0:	0325773b          	remuw	a4,a0,s2
    800059d4:	00048613          	mv	a2,s1
    800059d8:	0014849b          	addiw	s1,s1,1
    800059dc:	02071693          	slli	a3,a4,0x20
    800059e0:	0206d693          	srli	a3,a3,0x20
    800059e4:	00006717          	auipc	a4,0x6
    800059e8:	f6470713          	addi	a4,a4,-156 # 8000b948 <digits>
    800059ec:	00d70733          	add	a4,a4,a3
    800059f0:	00074683          	lbu	a3,0(a4)
    800059f4:	fd040713          	addi	a4,s0,-48
    800059f8:	00c70733          	add	a4,a4,a2
    800059fc:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005a00:	0005071b          	sext.w	a4,a0
    80005a04:	0325553b          	divuw	a0,a0,s2
    80005a08:	fcf772e3          	bgeu	a4,a5,800059cc <_Z8printIntiii+0x64>
    if(neg)
    80005a0c:	00058c63          	beqz	a1,80005a24 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005a10:	fd040793          	addi	a5,s0,-48
    80005a14:	009784b3          	add	s1,a5,s1
    80005a18:	02d00793          	li	a5,45
    80005a1c:	fef48823          	sb	a5,-16(s1)
    80005a20:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005a24:	fff4849b          	addiw	s1,s1,-1
    80005a28:	0204c463          	bltz	s1,80005a50 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005a2c:	fd040793          	addi	a5,s0,-48
    80005a30:	009787b3          	add	a5,a5,s1
    80005a34:	ff07c503          	lbu	a0,-16(a5)
    80005a38:	ffffc097          	auipc	ra,0xffffc
    80005a3c:	988080e7          	jalr	-1656(ra) # 800013c0 <_Z4putcc>
    80005a40:	fe5ff06f          	j	80005a24 <_Z8printIntiii+0xbc>
        x = -xx;
    80005a44:	4090053b          	negw	a0,s1
        neg = 1;
    80005a48:	00100593          	li	a1,1
        x = -xx;
    80005a4c:	f7dff06f          	j	800059c8 <_Z8printIntiii+0x60>

    UNLOCK();
    80005a50:	00000613          	li	a2,0
    80005a54:	00100593          	li	a1,1
    80005a58:	00006517          	auipc	a0,0x6
    80005a5c:	2c850513          	addi	a0,a0,712 # 8000bd20 <lockPrint>
    80005a60:	ffffb097          	auipc	ra,0xffffb
    80005a64:	6e0080e7          	jalr	1760(ra) # 80001140 <copy_and_swap>
    80005a68:	fe0514e3          	bnez	a0,80005a50 <_Z8printIntiii+0xe8>
    80005a6c:	03813083          	ld	ra,56(sp)
    80005a70:	03013403          	ld	s0,48(sp)
    80005a74:	02813483          	ld	s1,40(sp)
    80005a78:	02013903          	ld	s2,32(sp)
    80005a7c:	01813983          	ld	s3,24(sp)
    80005a80:	04010113          	addi	sp,sp,64
    80005a84:	00008067          	ret

0000000080005a88 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005a88:	fd010113          	addi	sp,sp,-48
    80005a8c:	02113423          	sd	ra,40(sp)
    80005a90:	02813023          	sd	s0,32(sp)
    80005a94:	00913c23          	sd	s1,24(sp)
    80005a98:	01213823          	sd	s2,16(sp)
    80005a9c:	01313423          	sd	s3,8(sp)
    80005aa0:	03010413          	addi	s0,sp,48
    80005aa4:	00050493          	mv	s1,a0
    80005aa8:	00058913          	mv	s2,a1
    80005aac:	0015879b          	addiw	a5,a1,1
    80005ab0:	0007851b          	sext.w	a0,a5
    80005ab4:	00f4a023          	sw	a5,0(s1)
    80005ab8:	0004a823          	sw	zero,16(s1)
    80005abc:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005ac0:	00251513          	slli	a0,a0,0x2
    80005ac4:	ffffb097          	auipc	ra,0xffffb
    80005ac8:	69c080e7          	jalr	1692(ra) # 80001160 <_Z9mem_allocm>
    80005acc:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005ad0:	01000513          	li	a0,16
    80005ad4:	ffffc097          	auipc	ra,0xffffc
    80005ad8:	f2c080e7          	jalr	-212(ra) # 80001a00 <_Znwm>
    80005adc:	00050993          	mv	s3,a0
    80005ae0:	00000593          	li	a1,0
    80005ae4:	ffffc097          	auipc	ra,0xffffc
    80005ae8:	0c8080e7          	jalr	200(ra) # 80001bac <_ZN9SemaphoreC1Ej>
    80005aec:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005af0:	01000513          	li	a0,16
    80005af4:	ffffc097          	auipc	ra,0xffffc
    80005af8:	f0c080e7          	jalr	-244(ra) # 80001a00 <_Znwm>
    80005afc:	00050993          	mv	s3,a0
    80005b00:	00090593          	mv	a1,s2
    80005b04:	ffffc097          	auipc	ra,0xffffc
    80005b08:	0a8080e7          	jalr	168(ra) # 80001bac <_ZN9SemaphoreC1Ej>
    80005b0c:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005b10:	01000513          	li	a0,16
    80005b14:	ffffc097          	auipc	ra,0xffffc
    80005b18:	eec080e7          	jalr	-276(ra) # 80001a00 <_Znwm>
    80005b1c:	00050913          	mv	s2,a0
    80005b20:	00100593          	li	a1,1
    80005b24:	ffffc097          	auipc	ra,0xffffc
    80005b28:	088080e7          	jalr	136(ra) # 80001bac <_ZN9SemaphoreC1Ej>
    80005b2c:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005b30:	01000513          	li	a0,16
    80005b34:	ffffc097          	auipc	ra,0xffffc
    80005b38:	ecc080e7          	jalr	-308(ra) # 80001a00 <_Znwm>
    80005b3c:	00050913          	mv	s2,a0
    80005b40:	00100593          	li	a1,1
    80005b44:	ffffc097          	auipc	ra,0xffffc
    80005b48:	068080e7          	jalr	104(ra) # 80001bac <_ZN9SemaphoreC1Ej>
    80005b4c:	0324b823          	sd	s2,48(s1)
}
    80005b50:	02813083          	ld	ra,40(sp)
    80005b54:	02013403          	ld	s0,32(sp)
    80005b58:	01813483          	ld	s1,24(sp)
    80005b5c:	01013903          	ld	s2,16(sp)
    80005b60:	00813983          	ld	s3,8(sp)
    80005b64:	03010113          	addi	sp,sp,48
    80005b68:	00008067          	ret
    80005b6c:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005b70:	00098513          	mv	a0,s3
    80005b74:	ffffc097          	auipc	ra,0xffffc
    80005b78:	eb4080e7          	jalr	-332(ra) # 80001a28 <_ZdlPv>
    80005b7c:	00048513          	mv	a0,s1
    80005b80:	00007097          	auipc	ra,0x7
    80005b84:	278080e7          	jalr	632(ra) # 8000cdf8 <_Unwind_Resume>
    80005b88:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005b8c:	00098513          	mv	a0,s3
    80005b90:	ffffc097          	auipc	ra,0xffffc
    80005b94:	e98080e7          	jalr	-360(ra) # 80001a28 <_ZdlPv>
    80005b98:	00048513          	mv	a0,s1
    80005b9c:	00007097          	auipc	ra,0x7
    80005ba0:	25c080e7          	jalr	604(ra) # 8000cdf8 <_Unwind_Resume>
    80005ba4:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005ba8:	00090513          	mv	a0,s2
    80005bac:	ffffc097          	auipc	ra,0xffffc
    80005bb0:	e7c080e7          	jalr	-388(ra) # 80001a28 <_ZdlPv>
    80005bb4:	00048513          	mv	a0,s1
    80005bb8:	00007097          	auipc	ra,0x7
    80005bbc:	240080e7          	jalr	576(ra) # 8000cdf8 <_Unwind_Resume>
    80005bc0:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005bc4:	00090513          	mv	a0,s2
    80005bc8:	ffffc097          	auipc	ra,0xffffc
    80005bcc:	e60080e7          	jalr	-416(ra) # 80001a28 <_ZdlPv>
    80005bd0:	00048513          	mv	a0,s1
    80005bd4:	00007097          	auipc	ra,0x7
    80005bd8:	224080e7          	jalr	548(ra) # 8000cdf8 <_Unwind_Resume>

0000000080005bdc <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005bdc:	fe010113          	addi	sp,sp,-32
    80005be0:	00113c23          	sd	ra,24(sp)
    80005be4:	00813823          	sd	s0,16(sp)
    80005be8:	00913423          	sd	s1,8(sp)
    80005bec:	01213023          	sd	s2,0(sp)
    80005bf0:	02010413          	addi	s0,sp,32
    80005bf4:	00050493          	mv	s1,a0
    80005bf8:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005bfc:	01853503          	ld	a0,24(a0)
    80005c00:	ffffc097          	auipc	ra,0xffffc
    80005c04:	fe4080e7          	jalr	-28(ra) # 80001be4 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005c08:	0304b503          	ld	a0,48(s1)
    80005c0c:	ffffc097          	auipc	ra,0xffffc
    80005c10:	fd8080e7          	jalr	-40(ra) # 80001be4 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005c14:	0084b783          	ld	a5,8(s1)
    80005c18:	0144a703          	lw	a4,20(s1)
    80005c1c:	00271713          	slli	a4,a4,0x2
    80005c20:	00e787b3          	add	a5,a5,a4
    80005c24:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005c28:	0144a783          	lw	a5,20(s1)
    80005c2c:	0017879b          	addiw	a5,a5,1
    80005c30:	0004a703          	lw	a4,0(s1)
    80005c34:	02e7e7bb          	remw	a5,a5,a4
    80005c38:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005c3c:	0304b503          	ld	a0,48(s1)
    80005c40:	ffffc097          	auipc	ra,0xffffc
    80005c44:	fd0080e7          	jalr	-48(ra) # 80001c10 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005c48:	0204b503          	ld	a0,32(s1)
    80005c4c:	ffffc097          	auipc	ra,0xffffc
    80005c50:	fc4080e7          	jalr	-60(ra) # 80001c10 <_ZN9Semaphore6signalEv>

}
    80005c54:	01813083          	ld	ra,24(sp)
    80005c58:	01013403          	ld	s0,16(sp)
    80005c5c:	00813483          	ld	s1,8(sp)
    80005c60:	00013903          	ld	s2,0(sp)
    80005c64:	02010113          	addi	sp,sp,32
    80005c68:	00008067          	ret

0000000080005c6c <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005c6c:	fe010113          	addi	sp,sp,-32
    80005c70:	00113c23          	sd	ra,24(sp)
    80005c74:	00813823          	sd	s0,16(sp)
    80005c78:	00913423          	sd	s1,8(sp)
    80005c7c:	01213023          	sd	s2,0(sp)
    80005c80:	02010413          	addi	s0,sp,32
    80005c84:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005c88:	02053503          	ld	a0,32(a0)
    80005c8c:	ffffc097          	auipc	ra,0xffffc
    80005c90:	f58080e7          	jalr	-168(ra) # 80001be4 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005c94:	0284b503          	ld	a0,40(s1)
    80005c98:	ffffc097          	auipc	ra,0xffffc
    80005c9c:	f4c080e7          	jalr	-180(ra) # 80001be4 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005ca0:	0084b703          	ld	a4,8(s1)
    80005ca4:	0104a783          	lw	a5,16(s1)
    80005ca8:	00279693          	slli	a3,a5,0x2
    80005cac:	00d70733          	add	a4,a4,a3
    80005cb0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005cb4:	0017879b          	addiw	a5,a5,1
    80005cb8:	0004a703          	lw	a4,0(s1)
    80005cbc:	02e7e7bb          	remw	a5,a5,a4
    80005cc0:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005cc4:	0284b503          	ld	a0,40(s1)
    80005cc8:	ffffc097          	auipc	ra,0xffffc
    80005ccc:	f48080e7          	jalr	-184(ra) # 80001c10 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005cd0:	0184b503          	ld	a0,24(s1)
    80005cd4:	ffffc097          	auipc	ra,0xffffc
    80005cd8:	f3c080e7          	jalr	-196(ra) # 80001c10 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005cdc:	00090513          	mv	a0,s2
    80005ce0:	01813083          	ld	ra,24(sp)
    80005ce4:	01013403          	ld	s0,16(sp)
    80005ce8:	00813483          	ld	s1,8(sp)
    80005cec:	00013903          	ld	s2,0(sp)
    80005cf0:	02010113          	addi	sp,sp,32
    80005cf4:	00008067          	ret

0000000080005cf8 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005cf8:	fe010113          	addi	sp,sp,-32
    80005cfc:	00113c23          	sd	ra,24(sp)
    80005d00:	00813823          	sd	s0,16(sp)
    80005d04:	00913423          	sd	s1,8(sp)
    80005d08:	01213023          	sd	s2,0(sp)
    80005d0c:	02010413          	addi	s0,sp,32
    80005d10:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005d14:	02853503          	ld	a0,40(a0)
    80005d18:	ffffc097          	auipc	ra,0xffffc
    80005d1c:	ecc080e7          	jalr	-308(ra) # 80001be4 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005d20:	0304b503          	ld	a0,48(s1)
    80005d24:	ffffc097          	auipc	ra,0xffffc
    80005d28:	ec0080e7          	jalr	-320(ra) # 80001be4 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005d2c:	0144a783          	lw	a5,20(s1)
    80005d30:	0104a903          	lw	s2,16(s1)
    80005d34:	0327ce63          	blt	a5,s2,80005d70 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005d38:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005d3c:	0304b503          	ld	a0,48(s1)
    80005d40:	ffffc097          	auipc	ra,0xffffc
    80005d44:	ed0080e7          	jalr	-304(ra) # 80001c10 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005d48:	0284b503          	ld	a0,40(s1)
    80005d4c:	ffffc097          	auipc	ra,0xffffc
    80005d50:	ec4080e7          	jalr	-316(ra) # 80001c10 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005d54:	00090513          	mv	a0,s2
    80005d58:	01813083          	ld	ra,24(sp)
    80005d5c:	01013403          	ld	s0,16(sp)
    80005d60:	00813483          	ld	s1,8(sp)
    80005d64:	00013903          	ld	s2,0(sp)
    80005d68:	02010113          	addi	sp,sp,32
    80005d6c:	00008067          	ret
        ret = cap - head + tail;
    80005d70:	0004a703          	lw	a4,0(s1)
    80005d74:	4127093b          	subw	s2,a4,s2
    80005d78:	00f9093b          	addw	s2,s2,a5
    80005d7c:	fc1ff06f          	j	80005d3c <_ZN9BufferCPP6getCntEv+0x44>

0000000080005d80 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005d80:	fe010113          	addi	sp,sp,-32
    80005d84:	00113c23          	sd	ra,24(sp)
    80005d88:	00813823          	sd	s0,16(sp)
    80005d8c:	00913423          	sd	s1,8(sp)
    80005d90:	02010413          	addi	s0,sp,32
    80005d94:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005d98:	00a00513          	li	a0,10
    80005d9c:	ffffc097          	auipc	ra,0xffffc
    80005da0:	f20080e7          	jalr	-224(ra) # 80001cbc <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005da4:	00003517          	auipc	a0,0x3
    80005da8:	56c50513          	addi	a0,a0,1388 # 80009310 <CONSOLE_STATUS+0x300>
    80005dac:	00000097          	auipc	ra,0x0
    80005db0:	a0c080e7          	jalr	-1524(ra) # 800057b8 <_Z11printStringPKc>
    while (getCnt()) {
    80005db4:	00048513          	mv	a0,s1
    80005db8:	00000097          	auipc	ra,0x0
    80005dbc:	f40080e7          	jalr	-192(ra) # 80005cf8 <_ZN9BufferCPP6getCntEv>
    80005dc0:	02050c63          	beqz	a0,80005df8 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005dc4:	0084b783          	ld	a5,8(s1)
    80005dc8:	0104a703          	lw	a4,16(s1)
    80005dcc:	00271713          	slli	a4,a4,0x2
    80005dd0:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005dd4:	0007c503          	lbu	a0,0(a5)
    80005dd8:	ffffc097          	auipc	ra,0xffffc
    80005ddc:	ee4080e7          	jalr	-284(ra) # 80001cbc <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005de0:	0104a783          	lw	a5,16(s1)
    80005de4:	0017879b          	addiw	a5,a5,1
    80005de8:	0004a703          	lw	a4,0(s1)
    80005dec:	02e7e7bb          	remw	a5,a5,a4
    80005df0:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005df4:	fc1ff06f          	j	80005db4 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005df8:	02100513          	li	a0,33
    80005dfc:	ffffc097          	auipc	ra,0xffffc
    80005e00:	ec0080e7          	jalr	-320(ra) # 80001cbc <_ZN7Console4putcEc>
    Console::putc('\n');
    80005e04:	00a00513          	li	a0,10
    80005e08:	ffffc097          	auipc	ra,0xffffc
    80005e0c:	eb4080e7          	jalr	-332(ra) # 80001cbc <_ZN7Console4putcEc>
    mem_free(buffer);
    80005e10:	0084b503          	ld	a0,8(s1)
    80005e14:	ffffb097          	auipc	ra,0xffffb
    80005e18:	384080e7          	jalr	900(ra) # 80001198 <_Z8mem_freePv>
    delete itemAvailable;
    80005e1c:	0204b503          	ld	a0,32(s1)
    80005e20:	00050863          	beqz	a0,80005e30 <_ZN9BufferCPPD1Ev+0xb0>
    80005e24:	00053783          	ld	a5,0(a0)
    80005e28:	0087b783          	ld	a5,8(a5)
    80005e2c:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005e30:	0184b503          	ld	a0,24(s1)
    80005e34:	00050863          	beqz	a0,80005e44 <_ZN9BufferCPPD1Ev+0xc4>
    80005e38:	00053783          	ld	a5,0(a0)
    80005e3c:	0087b783          	ld	a5,8(a5)
    80005e40:	000780e7          	jalr	a5
    delete mutexTail;
    80005e44:	0304b503          	ld	a0,48(s1)
    80005e48:	00050863          	beqz	a0,80005e58 <_ZN9BufferCPPD1Ev+0xd8>
    80005e4c:	00053783          	ld	a5,0(a0)
    80005e50:	0087b783          	ld	a5,8(a5)
    80005e54:	000780e7          	jalr	a5
    delete mutexHead;
    80005e58:	0284b503          	ld	a0,40(s1)
    80005e5c:	00050863          	beqz	a0,80005e6c <_ZN9BufferCPPD1Ev+0xec>
    80005e60:	00053783          	ld	a5,0(a0)
    80005e64:	0087b783          	ld	a5,8(a5)
    80005e68:	000780e7          	jalr	a5
}
    80005e6c:	01813083          	ld	ra,24(sp)
    80005e70:	01013403          	ld	s0,16(sp)
    80005e74:	00813483          	ld	s1,8(sp)
    80005e78:	02010113          	addi	sp,sp,32
    80005e7c:	00008067          	ret

0000000080005e80 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005e80:	fe010113          	addi	sp,sp,-32
    80005e84:	00113c23          	sd	ra,24(sp)
    80005e88:	00813823          	sd	s0,16(sp)
    80005e8c:	00913423          	sd	s1,8(sp)
    80005e90:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005e94:	00003517          	auipc	a0,0x3
    80005e98:	49450513          	addi	a0,a0,1172 # 80009328 <CONSOLE_STATUS+0x318>
    80005e9c:	00000097          	auipc	ra,0x0
    80005ea0:	91c080e7          	jalr	-1764(ra) # 800057b8 <_Z11printStringPKc>
    int test = getc() - '0';
    80005ea4:	ffffb097          	auipc	ra,0xffffb
    80005ea8:	4f4080e7          	jalr	1268(ra) # 80001398 <_Z4getcv>
    80005eac:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005eb0:	ffffb097          	auipc	ra,0xffffb
    80005eb4:	4e8080e7          	jalr	1256(ra) # 80001398 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005eb8:	00700793          	li	a5,7
    80005ebc:	1097e263          	bltu	a5,s1,80005fc0 <_Z8userMainv+0x140>
    80005ec0:	00249493          	slli	s1,s1,0x2
    80005ec4:	00003717          	auipc	a4,0x3
    80005ec8:	6bc70713          	addi	a4,a4,1724 # 80009580 <CONSOLE_STATUS+0x570>
    80005ecc:	00e484b3          	add	s1,s1,a4
    80005ed0:	0004a783          	lw	a5,0(s1)
    80005ed4:	00e787b3          	add	a5,a5,a4
    80005ed8:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80005edc:	fffff097          	auipc	ra,0xfffff
    80005ee0:	f40080e7          	jalr	-192(ra) # 80004e1c <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005ee4:	00003517          	auipc	a0,0x3
    80005ee8:	46450513          	addi	a0,a0,1124 # 80009348 <CONSOLE_STATUS+0x338>
    80005eec:	00000097          	auipc	ra,0x0
    80005ef0:	8cc080e7          	jalr	-1844(ra) # 800057b8 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80005ef4:	01813083          	ld	ra,24(sp)
    80005ef8:	01013403          	ld	s0,16(sp)
    80005efc:	00813483          	ld	s1,8(sp)
    80005f00:	02010113          	addi	sp,sp,32
    80005f04:	00008067          	ret
            Threads_CPP_API_test();
    80005f08:	ffffe097          	auipc	ra,0xffffe
    80005f0c:	df4080e7          	jalr	-524(ra) # 80003cfc <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80005f10:	00003517          	auipc	a0,0x3
    80005f14:	47850513          	addi	a0,a0,1144 # 80009388 <CONSOLE_STATUS+0x378>
    80005f18:	00000097          	auipc	ra,0x0
    80005f1c:	8a0080e7          	jalr	-1888(ra) # 800057b8 <_Z11printStringPKc>
            break;
    80005f20:	fd5ff06f          	j	80005ef4 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80005f24:	ffffd097          	auipc	ra,0xffffd
    80005f28:	62c080e7          	jalr	1580(ra) # 80003550 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005f2c:	00003517          	auipc	a0,0x3
    80005f30:	49c50513          	addi	a0,a0,1180 # 800093c8 <CONSOLE_STATUS+0x3b8>
    80005f34:	00000097          	auipc	ra,0x0
    80005f38:	884080e7          	jalr	-1916(ra) # 800057b8 <_Z11printStringPKc>
            break;
    80005f3c:	fb9ff06f          	j	80005ef4 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80005f40:	fffff097          	auipc	ra,0xfffff
    80005f44:	234080e7          	jalr	564(ra) # 80005174 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80005f48:	00003517          	auipc	a0,0x3
    80005f4c:	4d050513          	addi	a0,a0,1232 # 80009418 <CONSOLE_STATUS+0x408>
    80005f50:	00000097          	auipc	ra,0x0
    80005f54:	868080e7          	jalr	-1944(ra) # 800057b8 <_Z11printStringPKc>
            break;
    80005f58:	f9dff06f          	j	80005ef4 <_Z8userMainv+0x74>
            testSleeping();
    80005f5c:	00000097          	auipc	ra,0x0
    80005f60:	11c080e7          	jalr	284(ra) # 80006078 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80005f64:	00003517          	auipc	a0,0x3
    80005f68:	50c50513          	addi	a0,a0,1292 # 80009470 <CONSOLE_STATUS+0x460>
    80005f6c:	00000097          	auipc	ra,0x0
    80005f70:	84c080e7          	jalr	-1972(ra) # 800057b8 <_Z11printStringPKc>
            break;
    80005f74:	f81ff06f          	j	80005ef4 <_Z8userMainv+0x74>
            testConsumerProducer();
    80005f78:	ffffe097          	auipc	ra,0xffffe
    80005f7c:	244080e7          	jalr	580(ra) # 800041bc <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80005f80:	00003517          	auipc	a0,0x3
    80005f84:	52050513          	addi	a0,a0,1312 # 800094a0 <CONSOLE_STATUS+0x490>
    80005f88:	00000097          	auipc	ra,0x0
    80005f8c:	830080e7          	jalr	-2000(ra) # 800057b8 <_Z11printStringPKc>
            break;
    80005f90:	f65ff06f          	j	80005ef4 <_Z8userMainv+0x74>
            System_Mode_test();
    80005f94:	00000097          	auipc	ra,0x0
    80005f98:	658080e7          	jalr	1624(ra) # 800065ec <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005f9c:	00003517          	auipc	a0,0x3
    80005fa0:	54450513          	addi	a0,a0,1348 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80005fa4:	00000097          	auipc	ra,0x0
    80005fa8:	814080e7          	jalr	-2028(ra) # 800057b8 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005fac:	00003517          	auipc	a0,0x3
    80005fb0:	55450513          	addi	a0,a0,1364 # 80009500 <CONSOLE_STATUS+0x4f0>
    80005fb4:	00000097          	auipc	ra,0x0
    80005fb8:	804080e7          	jalr	-2044(ra) # 800057b8 <_Z11printStringPKc>
            break;
    80005fbc:	f39ff06f          	j	80005ef4 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80005fc0:	00003517          	auipc	a0,0x3
    80005fc4:	59850513          	addi	a0,a0,1432 # 80009558 <CONSOLE_STATUS+0x548>
    80005fc8:	fffff097          	auipc	ra,0xfffff
    80005fcc:	7f0080e7          	jalr	2032(ra) # 800057b8 <_Z11printStringPKc>
    80005fd0:	f25ff06f          	j	80005ef4 <_Z8userMainv+0x74>

0000000080005fd4 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005fd4:	fe010113          	addi	sp,sp,-32
    80005fd8:	00113c23          	sd	ra,24(sp)
    80005fdc:	00813823          	sd	s0,16(sp)
    80005fe0:	00913423          	sd	s1,8(sp)
    80005fe4:	01213023          	sd	s2,0(sp)
    80005fe8:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005fec:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005ff0:	00600493          	li	s1,6
    while (--i > 0) {
    80005ff4:	fff4849b          	addiw	s1,s1,-1
    80005ff8:	04905463          	blez	s1,80006040 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005ffc:	00003517          	auipc	a0,0x3
    80006000:	5a450513          	addi	a0,a0,1444 # 800095a0 <CONSOLE_STATUS+0x590>
    80006004:	fffff097          	auipc	ra,0xfffff
    80006008:	7b4080e7          	jalr	1972(ra) # 800057b8 <_Z11printStringPKc>
        printInt(sleep_time);
    8000600c:	00000613          	li	a2,0
    80006010:	00a00593          	li	a1,10
    80006014:	0009051b          	sext.w	a0,s2
    80006018:	00000097          	auipc	ra,0x0
    8000601c:	950080e7          	jalr	-1712(ra) # 80005968 <_Z8printIntiii>
        printString(" !\n");
    80006020:	00003517          	auipc	a0,0x3
    80006024:	58850513          	addi	a0,a0,1416 # 800095a8 <CONSOLE_STATUS+0x598>
    80006028:	fffff097          	auipc	ra,0xfffff
    8000602c:	790080e7          	jalr	1936(ra) # 800057b8 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006030:	00090513          	mv	a0,s2
    80006034:	ffffb097          	auipc	ra,0xffffb
    80006038:	33c080e7          	jalr	828(ra) # 80001370 <_Z10time_sleepm>
    while (--i > 0) {
    8000603c:	fb9ff06f          	j	80005ff4 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006040:	00a00793          	li	a5,10
    80006044:	02f95933          	divu	s2,s2,a5
    80006048:	fff90913          	addi	s2,s2,-1
    8000604c:	00006797          	auipc	a5,0x6
    80006050:	cdc78793          	addi	a5,a5,-804 # 8000bd28 <_ZL8finished>
    80006054:	01278933          	add	s2,a5,s2
    80006058:	00100793          	li	a5,1
    8000605c:	00f90023          	sb	a5,0(s2)
}
    80006060:	01813083          	ld	ra,24(sp)
    80006064:	01013403          	ld	s0,16(sp)
    80006068:	00813483          	ld	s1,8(sp)
    8000606c:	00013903          	ld	s2,0(sp)
    80006070:	02010113          	addi	sp,sp,32
    80006074:	00008067          	ret

0000000080006078 <_Z12testSleepingv>:

void testSleeping() {
    80006078:	fc010113          	addi	sp,sp,-64
    8000607c:	02113c23          	sd	ra,56(sp)
    80006080:	02813823          	sd	s0,48(sp)
    80006084:	02913423          	sd	s1,40(sp)
    80006088:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    8000608c:	00a00793          	li	a5,10
    80006090:	fcf43823          	sd	a5,-48(s0)
    80006094:	01400793          	li	a5,20
    80006098:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    8000609c:	00000493          	li	s1,0
    800060a0:	02c0006f          	j	800060cc <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800060a4:	00349793          	slli	a5,s1,0x3
    800060a8:	fd040613          	addi	a2,s0,-48
    800060ac:	00f60633          	add	a2,a2,a5
    800060b0:	00000597          	auipc	a1,0x0
    800060b4:	f2458593          	addi	a1,a1,-220 # 80005fd4 <_ZL9sleepyRunPv>
    800060b8:	fc040513          	addi	a0,s0,-64
    800060bc:	00f50533          	add	a0,a0,a5
    800060c0:	ffffb097          	auipc	ra,0xffffb
    800060c4:	104080e7          	jalr	260(ra) # 800011c4 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800060c8:	0014849b          	addiw	s1,s1,1
    800060cc:	00100793          	li	a5,1
    800060d0:	fc97dae3          	bge	a5,s1,800060a4 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800060d4:	00006797          	auipc	a5,0x6
    800060d8:	c547c783          	lbu	a5,-940(a5) # 8000bd28 <_ZL8finished>
    800060dc:	fe078ce3          	beqz	a5,800060d4 <_Z12testSleepingv+0x5c>
    800060e0:	00006797          	auipc	a5,0x6
    800060e4:	c497c783          	lbu	a5,-951(a5) # 8000bd29 <_ZL8finished+0x1>
    800060e8:	fe0786e3          	beqz	a5,800060d4 <_Z12testSleepingv+0x5c>
}
    800060ec:	03813083          	ld	ra,56(sp)
    800060f0:	03013403          	ld	s0,48(sp)
    800060f4:	02813483          	ld	s1,40(sp)
    800060f8:	04010113          	addi	sp,sp,64
    800060fc:	00008067          	ret

0000000080006100 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80006100:	fe010113          	addi	sp,sp,-32
    80006104:	00113c23          	sd	ra,24(sp)
    80006108:	00813823          	sd	s0,16(sp)
    8000610c:	00913423          	sd	s1,8(sp)
    80006110:	01213023          	sd	s2,0(sp)
    80006114:	02010413          	addi	s0,sp,32
    80006118:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000611c:	00100793          	li	a5,1
    80006120:	02a7f863          	bgeu	a5,a0,80006150 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80006124:	00a00793          	li	a5,10
    80006128:	02f577b3          	remu	a5,a0,a5
    8000612c:	02078e63          	beqz	a5,80006168 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80006130:	fff48513          	addi	a0,s1,-1
    80006134:	00000097          	auipc	ra,0x0
    80006138:	fcc080e7          	jalr	-52(ra) # 80006100 <_ZL9fibonaccim>
    8000613c:	00050913          	mv	s2,a0
    80006140:	ffe48513          	addi	a0,s1,-2
    80006144:	00000097          	auipc	ra,0x0
    80006148:	fbc080e7          	jalr	-68(ra) # 80006100 <_ZL9fibonaccim>
    8000614c:	00a90533          	add	a0,s2,a0
}
    80006150:	01813083          	ld	ra,24(sp)
    80006154:	01013403          	ld	s0,16(sp)
    80006158:	00813483          	ld	s1,8(sp)
    8000615c:	00013903          	ld	s2,0(sp)
    80006160:	02010113          	addi	sp,sp,32
    80006164:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006168:	ffffb097          	auipc	ra,0xffffb
    8000616c:	0b8080e7          	jalr	184(ra) # 80001220 <_Z15thread_dispatchv>
    80006170:	fc1ff06f          	j	80006130 <_ZL9fibonaccim+0x30>

0000000080006174 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80006174:	fe010113          	addi	sp,sp,-32
    80006178:	00113c23          	sd	ra,24(sp)
    8000617c:	00813823          	sd	s0,16(sp)
    80006180:	00913423          	sd	s1,8(sp)
    80006184:	01213023          	sd	s2,0(sp)
    80006188:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000618c:	00a00493          	li	s1,10
    80006190:	0400006f          	j	800061d0 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006194:	00003517          	auipc	a0,0x3
    80006198:	0e450513          	addi	a0,a0,228 # 80009278 <CONSOLE_STATUS+0x268>
    8000619c:	fffff097          	auipc	ra,0xfffff
    800061a0:	61c080e7          	jalr	1564(ra) # 800057b8 <_Z11printStringPKc>
    800061a4:	00000613          	li	a2,0
    800061a8:	00a00593          	li	a1,10
    800061ac:	00048513          	mv	a0,s1
    800061b0:	fffff097          	auipc	ra,0xfffff
    800061b4:	7b8080e7          	jalr	1976(ra) # 80005968 <_Z8printIntiii>
    800061b8:	00003517          	auipc	a0,0x3
    800061bc:	2b050513          	addi	a0,a0,688 # 80009468 <CONSOLE_STATUS+0x458>
    800061c0:	fffff097          	auipc	ra,0xfffff
    800061c4:	5f8080e7          	jalr	1528(ra) # 800057b8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800061c8:	0014849b          	addiw	s1,s1,1
    800061cc:	0ff4f493          	andi	s1,s1,255
    800061d0:	00c00793          	li	a5,12
    800061d4:	fc97f0e3          	bgeu	a5,s1,80006194 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800061d8:	00003517          	auipc	a0,0x3
    800061dc:	0a850513          	addi	a0,a0,168 # 80009280 <CONSOLE_STATUS+0x270>
    800061e0:	fffff097          	auipc	ra,0xfffff
    800061e4:	5d8080e7          	jalr	1496(ra) # 800057b8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800061e8:	00500313          	li	t1,5
    thread_dispatch();
    800061ec:	ffffb097          	auipc	ra,0xffffb
    800061f0:	034080e7          	jalr	52(ra) # 80001220 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800061f4:	01000513          	li	a0,16
    800061f8:	00000097          	auipc	ra,0x0
    800061fc:	f08080e7          	jalr	-248(ra) # 80006100 <_ZL9fibonaccim>
    80006200:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80006204:	00003517          	auipc	a0,0x3
    80006208:	08c50513          	addi	a0,a0,140 # 80009290 <CONSOLE_STATUS+0x280>
    8000620c:	fffff097          	auipc	ra,0xfffff
    80006210:	5ac080e7          	jalr	1452(ra) # 800057b8 <_Z11printStringPKc>
    80006214:	00000613          	li	a2,0
    80006218:	00a00593          	li	a1,10
    8000621c:	0009051b          	sext.w	a0,s2
    80006220:	fffff097          	auipc	ra,0xfffff
    80006224:	748080e7          	jalr	1864(ra) # 80005968 <_Z8printIntiii>
    80006228:	00003517          	auipc	a0,0x3
    8000622c:	24050513          	addi	a0,a0,576 # 80009468 <CONSOLE_STATUS+0x458>
    80006230:	fffff097          	auipc	ra,0xfffff
    80006234:	588080e7          	jalr	1416(ra) # 800057b8 <_Z11printStringPKc>
    80006238:	0400006f          	j	80006278 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000623c:	00003517          	auipc	a0,0x3
    80006240:	03c50513          	addi	a0,a0,60 # 80009278 <CONSOLE_STATUS+0x268>
    80006244:	fffff097          	auipc	ra,0xfffff
    80006248:	574080e7          	jalr	1396(ra) # 800057b8 <_Z11printStringPKc>
    8000624c:	00000613          	li	a2,0
    80006250:	00a00593          	li	a1,10
    80006254:	00048513          	mv	a0,s1
    80006258:	fffff097          	auipc	ra,0xfffff
    8000625c:	710080e7          	jalr	1808(ra) # 80005968 <_Z8printIntiii>
    80006260:	00003517          	auipc	a0,0x3
    80006264:	20850513          	addi	a0,a0,520 # 80009468 <CONSOLE_STATUS+0x458>
    80006268:	fffff097          	auipc	ra,0xfffff
    8000626c:	550080e7          	jalr	1360(ra) # 800057b8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006270:	0014849b          	addiw	s1,s1,1
    80006274:	0ff4f493          	andi	s1,s1,255
    80006278:	00f00793          	li	a5,15
    8000627c:	fc97f0e3          	bgeu	a5,s1,8000623c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006280:	00003517          	auipc	a0,0x3
    80006284:	02050513          	addi	a0,a0,32 # 800092a0 <CONSOLE_STATUS+0x290>
    80006288:	fffff097          	auipc	ra,0xfffff
    8000628c:	530080e7          	jalr	1328(ra) # 800057b8 <_Z11printStringPKc>
    finishedD = true;
    80006290:	00100793          	li	a5,1
    80006294:	00006717          	auipc	a4,0x6
    80006298:	a8f70b23          	sb	a5,-1386(a4) # 8000bd2a <_ZL9finishedD>
    thread_dispatch();
    8000629c:	ffffb097          	auipc	ra,0xffffb
    800062a0:	f84080e7          	jalr	-124(ra) # 80001220 <_Z15thread_dispatchv>
}
    800062a4:	01813083          	ld	ra,24(sp)
    800062a8:	01013403          	ld	s0,16(sp)
    800062ac:	00813483          	ld	s1,8(sp)
    800062b0:	00013903          	ld	s2,0(sp)
    800062b4:	02010113          	addi	sp,sp,32
    800062b8:	00008067          	ret

00000000800062bc <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800062bc:	fe010113          	addi	sp,sp,-32
    800062c0:	00113c23          	sd	ra,24(sp)
    800062c4:	00813823          	sd	s0,16(sp)
    800062c8:	00913423          	sd	s1,8(sp)
    800062cc:	01213023          	sd	s2,0(sp)
    800062d0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800062d4:	00000493          	li	s1,0
    800062d8:	0400006f          	j	80006318 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800062dc:	00003517          	auipc	a0,0x3
    800062e0:	f6c50513          	addi	a0,a0,-148 # 80009248 <CONSOLE_STATUS+0x238>
    800062e4:	fffff097          	auipc	ra,0xfffff
    800062e8:	4d4080e7          	jalr	1236(ra) # 800057b8 <_Z11printStringPKc>
    800062ec:	00000613          	li	a2,0
    800062f0:	00a00593          	li	a1,10
    800062f4:	00048513          	mv	a0,s1
    800062f8:	fffff097          	auipc	ra,0xfffff
    800062fc:	670080e7          	jalr	1648(ra) # 80005968 <_Z8printIntiii>
    80006300:	00003517          	auipc	a0,0x3
    80006304:	16850513          	addi	a0,a0,360 # 80009468 <CONSOLE_STATUS+0x458>
    80006308:	fffff097          	auipc	ra,0xfffff
    8000630c:	4b0080e7          	jalr	1200(ra) # 800057b8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006310:	0014849b          	addiw	s1,s1,1
    80006314:	0ff4f493          	andi	s1,s1,255
    80006318:	00200793          	li	a5,2
    8000631c:	fc97f0e3          	bgeu	a5,s1,800062dc <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006320:	00003517          	auipc	a0,0x3
    80006324:	f3050513          	addi	a0,a0,-208 # 80009250 <CONSOLE_STATUS+0x240>
    80006328:	fffff097          	auipc	ra,0xfffff
    8000632c:	490080e7          	jalr	1168(ra) # 800057b8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006330:	00700313          	li	t1,7
    thread_dispatch();
    80006334:	ffffb097          	auipc	ra,0xffffb
    80006338:	eec080e7          	jalr	-276(ra) # 80001220 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000633c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006340:	00003517          	auipc	a0,0x3
    80006344:	f2050513          	addi	a0,a0,-224 # 80009260 <CONSOLE_STATUS+0x250>
    80006348:	fffff097          	auipc	ra,0xfffff
    8000634c:	470080e7          	jalr	1136(ra) # 800057b8 <_Z11printStringPKc>
    80006350:	00000613          	li	a2,0
    80006354:	00a00593          	li	a1,10
    80006358:	0009051b          	sext.w	a0,s2
    8000635c:	fffff097          	auipc	ra,0xfffff
    80006360:	60c080e7          	jalr	1548(ra) # 80005968 <_Z8printIntiii>
    80006364:	00003517          	auipc	a0,0x3
    80006368:	10450513          	addi	a0,a0,260 # 80009468 <CONSOLE_STATUS+0x458>
    8000636c:	fffff097          	auipc	ra,0xfffff
    80006370:	44c080e7          	jalr	1100(ra) # 800057b8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006374:	00c00513          	li	a0,12
    80006378:	00000097          	auipc	ra,0x0
    8000637c:	d88080e7          	jalr	-632(ra) # 80006100 <_ZL9fibonaccim>
    80006380:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006384:	00003517          	auipc	a0,0x3
    80006388:	ee450513          	addi	a0,a0,-284 # 80009268 <CONSOLE_STATUS+0x258>
    8000638c:	fffff097          	auipc	ra,0xfffff
    80006390:	42c080e7          	jalr	1068(ra) # 800057b8 <_Z11printStringPKc>
    80006394:	00000613          	li	a2,0
    80006398:	00a00593          	li	a1,10
    8000639c:	0009051b          	sext.w	a0,s2
    800063a0:	fffff097          	auipc	ra,0xfffff
    800063a4:	5c8080e7          	jalr	1480(ra) # 80005968 <_Z8printIntiii>
    800063a8:	00003517          	auipc	a0,0x3
    800063ac:	0c050513          	addi	a0,a0,192 # 80009468 <CONSOLE_STATUS+0x458>
    800063b0:	fffff097          	auipc	ra,0xfffff
    800063b4:	408080e7          	jalr	1032(ra) # 800057b8 <_Z11printStringPKc>
    800063b8:	0400006f          	j	800063f8 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800063bc:	00003517          	auipc	a0,0x3
    800063c0:	e8c50513          	addi	a0,a0,-372 # 80009248 <CONSOLE_STATUS+0x238>
    800063c4:	fffff097          	auipc	ra,0xfffff
    800063c8:	3f4080e7          	jalr	1012(ra) # 800057b8 <_Z11printStringPKc>
    800063cc:	00000613          	li	a2,0
    800063d0:	00a00593          	li	a1,10
    800063d4:	00048513          	mv	a0,s1
    800063d8:	fffff097          	auipc	ra,0xfffff
    800063dc:	590080e7          	jalr	1424(ra) # 80005968 <_Z8printIntiii>
    800063e0:	00003517          	auipc	a0,0x3
    800063e4:	08850513          	addi	a0,a0,136 # 80009468 <CONSOLE_STATUS+0x458>
    800063e8:	fffff097          	auipc	ra,0xfffff
    800063ec:	3d0080e7          	jalr	976(ra) # 800057b8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800063f0:	0014849b          	addiw	s1,s1,1
    800063f4:	0ff4f493          	andi	s1,s1,255
    800063f8:	00500793          	li	a5,5
    800063fc:	fc97f0e3          	bgeu	a5,s1,800063bc <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006400:	00003517          	auipc	a0,0x3
    80006404:	e2050513          	addi	a0,a0,-480 # 80009220 <CONSOLE_STATUS+0x210>
    80006408:	fffff097          	auipc	ra,0xfffff
    8000640c:	3b0080e7          	jalr	944(ra) # 800057b8 <_Z11printStringPKc>
    finishedC = true;
    80006410:	00100793          	li	a5,1
    80006414:	00006717          	auipc	a4,0x6
    80006418:	90f70ba3          	sb	a5,-1769(a4) # 8000bd2b <_ZL9finishedC>
    thread_dispatch();
    8000641c:	ffffb097          	auipc	ra,0xffffb
    80006420:	e04080e7          	jalr	-508(ra) # 80001220 <_Z15thread_dispatchv>
}
    80006424:	01813083          	ld	ra,24(sp)
    80006428:	01013403          	ld	s0,16(sp)
    8000642c:	00813483          	ld	s1,8(sp)
    80006430:	00013903          	ld	s2,0(sp)
    80006434:	02010113          	addi	sp,sp,32
    80006438:	00008067          	ret

000000008000643c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000643c:	fe010113          	addi	sp,sp,-32
    80006440:	00113c23          	sd	ra,24(sp)
    80006444:	00813823          	sd	s0,16(sp)
    80006448:	00913423          	sd	s1,8(sp)
    8000644c:	01213023          	sd	s2,0(sp)
    80006450:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006454:	00000913          	li	s2,0
    80006458:	0400006f          	j	80006498 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    8000645c:	ffffb097          	auipc	ra,0xffffb
    80006460:	dc4080e7          	jalr	-572(ra) # 80001220 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006464:	00148493          	addi	s1,s1,1
    80006468:	000027b7          	lui	a5,0x2
    8000646c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006470:	0097ee63          	bltu	a5,s1,8000648c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006474:	00000713          	li	a4,0
    80006478:	000077b7          	lui	a5,0x7
    8000647c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006480:	fce7eee3          	bltu	a5,a4,8000645c <_ZL11workerBodyBPv+0x20>
    80006484:	00170713          	addi	a4,a4,1
    80006488:	ff1ff06f          	j	80006478 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    8000648c:	00a00793          	li	a5,10
    80006490:	04f90663          	beq	s2,a5,800064dc <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006494:	00190913          	addi	s2,s2,1
    80006498:	00f00793          	li	a5,15
    8000649c:	0527e463          	bltu	a5,s2,800064e4 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    800064a0:	00003517          	auipc	a0,0x3
    800064a4:	d9050513          	addi	a0,a0,-624 # 80009230 <CONSOLE_STATUS+0x220>
    800064a8:	fffff097          	auipc	ra,0xfffff
    800064ac:	310080e7          	jalr	784(ra) # 800057b8 <_Z11printStringPKc>
    800064b0:	00000613          	li	a2,0
    800064b4:	00a00593          	li	a1,10
    800064b8:	0009051b          	sext.w	a0,s2
    800064bc:	fffff097          	auipc	ra,0xfffff
    800064c0:	4ac080e7          	jalr	1196(ra) # 80005968 <_Z8printIntiii>
    800064c4:	00003517          	auipc	a0,0x3
    800064c8:	fa450513          	addi	a0,a0,-92 # 80009468 <CONSOLE_STATUS+0x458>
    800064cc:	fffff097          	auipc	ra,0xfffff
    800064d0:	2ec080e7          	jalr	748(ra) # 800057b8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800064d4:	00000493          	li	s1,0
    800064d8:	f91ff06f          	j	80006468 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    800064dc:	14102ff3          	csrr	t6,sepc
    800064e0:	fb5ff06f          	j	80006494 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800064e4:	00003517          	auipc	a0,0x3
    800064e8:	d5450513          	addi	a0,a0,-684 # 80009238 <CONSOLE_STATUS+0x228>
    800064ec:	fffff097          	auipc	ra,0xfffff
    800064f0:	2cc080e7          	jalr	716(ra) # 800057b8 <_Z11printStringPKc>
    finishedB = true;
    800064f4:	00100793          	li	a5,1
    800064f8:	00006717          	auipc	a4,0x6
    800064fc:	82f70a23          	sb	a5,-1996(a4) # 8000bd2c <_ZL9finishedB>
    thread_dispatch();
    80006500:	ffffb097          	auipc	ra,0xffffb
    80006504:	d20080e7          	jalr	-736(ra) # 80001220 <_Z15thread_dispatchv>
}
    80006508:	01813083          	ld	ra,24(sp)
    8000650c:	01013403          	ld	s0,16(sp)
    80006510:	00813483          	ld	s1,8(sp)
    80006514:	00013903          	ld	s2,0(sp)
    80006518:	02010113          	addi	sp,sp,32
    8000651c:	00008067          	ret

0000000080006520 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006520:	fe010113          	addi	sp,sp,-32
    80006524:	00113c23          	sd	ra,24(sp)
    80006528:	00813823          	sd	s0,16(sp)
    8000652c:	00913423          	sd	s1,8(sp)
    80006530:	01213023          	sd	s2,0(sp)
    80006534:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006538:	00000913          	li	s2,0
    8000653c:	0380006f          	j	80006574 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006540:	ffffb097          	auipc	ra,0xffffb
    80006544:	ce0080e7          	jalr	-800(ra) # 80001220 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006548:	00148493          	addi	s1,s1,1
    8000654c:	000027b7          	lui	a5,0x2
    80006550:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006554:	0097ee63          	bltu	a5,s1,80006570 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006558:	00000713          	li	a4,0
    8000655c:	000077b7          	lui	a5,0x7
    80006560:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006564:	fce7eee3          	bltu	a5,a4,80006540 <_ZL11workerBodyAPv+0x20>
    80006568:	00170713          	addi	a4,a4,1
    8000656c:	ff1ff06f          	j	8000655c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006570:	00190913          	addi	s2,s2,1
    80006574:	00900793          	li	a5,9
    80006578:	0527e063          	bltu	a5,s2,800065b8 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000657c:	00003517          	auipc	a0,0x3
    80006580:	c9c50513          	addi	a0,a0,-868 # 80009218 <CONSOLE_STATUS+0x208>
    80006584:	fffff097          	auipc	ra,0xfffff
    80006588:	234080e7          	jalr	564(ra) # 800057b8 <_Z11printStringPKc>
    8000658c:	00000613          	li	a2,0
    80006590:	00a00593          	li	a1,10
    80006594:	0009051b          	sext.w	a0,s2
    80006598:	fffff097          	auipc	ra,0xfffff
    8000659c:	3d0080e7          	jalr	976(ra) # 80005968 <_Z8printIntiii>
    800065a0:	00003517          	auipc	a0,0x3
    800065a4:	ec850513          	addi	a0,a0,-312 # 80009468 <CONSOLE_STATUS+0x458>
    800065a8:	fffff097          	auipc	ra,0xfffff
    800065ac:	210080e7          	jalr	528(ra) # 800057b8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800065b0:	00000493          	li	s1,0
    800065b4:	f99ff06f          	j	8000654c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800065b8:	00003517          	auipc	a0,0x3
    800065bc:	c6850513          	addi	a0,a0,-920 # 80009220 <CONSOLE_STATUS+0x210>
    800065c0:	fffff097          	auipc	ra,0xfffff
    800065c4:	1f8080e7          	jalr	504(ra) # 800057b8 <_Z11printStringPKc>
    finishedA = true;
    800065c8:	00100793          	li	a5,1
    800065cc:	00005717          	auipc	a4,0x5
    800065d0:	76f700a3          	sb	a5,1889(a4) # 8000bd2d <_ZL9finishedA>
}
    800065d4:	01813083          	ld	ra,24(sp)
    800065d8:	01013403          	ld	s0,16(sp)
    800065dc:	00813483          	ld	s1,8(sp)
    800065e0:	00013903          	ld	s2,0(sp)
    800065e4:	02010113          	addi	sp,sp,32
    800065e8:	00008067          	ret

00000000800065ec <_Z16System_Mode_testv>:


void System_Mode_test() {
    800065ec:	fd010113          	addi	sp,sp,-48
    800065f0:	02113423          	sd	ra,40(sp)
    800065f4:	02813023          	sd	s0,32(sp)
    800065f8:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800065fc:	00000613          	li	a2,0
    80006600:	00000597          	auipc	a1,0x0
    80006604:	f2058593          	addi	a1,a1,-224 # 80006520 <_ZL11workerBodyAPv>
    80006608:	fd040513          	addi	a0,s0,-48
    8000660c:	ffffb097          	auipc	ra,0xffffb
    80006610:	bb8080e7          	jalr	-1096(ra) # 800011c4 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80006614:	00003517          	auipc	a0,0x3
    80006618:	c9c50513          	addi	a0,a0,-868 # 800092b0 <CONSOLE_STATUS+0x2a0>
    8000661c:	fffff097          	auipc	ra,0xfffff
    80006620:	19c080e7          	jalr	412(ra) # 800057b8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006624:	00000613          	li	a2,0
    80006628:	00000597          	auipc	a1,0x0
    8000662c:	e1458593          	addi	a1,a1,-492 # 8000643c <_ZL11workerBodyBPv>
    80006630:	fd840513          	addi	a0,s0,-40
    80006634:	ffffb097          	auipc	ra,0xffffb
    80006638:	b90080e7          	jalr	-1136(ra) # 800011c4 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    8000663c:	00003517          	auipc	a0,0x3
    80006640:	c8c50513          	addi	a0,a0,-884 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80006644:	fffff097          	auipc	ra,0xfffff
    80006648:	174080e7          	jalr	372(ra) # 800057b8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000664c:	00000613          	li	a2,0
    80006650:	00000597          	auipc	a1,0x0
    80006654:	c6c58593          	addi	a1,a1,-916 # 800062bc <_ZL11workerBodyCPv>
    80006658:	fe040513          	addi	a0,s0,-32
    8000665c:	ffffb097          	auipc	ra,0xffffb
    80006660:	b68080e7          	jalr	-1176(ra) # 800011c4 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80006664:	00003517          	auipc	a0,0x3
    80006668:	c7c50513          	addi	a0,a0,-900 # 800092e0 <CONSOLE_STATUS+0x2d0>
    8000666c:	fffff097          	auipc	ra,0xfffff
    80006670:	14c080e7          	jalr	332(ra) # 800057b8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006674:	00000613          	li	a2,0
    80006678:	00000597          	auipc	a1,0x0
    8000667c:	afc58593          	addi	a1,a1,-1284 # 80006174 <_ZL11workerBodyDPv>
    80006680:	fe840513          	addi	a0,s0,-24
    80006684:	ffffb097          	auipc	ra,0xffffb
    80006688:	b40080e7          	jalr	-1216(ra) # 800011c4 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    8000668c:	00003517          	auipc	a0,0x3
    80006690:	c6c50513          	addi	a0,a0,-916 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80006694:	fffff097          	auipc	ra,0xfffff
    80006698:	124080e7          	jalr	292(ra) # 800057b8 <_Z11printStringPKc>
    8000669c:	00c0006f          	j	800066a8 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800066a0:	ffffb097          	auipc	ra,0xffffb
    800066a4:	b80080e7          	jalr	-1152(ra) # 80001220 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800066a8:	00005797          	auipc	a5,0x5
    800066ac:	6857c783          	lbu	a5,1669(a5) # 8000bd2d <_ZL9finishedA>
    800066b0:	fe0788e3          	beqz	a5,800066a0 <_Z16System_Mode_testv+0xb4>
    800066b4:	00005797          	auipc	a5,0x5
    800066b8:	6787c783          	lbu	a5,1656(a5) # 8000bd2c <_ZL9finishedB>
    800066bc:	fe0782e3          	beqz	a5,800066a0 <_Z16System_Mode_testv+0xb4>
    800066c0:	00005797          	auipc	a5,0x5
    800066c4:	66b7c783          	lbu	a5,1643(a5) # 8000bd2b <_ZL9finishedC>
    800066c8:	fc078ce3          	beqz	a5,800066a0 <_Z16System_Mode_testv+0xb4>
    800066cc:	00005797          	auipc	a5,0x5
    800066d0:	65e7c783          	lbu	a5,1630(a5) # 8000bd2a <_ZL9finishedD>
    800066d4:	fc0786e3          	beqz	a5,800066a0 <_Z16System_Mode_testv+0xb4>
    }

}
    800066d8:	02813083          	ld	ra,40(sp)
    800066dc:	02013403          	ld	s0,32(sp)
    800066e0:	03010113          	addi	sp,sp,48
    800066e4:	00008067          	ret

00000000800066e8 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800066e8:	fe010113          	addi	sp,sp,-32
    800066ec:	00113c23          	sd	ra,24(sp)
    800066f0:	00813823          	sd	s0,16(sp)
    800066f4:	00913423          	sd	s1,8(sp)
    800066f8:	01213023          	sd	s2,0(sp)
    800066fc:	02010413          	addi	s0,sp,32
    80006700:	00050493          	mv	s1,a0
    80006704:	00058913          	mv	s2,a1
    80006708:	0015879b          	addiw	a5,a1,1
    8000670c:	0007851b          	sext.w	a0,a5
    80006710:	00f4a023          	sw	a5,0(s1)
    80006714:	0004a823          	sw	zero,16(s1)
    80006718:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000671c:	00251513          	slli	a0,a0,0x2
    80006720:	ffffb097          	auipc	ra,0xffffb
    80006724:	a40080e7          	jalr	-1472(ra) # 80001160 <_Z9mem_allocm>
    80006728:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    8000672c:	00000593          	li	a1,0
    80006730:	02048513          	addi	a0,s1,32
    80006734:	ffffb097          	auipc	ra,0xffffb
    80006738:	b0c080e7          	jalr	-1268(ra) # 80001240 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    8000673c:	00090593          	mv	a1,s2
    80006740:	01848513          	addi	a0,s1,24
    80006744:	ffffb097          	auipc	ra,0xffffb
    80006748:	afc080e7          	jalr	-1284(ra) # 80001240 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    8000674c:	00100593          	li	a1,1
    80006750:	02848513          	addi	a0,s1,40
    80006754:	ffffb097          	auipc	ra,0xffffb
    80006758:	aec080e7          	jalr	-1300(ra) # 80001240 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    8000675c:	00100593          	li	a1,1
    80006760:	03048513          	addi	a0,s1,48
    80006764:	ffffb097          	auipc	ra,0xffffb
    80006768:	adc080e7          	jalr	-1316(ra) # 80001240 <_Z8sem_openPP4_semj>
}
    8000676c:	01813083          	ld	ra,24(sp)
    80006770:	01013403          	ld	s0,16(sp)
    80006774:	00813483          	ld	s1,8(sp)
    80006778:	00013903          	ld	s2,0(sp)
    8000677c:	02010113          	addi	sp,sp,32
    80006780:	00008067          	ret

0000000080006784 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006784:	fe010113          	addi	sp,sp,-32
    80006788:	00113c23          	sd	ra,24(sp)
    8000678c:	00813823          	sd	s0,16(sp)
    80006790:	00913423          	sd	s1,8(sp)
    80006794:	01213023          	sd	s2,0(sp)
    80006798:	02010413          	addi	s0,sp,32
    8000679c:	00050493          	mv	s1,a0
    800067a0:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800067a4:	01853503          	ld	a0,24(a0)
    800067a8:	ffffb097          	auipc	ra,0xffffb
    800067ac:	b00080e7          	jalr	-1280(ra) # 800012a8 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    800067b0:	0304b503          	ld	a0,48(s1)
    800067b4:	ffffb097          	auipc	ra,0xffffb
    800067b8:	af4080e7          	jalr	-1292(ra) # 800012a8 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    800067bc:	0084b783          	ld	a5,8(s1)
    800067c0:	0144a703          	lw	a4,20(s1)
    800067c4:	00271713          	slli	a4,a4,0x2
    800067c8:	00e787b3          	add	a5,a5,a4
    800067cc:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800067d0:	0144a783          	lw	a5,20(s1)
    800067d4:	0017879b          	addiw	a5,a5,1
    800067d8:	0004a703          	lw	a4,0(s1)
    800067dc:	02e7e7bb          	remw	a5,a5,a4
    800067e0:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800067e4:	0304b503          	ld	a0,48(s1)
    800067e8:	ffffb097          	auipc	ra,0xffffb
    800067ec:	af0080e7          	jalr	-1296(ra) # 800012d8 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    800067f0:	0204b503          	ld	a0,32(s1)
    800067f4:	ffffb097          	auipc	ra,0xffffb
    800067f8:	ae4080e7          	jalr	-1308(ra) # 800012d8 <_Z10sem_signalP4_sem>

}
    800067fc:	01813083          	ld	ra,24(sp)
    80006800:	01013403          	ld	s0,16(sp)
    80006804:	00813483          	ld	s1,8(sp)
    80006808:	00013903          	ld	s2,0(sp)
    8000680c:	02010113          	addi	sp,sp,32
    80006810:	00008067          	ret

0000000080006814 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006814:	fe010113          	addi	sp,sp,-32
    80006818:	00113c23          	sd	ra,24(sp)
    8000681c:	00813823          	sd	s0,16(sp)
    80006820:	00913423          	sd	s1,8(sp)
    80006824:	01213023          	sd	s2,0(sp)
    80006828:	02010413          	addi	s0,sp,32
    8000682c:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006830:	02053503          	ld	a0,32(a0)
    80006834:	ffffb097          	auipc	ra,0xffffb
    80006838:	a74080e7          	jalr	-1420(ra) # 800012a8 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    8000683c:	0284b503          	ld	a0,40(s1)
    80006840:	ffffb097          	auipc	ra,0xffffb
    80006844:	a68080e7          	jalr	-1432(ra) # 800012a8 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80006848:	0084b703          	ld	a4,8(s1)
    8000684c:	0104a783          	lw	a5,16(s1)
    80006850:	00279693          	slli	a3,a5,0x2
    80006854:	00d70733          	add	a4,a4,a3
    80006858:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000685c:	0017879b          	addiw	a5,a5,1
    80006860:	0004a703          	lw	a4,0(s1)
    80006864:	02e7e7bb          	remw	a5,a5,a4
    80006868:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    8000686c:	0284b503          	ld	a0,40(s1)
    80006870:	ffffb097          	auipc	ra,0xffffb
    80006874:	a68080e7          	jalr	-1432(ra) # 800012d8 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80006878:	0184b503          	ld	a0,24(s1)
    8000687c:	ffffb097          	auipc	ra,0xffffb
    80006880:	a5c080e7          	jalr	-1444(ra) # 800012d8 <_Z10sem_signalP4_sem>

    return ret;
}
    80006884:	00090513          	mv	a0,s2
    80006888:	01813083          	ld	ra,24(sp)
    8000688c:	01013403          	ld	s0,16(sp)
    80006890:	00813483          	ld	s1,8(sp)
    80006894:	00013903          	ld	s2,0(sp)
    80006898:	02010113          	addi	sp,sp,32
    8000689c:	00008067          	ret

00000000800068a0 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800068a0:	fe010113          	addi	sp,sp,-32
    800068a4:	00113c23          	sd	ra,24(sp)
    800068a8:	00813823          	sd	s0,16(sp)
    800068ac:	00913423          	sd	s1,8(sp)
    800068b0:	01213023          	sd	s2,0(sp)
    800068b4:	02010413          	addi	s0,sp,32
    800068b8:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800068bc:	02853503          	ld	a0,40(a0)
    800068c0:	ffffb097          	auipc	ra,0xffffb
    800068c4:	9e8080e7          	jalr	-1560(ra) # 800012a8 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    800068c8:	0304b503          	ld	a0,48(s1)
    800068cc:	ffffb097          	auipc	ra,0xffffb
    800068d0:	9dc080e7          	jalr	-1572(ra) # 800012a8 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    800068d4:	0144a783          	lw	a5,20(s1)
    800068d8:	0104a903          	lw	s2,16(s1)
    800068dc:	0327ce63          	blt	a5,s2,80006918 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800068e0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800068e4:	0304b503          	ld	a0,48(s1)
    800068e8:	ffffb097          	auipc	ra,0xffffb
    800068ec:	9f0080e7          	jalr	-1552(ra) # 800012d8 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    800068f0:	0284b503          	ld	a0,40(s1)
    800068f4:	ffffb097          	auipc	ra,0xffffb
    800068f8:	9e4080e7          	jalr	-1564(ra) # 800012d8 <_Z10sem_signalP4_sem>

    return ret;
}
    800068fc:	00090513          	mv	a0,s2
    80006900:	01813083          	ld	ra,24(sp)
    80006904:	01013403          	ld	s0,16(sp)
    80006908:	00813483          	ld	s1,8(sp)
    8000690c:	00013903          	ld	s2,0(sp)
    80006910:	02010113          	addi	sp,sp,32
    80006914:	00008067          	ret
        ret = cap - head + tail;
    80006918:	0004a703          	lw	a4,0(s1)
    8000691c:	4127093b          	subw	s2,a4,s2
    80006920:	00f9093b          	addw	s2,s2,a5
    80006924:	fc1ff06f          	j	800068e4 <_ZN6Buffer6getCntEv+0x44>

0000000080006928 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006928:	fe010113          	addi	sp,sp,-32
    8000692c:	00113c23          	sd	ra,24(sp)
    80006930:	00813823          	sd	s0,16(sp)
    80006934:	00913423          	sd	s1,8(sp)
    80006938:	02010413          	addi	s0,sp,32
    8000693c:	00050493          	mv	s1,a0
    putc('\n');
    80006940:	00a00513          	li	a0,10
    80006944:	ffffb097          	auipc	ra,0xffffb
    80006948:	a7c080e7          	jalr	-1412(ra) # 800013c0 <_Z4putcc>
    printString("Buffer deleted!\n");
    8000694c:	00003517          	auipc	a0,0x3
    80006950:	9c450513          	addi	a0,a0,-1596 # 80009310 <CONSOLE_STATUS+0x300>
    80006954:	fffff097          	auipc	ra,0xfffff
    80006958:	e64080e7          	jalr	-412(ra) # 800057b8 <_Z11printStringPKc>
    while (getCnt() > 0) {
    8000695c:	00048513          	mv	a0,s1
    80006960:	00000097          	auipc	ra,0x0
    80006964:	f40080e7          	jalr	-192(ra) # 800068a0 <_ZN6Buffer6getCntEv>
    80006968:	02a05c63          	blez	a0,800069a0 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    8000696c:	0084b783          	ld	a5,8(s1)
    80006970:	0104a703          	lw	a4,16(s1)
    80006974:	00271713          	slli	a4,a4,0x2
    80006978:	00e787b3          	add	a5,a5,a4
        putc(ch);
    8000697c:	0007c503          	lbu	a0,0(a5)
    80006980:	ffffb097          	auipc	ra,0xffffb
    80006984:	a40080e7          	jalr	-1472(ra) # 800013c0 <_Z4putcc>
        head = (head + 1) % cap;
    80006988:	0104a783          	lw	a5,16(s1)
    8000698c:	0017879b          	addiw	a5,a5,1
    80006990:	0004a703          	lw	a4,0(s1)
    80006994:	02e7e7bb          	remw	a5,a5,a4
    80006998:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    8000699c:	fc1ff06f          	j	8000695c <_ZN6BufferD1Ev+0x34>
    putc('!');
    800069a0:	02100513          	li	a0,33
    800069a4:	ffffb097          	auipc	ra,0xffffb
    800069a8:	a1c080e7          	jalr	-1508(ra) # 800013c0 <_Z4putcc>
    putc('\n');
    800069ac:	00a00513          	li	a0,10
    800069b0:	ffffb097          	auipc	ra,0xffffb
    800069b4:	a10080e7          	jalr	-1520(ra) # 800013c0 <_Z4putcc>
    mem_free(buffer);
    800069b8:	0084b503          	ld	a0,8(s1)
    800069bc:	ffffa097          	auipc	ra,0xffffa
    800069c0:	7dc080e7          	jalr	2012(ra) # 80001198 <_Z8mem_freePv>
    sem_close(itemAvailable);
    800069c4:	0204b503          	ld	a0,32(s1)
    800069c8:	ffffb097          	auipc	ra,0xffffb
    800069cc:	8b0080e7          	jalr	-1872(ra) # 80001278 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    800069d0:	0184b503          	ld	a0,24(s1)
    800069d4:	ffffb097          	auipc	ra,0xffffb
    800069d8:	8a4080e7          	jalr	-1884(ra) # 80001278 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    800069dc:	0304b503          	ld	a0,48(s1)
    800069e0:	ffffb097          	auipc	ra,0xffffb
    800069e4:	898080e7          	jalr	-1896(ra) # 80001278 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    800069e8:	0284b503          	ld	a0,40(s1)
    800069ec:	ffffb097          	auipc	ra,0xffffb
    800069f0:	88c080e7          	jalr	-1908(ra) # 80001278 <_Z9sem_closeP4_sem>
}
    800069f4:	01813083          	ld	ra,24(sp)
    800069f8:	01013403          	ld	s0,16(sp)
    800069fc:	00813483          	ld	s1,8(sp)
    80006a00:	02010113          	addi	sp,sp,32
    80006a04:	00008067          	ret

0000000080006a08 <start>:
    80006a08:	ff010113          	addi	sp,sp,-16
    80006a0c:	00813423          	sd	s0,8(sp)
    80006a10:	01010413          	addi	s0,sp,16
    80006a14:	300027f3          	csrr	a5,mstatus
    80006a18:	ffffe737          	lui	a4,0xffffe
    80006a1c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff186f>
    80006a20:	00e7f7b3          	and	a5,a5,a4
    80006a24:	00001737          	lui	a4,0x1
    80006a28:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006a2c:	00e7e7b3          	or	a5,a5,a4
    80006a30:	30079073          	csrw	mstatus,a5
    80006a34:	00000797          	auipc	a5,0x0
    80006a38:	16078793          	addi	a5,a5,352 # 80006b94 <system_main>
    80006a3c:	34179073          	csrw	mepc,a5
    80006a40:	00000793          	li	a5,0
    80006a44:	18079073          	csrw	satp,a5
    80006a48:	000107b7          	lui	a5,0x10
    80006a4c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006a50:	30279073          	csrw	medeleg,a5
    80006a54:	30379073          	csrw	mideleg,a5
    80006a58:	104027f3          	csrr	a5,sie
    80006a5c:	2227e793          	ori	a5,a5,546
    80006a60:	10479073          	csrw	sie,a5
    80006a64:	fff00793          	li	a5,-1
    80006a68:	00a7d793          	srli	a5,a5,0xa
    80006a6c:	3b079073          	csrw	pmpaddr0,a5
    80006a70:	00f00793          	li	a5,15
    80006a74:	3a079073          	csrw	pmpcfg0,a5
    80006a78:	f14027f3          	csrr	a5,mhartid
    80006a7c:	0200c737          	lui	a4,0x200c
    80006a80:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006a84:	0007869b          	sext.w	a3,a5
    80006a88:	00269713          	slli	a4,a3,0x2
    80006a8c:	000f4637          	lui	a2,0xf4
    80006a90:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006a94:	00d70733          	add	a4,a4,a3
    80006a98:	0037979b          	slliw	a5,a5,0x3
    80006a9c:	020046b7          	lui	a3,0x2004
    80006aa0:	00d787b3          	add	a5,a5,a3
    80006aa4:	00c585b3          	add	a1,a1,a2
    80006aa8:	00371693          	slli	a3,a4,0x3
    80006aac:	00005717          	auipc	a4,0x5
    80006ab0:	28470713          	addi	a4,a4,644 # 8000bd30 <timer_scratch>
    80006ab4:	00b7b023          	sd	a1,0(a5)
    80006ab8:	00d70733          	add	a4,a4,a3
    80006abc:	00f73c23          	sd	a5,24(a4)
    80006ac0:	02c73023          	sd	a2,32(a4)
    80006ac4:	34071073          	csrw	mscratch,a4
    80006ac8:	00000797          	auipc	a5,0x0
    80006acc:	6e878793          	addi	a5,a5,1768 # 800071b0 <timervec>
    80006ad0:	30579073          	csrw	mtvec,a5
    80006ad4:	300027f3          	csrr	a5,mstatus
    80006ad8:	0087e793          	ori	a5,a5,8
    80006adc:	30079073          	csrw	mstatus,a5
    80006ae0:	304027f3          	csrr	a5,mie
    80006ae4:	0807e793          	ori	a5,a5,128
    80006ae8:	30479073          	csrw	mie,a5
    80006aec:	f14027f3          	csrr	a5,mhartid
    80006af0:	0007879b          	sext.w	a5,a5
    80006af4:	00078213          	mv	tp,a5
    80006af8:	30200073          	mret
    80006afc:	00813403          	ld	s0,8(sp)
    80006b00:	01010113          	addi	sp,sp,16
    80006b04:	00008067          	ret

0000000080006b08 <timerinit>:
    80006b08:	ff010113          	addi	sp,sp,-16
    80006b0c:	00813423          	sd	s0,8(sp)
    80006b10:	01010413          	addi	s0,sp,16
    80006b14:	f14027f3          	csrr	a5,mhartid
    80006b18:	0200c737          	lui	a4,0x200c
    80006b1c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006b20:	0007869b          	sext.w	a3,a5
    80006b24:	00269713          	slli	a4,a3,0x2
    80006b28:	000f4637          	lui	a2,0xf4
    80006b2c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006b30:	00d70733          	add	a4,a4,a3
    80006b34:	0037979b          	slliw	a5,a5,0x3
    80006b38:	020046b7          	lui	a3,0x2004
    80006b3c:	00d787b3          	add	a5,a5,a3
    80006b40:	00c585b3          	add	a1,a1,a2
    80006b44:	00371693          	slli	a3,a4,0x3
    80006b48:	00005717          	auipc	a4,0x5
    80006b4c:	1e870713          	addi	a4,a4,488 # 8000bd30 <timer_scratch>
    80006b50:	00b7b023          	sd	a1,0(a5)
    80006b54:	00d70733          	add	a4,a4,a3
    80006b58:	00f73c23          	sd	a5,24(a4)
    80006b5c:	02c73023          	sd	a2,32(a4)
    80006b60:	34071073          	csrw	mscratch,a4
    80006b64:	00000797          	auipc	a5,0x0
    80006b68:	64c78793          	addi	a5,a5,1612 # 800071b0 <timervec>
    80006b6c:	30579073          	csrw	mtvec,a5
    80006b70:	300027f3          	csrr	a5,mstatus
    80006b74:	0087e793          	ori	a5,a5,8
    80006b78:	30079073          	csrw	mstatus,a5
    80006b7c:	304027f3          	csrr	a5,mie
    80006b80:	0807e793          	ori	a5,a5,128
    80006b84:	30479073          	csrw	mie,a5
    80006b88:	00813403          	ld	s0,8(sp)
    80006b8c:	01010113          	addi	sp,sp,16
    80006b90:	00008067          	ret

0000000080006b94 <system_main>:
    80006b94:	fe010113          	addi	sp,sp,-32
    80006b98:	00813823          	sd	s0,16(sp)
    80006b9c:	00913423          	sd	s1,8(sp)
    80006ba0:	00113c23          	sd	ra,24(sp)
    80006ba4:	02010413          	addi	s0,sp,32
    80006ba8:	00000097          	auipc	ra,0x0
    80006bac:	0c4080e7          	jalr	196(ra) # 80006c6c <cpuid>
    80006bb0:	00005497          	auipc	s1,0x5
    80006bb4:	e6048493          	addi	s1,s1,-416 # 8000ba10 <started>
    80006bb8:	02050263          	beqz	a0,80006bdc <system_main+0x48>
    80006bbc:	0004a783          	lw	a5,0(s1)
    80006bc0:	0007879b          	sext.w	a5,a5
    80006bc4:	fe078ce3          	beqz	a5,80006bbc <system_main+0x28>
    80006bc8:	0ff0000f          	fence
    80006bcc:	00003517          	auipc	a0,0x3
    80006bd0:	a1450513          	addi	a0,a0,-1516 # 800095e0 <CONSOLE_STATUS+0x5d0>
    80006bd4:	00001097          	auipc	ra,0x1
    80006bd8:	a78080e7          	jalr	-1416(ra) # 8000764c <panic>
    80006bdc:	00001097          	auipc	ra,0x1
    80006be0:	9cc080e7          	jalr	-1588(ra) # 800075a8 <consoleinit>
    80006be4:	00001097          	auipc	ra,0x1
    80006be8:	158080e7          	jalr	344(ra) # 80007d3c <printfinit>
    80006bec:	00003517          	auipc	a0,0x3
    80006bf0:	87c50513          	addi	a0,a0,-1924 # 80009468 <CONSOLE_STATUS+0x458>
    80006bf4:	00001097          	auipc	ra,0x1
    80006bf8:	ab4080e7          	jalr	-1356(ra) # 800076a8 <__printf>
    80006bfc:	00003517          	auipc	a0,0x3
    80006c00:	9b450513          	addi	a0,a0,-1612 # 800095b0 <CONSOLE_STATUS+0x5a0>
    80006c04:	00001097          	auipc	ra,0x1
    80006c08:	aa4080e7          	jalr	-1372(ra) # 800076a8 <__printf>
    80006c0c:	00003517          	auipc	a0,0x3
    80006c10:	85c50513          	addi	a0,a0,-1956 # 80009468 <CONSOLE_STATUS+0x458>
    80006c14:	00001097          	auipc	ra,0x1
    80006c18:	a94080e7          	jalr	-1388(ra) # 800076a8 <__printf>
    80006c1c:	00001097          	auipc	ra,0x1
    80006c20:	4ac080e7          	jalr	1196(ra) # 800080c8 <kinit>
    80006c24:	00000097          	auipc	ra,0x0
    80006c28:	148080e7          	jalr	328(ra) # 80006d6c <trapinit>
    80006c2c:	00000097          	auipc	ra,0x0
    80006c30:	16c080e7          	jalr	364(ra) # 80006d98 <trapinithart>
    80006c34:	00000097          	auipc	ra,0x0
    80006c38:	5bc080e7          	jalr	1468(ra) # 800071f0 <plicinit>
    80006c3c:	00000097          	auipc	ra,0x0
    80006c40:	5dc080e7          	jalr	1500(ra) # 80007218 <plicinithart>
    80006c44:	00000097          	auipc	ra,0x0
    80006c48:	078080e7          	jalr	120(ra) # 80006cbc <userinit>
    80006c4c:	0ff0000f          	fence
    80006c50:	00100793          	li	a5,1
    80006c54:	00003517          	auipc	a0,0x3
    80006c58:	97450513          	addi	a0,a0,-1676 # 800095c8 <CONSOLE_STATUS+0x5b8>
    80006c5c:	00f4a023          	sw	a5,0(s1)
    80006c60:	00001097          	auipc	ra,0x1
    80006c64:	a48080e7          	jalr	-1464(ra) # 800076a8 <__printf>
    80006c68:	0000006f          	j	80006c68 <system_main+0xd4>

0000000080006c6c <cpuid>:
    80006c6c:	ff010113          	addi	sp,sp,-16
    80006c70:	00813423          	sd	s0,8(sp)
    80006c74:	01010413          	addi	s0,sp,16
    80006c78:	00020513          	mv	a0,tp
    80006c7c:	00813403          	ld	s0,8(sp)
    80006c80:	0005051b          	sext.w	a0,a0
    80006c84:	01010113          	addi	sp,sp,16
    80006c88:	00008067          	ret

0000000080006c8c <mycpu>:
    80006c8c:	ff010113          	addi	sp,sp,-16
    80006c90:	00813423          	sd	s0,8(sp)
    80006c94:	01010413          	addi	s0,sp,16
    80006c98:	00020793          	mv	a5,tp
    80006c9c:	00813403          	ld	s0,8(sp)
    80006ca0:	0007879b          	sext.w	a5,a5
    80006ca4:	00779793          	slli	a5,a5,0x7
    80006ca8:	00006517          	auipc	a0,0x6
    80006cac:	0b850513          	addi	a0,a0,184 # 8000cd60 <cpus>
    80006cb0:	00f50533          	add	a0,a0,a5
    80006cb4:	01010113          	addi	sp,sp,16
    80006cb8:	00008067          	ret

0000000080006cbc <userinit>:
    80006cbc:	ff010113          	addi	sp,sp,-16
    80006cc0:	00813423          	sd	s0,8(sp)
    80006cc4:	01010413          	addi	s0,sp,16
    80006cc8:	00813403          	ld	s0,8(sp)
    80006ccc:	01010113          	addi	sp,sp,16
    80006cd0:	ffffb317          	auipc	t1,0xffffb
    80006cd4:	b9830067          	jr	-1128(t1) # 80001868 <main>

0000000080006cd8 <either_copyout>:
    80006cd8:	ff010113          	addi	sp,sp,-16
    80006cdc:	00813023          	sd	s0,0(sp)
    80006ce0:	00113423          	sd	ra,8(sp)
    80006ce4:	01010413          	addi	s0,sp,16
    80006ce8:	02051663          	bnez	a0,80006d14 <either_copyout+0x3c>
    80006cec:	00058513          	mv	a0,a1
    80006cf0:	00060593          	mv	a1,a2
    80006cf4:	0006861b          	sext.w	a2,a3
    80006cf8:	00002097          	auipc	ra,0x2
    80006cfc:	c5c080e7          	jalr	-932(ra) # 80008954 <__memmove>
    80006d00:	00813083          	ld	ra,8(sp)
    80006d04:	00013403          	ld	s0,0(sp)
    80006d08:	00000513          	li	a0,0
    80006d0c:	01010113          	addi	sp,sp,16
    80006d10:	00008067          	ret
    80006d14:	00003517          	auipc	a0,0x3
    80006d18:	8f450513          	addi	a0,a0,-1804 # 80009608 <CONSOLE_STATUS+0x5f8>
    80006d1c:	00001097          	auipc	ra,0x1
    80006d20:	930080e7          	jalr	-1744(ra) # 8000764c <panic>

0000000080006d24 <either_copyin>:
    80006d24:	ff010113          	addi	sp,sp,-16
    80006d28:	00813023          	sd	s0,0(sp)
    80006d2c:	00113423          	sd	ra,8(sp)
    80006d30:	01010413          	addi	s0,sp,16
    80006d34:	02059463          	bnez	a1,80006d5c <either_copyin+0x38>
    80006d38:	00060593          	mv	a1,a2
    80006d3c:	0006861b          	sext.w	a2,a3
    80006d40:	00002097          	auipc	ra,0x2
    80006d44:	c14080e7          	jalr	-1004(ra) # 80008954 <__memmove>
    80006d48:	00813083          	ld	ra,8(sp)
    80006d4c:	00013403          	ld	s0,0(sp)
    80006d50:	00000513          	li	a0,0
    80006d54:	01010113          	addi	sp,sp,16
    80006d58:	00008067          	ret
    80006d5c:	00003517          	auipc	a0,0x3
    80006d60:	8d450513          	addi	a0,a0,-1836 # 80009630 <CONSOLE_STATUS+0x620>
    80006d64:	00001097          	auipc	ra,0x1
    80006d68:	8e8080e7          	jalr	-1816(ra) # 8000764c <panic>

0000000080006d6c <trapinit>:
    80006d6c:	ff010113          	addi	sp,sp,-16
    80006d70:	00813423          	sd	s0,8(sp)
    80006d74:	01010413          	addi	s0,sp,16
    80006d78:	00813403          	ld	s0,8(sp)
    80006d7c:	00003597          	auipc	a1,0x3
    80006d80:	8dc58593          	addi	a1,a1,-1828 # 80009658 <CONSOLE_STATUS+0x648>
    80006d84:	00006517          	auipc	a0,0x6
    80006d88:	05c50513          	addi	a0,a0,92 # 8000cde0 <tickslock>
    80006d8c:	01010113          	addi	sp,sp,16
    80006d90:	00001317          	auipc	t1,0x1
    80006d94:	5c830067          	jr	1480(t1) # 80008358 <initlock>

0000000080006d98 <trapinithart>:
    80006d98:	ff010113          	addi	sp,sp,-16
    80006d9c:	00813423          	sd	s0,8(sp)
    80006da0:	01010413          	addi	s0,sp,16
    80006da4:	00000797          	auipc	a5,0x0
    80006da8:	2fc78793          	addi	a5,a5,764 # 800070a0 <kernelvec>
    80006dac:	10579073          	csrw	stvec,a5
    80006db0:	00813403          	ld	s0,8(sp)
    80006db4:	01010113          	addi	sp,sp,16
    80006db8:	00008067          	ret

0000000080006dbc <usertrap>:
    80006dbc:	ff010113          	addi	sp,sp,-16
    80006dc0:	00813423          	sd	s0,8(sp)
    80006dc4:	01010413          	addi	s0,sp,16
    80006dc8:	00813403          	ld	s0,8(sp)
    80006dcc:	01010113          	addi	sp,sp,16
    80006dd0:	00008067          	ret

0000000080006dd4 <usertrapret>:
    80006dd4:	ff010113          	addi	sp,sp,-16
    80006dd8:	00813423          	sd	s0,8(sp)
    80006ddc:	01010413          	addi	s0,sp,16
    80006de0:	00813403          	ld	s0,8(sp)
    80006de4:	01010113          	addi	sp,sp,16
    80006de8:	00008067          	ret

0000000080006dec <kerneltrap>:
    80006dec:	fe010113          	addi	sp,sp,-32
    80006df0:	00813823          	sd	s0,16(sp)
    80006df4:	00113c23          	sd	ra,24(sp)
    80006df8:	00913423          	sd	s1,8(sp)
    80006dfc:	02010413          	addi	s0,sp,32
    80006e00:	142025f3          	csrr	a1,scause
    80006e04:	100027f3          	csrr	a5,sstatus
    80006e08:	0027f793          	andi	a5,a5,2
    80006e0c:	10079c63          	bnez	a5,80006f24 <kerneltrap+0x138>
    80006e10:	142027f3          	csrr	a5,scause
    80006e14:	0207ce63          	bltz	a5,80006e50 <kerneltrap+0x64>
    80006e18:	00003517          	auipc	a0,0x3
    80006e1c:	88850513          	addi	a0,a0,-1912 # 800096a0 <CONSOLE_STATUS+0x690>
    80006e20:	00001097          	auipc	ra,0x1
    80006e24:	888080e7          	jalr	-1912(ra) # 800076a8 <__printf>
    80006e28:	141025f3          	csrr	a1,sepc
    80006e2c:	14302673          	csrr	a2,stval
    80006e30:	00003517          	auipc	a0,0x3
    80006e34:	88050513          	addi	a0,a0,-1920 # 800096b0 <CONSOLE_STATUS+0x6a0>
    80006e38:	00001097          	auipc	ra,0x1
    80006e3c:	870080e7          	jalr	-1936(ra) # 800076a8 <__printf>
    80006e40:	00003517          	auipc	a0,0x3
    80006e44:	88850513          	addi	a0,a0,-1912 # 800096c8 <CONSOLE_STATUS+0x6b8>
    80006e48:	00001097          	auipc	ra,0x1
    80006e4c:	804080e7          	jalr	-2044(ra) # 8000764c <panic>
    80006e50:	0ff7f713          	andi	a4,a5,255
    80006e54:	00900693          	li	a3,9
    80006e58:	04d70063          	beq	a4,a3,80006e98 <kerneltrap+0xac>
    80006e5c:	fff00713          	li	a4,-1
    80006e60:	03f71713          	slli	a4,a4,0x3f
    80006e64:	00170713          	addi	a4,a4,1
    80006e68:	fae798e3          	bne	a5,a4,80006e18 <kerneltrap+0x2c>
    80006e6c:	00000097          	auipc	ra,0x0
    80006e70:	e00080e7          	jalr	-512(ra) # 80006c6c <cpuid>
    80006e74:	06050663          	beqz	a0,80006ee0 <kerneltrap+0xf4>
    80006e78:	144027f3          	csrr	a5,sip
    80006e7c:	ffd7f793          	andi	a5,a5,-3
    80006e80:	14479073          	csrw	sip,a5
    80006e84:	01813083          	ld	ra,24(sp)
    80006e88:	01013403          	ld	s0,16(sp)
    80006e8c:	00813483          	ld	s1,8(sp)
    80006e90:	02010113          	addi	sp,sp,32
    80006e94:	00008067          	ret
    80006e98:	00000097          	auipc	ra,0x0
    80006e9c:	3cc080e7          	jalr	972(ra) # 80007264 <plic_claim>
    80006ea0:	00a00793          	li	a5,10
    80006ea4:	00050493          	mv	s1,a0
    80006ea8:	06f50863          	beq	a0,a5,80006f18 <kerneltrap+0x12c>
    80006eac:	fc050ce3          	beqz	a0,80006e84 <kerneltrap+0x98>
    80006eb0:	00050593          	mv	a1,a0
    80006eb4:	00002517          	auipc	a0,0x2
    80006eb8:	7cc50513          	addi	a0,a0,1996 # 80009680 <CONSOLE_STATUS+0x670>
    80006ebc:	00000097          	auipc	ra,0x0
    80006ec0:	7ec080e7          	jalr	2028(ra) # 800076a8 <__printf>
    80006ec4:	01013403          	ld	s0,16(sp)
    80006ec8:	01813083          	ld	ra,24(sp)
    80006ecc:	00048513          	mv	a0,s1
    80006ed0:	00813483          	ld	s1,8(sp)
    80006ed4:	02010113          	addi	sp,sp,32
    80006ed8:	00000317          	auipc	t1,0x0
    80006edc:	3c430067          	jr	964(t1) # 8000729c <plic_complete>
    80006ee0:	00006517          	auipc	a0,0x6
    80006ee4:	f0050513          	addi	a0,a0,-256 # 8000cde0 <tickslock>
    80006ee8:	00001097          	auipc	ra,0x1
    80006eec:	494080e7          	jalr	1172(ra) # 8000837c <acquire>
    80006ef0:	00005717          	auipc	a4,0x5
    80006ef4:	b2470713          	addi	a4,a4,-1244 # 8000ba14 <ticks>
    80006ef8:	00072783          	lw	a5,0(a4)
    80006efc:	00006517          	auipc	a0,0x6
    80006f00:	ee450513          	addi	a0,a0,-284 # 8000cde0 <tickslock>
    80006f04:	0017879b          	addiw	a5,a5,1
    80006f08:	00f72023          	sw	a5,0(a4)
    80006f0c:	00001097          	auipc	ra,0x1
    80006f10:	53c080e7          	jalr	1340(ra) # 80008448 <release>
    80006f14:	f65ff06f          	j	80006e78 <kerneltrap+0x8c>
    80006f18:	00001097          	auipc	ra,0x1
    80006f1c:	098080e7          	jalr	152(ra) # 80007fb0 <uartintr>
    80006f20:	fa5ff06f          	j	80006ec4 <kerneltrap+0xd8>
    80006f24:	00002517          	auipc	a0,0x2
    80006f28:	73c50513          	addi	a0,a0,1852 # 80009660 <CONSOLE_STATUS+0x650>
    80006f2c:	00000097          	auipc	ra,0x0
    80006f30:	720080e7          	jalr	1824(ra) # 8000764c <panic>

0000000080006f34 <clockintr>:
    80006f34:	fe010113          	addi	sp,sp,-32
    80006f38:	00813823          	sd	s0,16(sp)
    80006f3c:	00913423          	sd	s1,8(sp)
    80006f40:	00113c23          	sd	ra,24(sp)
    80006f44:	02010413          	addi	s0,sp,32
    80006f48:	00006497          	auipc	s1,0x6
    80006f4c:	e9848493          	addi	s1,s1,-360 # 8000cde0 <tickslock>
    80006f50:	00048513          	mv	a0,s1
    80006f54:	00001097          	auipc	ra,0x1
    80006f58:	428080e7          	jalr	1064(ra) # 8000837c <acquire>
    80006f5c:	00005717          	auipc	a4,0x5
    80006f60:	ab870713          	addi	a4,a4,-1352 # 8000ba14 <ticks>
    80006f64:	00072783          	lw	a5,0(a4)
    80006f68:	01013403          	ld	s0,16(sp)
    80006f6c:	01813083          	ld	ra,24(sp)
    80006f70:	00048513          	mv	a0,s1
    80006f74:	0017879b          	addiw	a5,a5,1
    80006f78:	00813483          	ld	s1,8(sp)
    80006f7c:	00f72023          	sw	a5,0(a4)
    80006f80:	02010113          	addi	sp,sp,32
    80006f84:	00001317          	auipc	t1,0x1
    80006f88:	4c430067          	jr	1220(t1) # 80008448 <release>

0000000080006f8c <devintr>:
    80006f8c:	142027f3          	csrr	a5,scause
    80006f90:	00000513          	li	a0,0
    80006f94:	0007c463          	bltz	a5,80006f9c <devintr+0x10>
    80006f98:	00008067          	ret
    80006f9c:	fe010113          	addi	sp,sp,-32
    80006fa0:	00813823          	sd	s0,16(sp)
    80006fa4:	00113c23          	sd	ra,24(sp)
    80006fa8:	00913423          	sd	s1,8(sp)
    80006fac:	02010413          	addi	s0,sp,32
    80006fb0:	0ff7f713          	andi	a4,a5,255
    80006fb4:	00900693          	li	a3,9
    80006fb8:	04d70c63          	beq	a4,a3,80007010 <devintr+0x84>
    80006fbc:	fff00713          	li	a4,-1
    80006fc0:	03f71713          	slli	a4,a4,0x3f
    80006fc4:	00170713          	addi	a4,a4,1
    80006fc8:	00e78c63          	beq	a5,a4,80006fe0 <devintr+0x54>
    80006fcc:	01813083          	ld	ra,24(sp)
    80006fd0:	01013403          	ld	s0,16(sp)
    80006fd4:	00813483          	ld	s1,8(sp)
    80006fd8:	02010113          	addi	sp,sp,32
    80006fdc:	00008067          	ret
    80006fe0:	00000097          	auipc	ra,0x0
    80006fe4:	c8c080e7          	jalr	-884(ra) # 80006c6c <cpuid>
    80006fe8:	06050663          	beqz	a0,80007054 <devintr+0xc8>
    80006fec:	144027f3          	csrr	a5,sip
    80006ff0:	ffd7f793          	andi	a5,a5,-3
    80006ff4:	14479073          	csrw	sip,a5
    80006ff8:	01813083          	ld	ra,24(sp)
    80006ffc:	01013403          	ld	s0,16(sp)
    80007000:	00813483          	ld	s1,8(sp)
    80007004:	00200513          	li	a0,2
    80007008:	02010113          	addi	sp,sp,32
    8000700c:	00008067          	ret
    80007010:	00000097          	auipc	ra,0x0
    80007014:	254080e7          	jalr	596(ra) # 80007264 <plic_claim>
    80007018:	00a00793          	li	a5,10
    8000701c:	00050493          	mv	s1,a0
    80007020:	06f50663          	beq	a0,a5,8000708c <devintr+0x100>
    80007024:	00100513          	li	a0,1
    80007028:	fa0482e3          	beqz	s1,80006fcc <devintr+0x40>
    8000702c:	00048593          	mv	a1,s1
    80007030:	00002517          	auipc	a0,0x2
    80007034:	65050513          	addi	a0,a0,1616 # 80009680 <CONSOLE_STATUS+0x670>
    80007038:	00000097          	auipc	ra,0x0
    8000703c:	670080e7          	jalr	1648(ra) # 800076a8 <__printf>
    80007040:	00048513          	mv	a0,s1
    80007044:	00000097          	auipc	ra,0x0
    80007048:	258080e7          	jalr	600(ra) # 8000729c <plic_complete>
    8000704c:	00100513          	li	a0,1
    80007050:	f7dff06f          	j	80006fcc <devintr+0x40>
    80007054:	00006517          	auipc	a0,0x6
    80007058:	d8c50513          	addi	a0,a0,-628 # 8000cde0 <tickslock>
    8000705c:	00001097          	auipc	ra,0x1
    80007060:	320080e7          	jalr	800(ra) # 8000837c <acquire>
    80007064:	00005717          	auipc	a4,0x5
    80007068:	9b070713          	addi	a4,a4,-1616 # 8000ba14 <ticks>
    8000706c:	00072783          	lw	a5,0(a4)
    80007070:	00006517          	auipc	a0,0x6
    80007074:	d7050513          	addi	a0,a0,-656 # 8000cde0 <tickslock>
    80007078:	0017879b          	addiw	a5,a5,1
    8000707c:	00f72023          	sw	a5,0(a4)
    80007080:	00001097          	auipc	ra,0x1
    80007084:	3c8080e7          	jalr	968(ra) # 80008448 <release>
    80007088:	f65ff06f          	j	80006fec <devintr+0x60>
    8000708c:	00001097          	auipc	ra,0x1
    80007090:	f24080e7          	jalr	-220(ra) # 80007fb0 <uartintr>
    80007094:	fadff06f          	j	80007040 <devintr+0xb4>
	...

00000000800070a0 <kernelvec>:
    800070a0:	f0010113          	addi	sp,sp,-256
    800070a4:	00113023          	sd	ra,0(sp)
    800070a8:	00213423          	sd	sp,8(sp)
    800070ac:	00313823          	sd	gp,16(sp)
    800070b0:	00413c23          	sd	tp,24(sp)
    800070b4:	02513023          	sd	t0,32(sp)
    800070b8:	02613423          	sd	t1,40(sp)
    800070bc:	02713823          	sd	t2,48(sp)
    800070c0:	02813c23          	sd	s0,56(sp)
    800070c4:	04913023          	sd	s1,64(sp)
    800070c8:	04a13423          	sd	a0,72(sp)
    800070cc:	04b13823          	sd	a1,80(sp)
    800070d0:	04c13c23          	sd	a2,88(sp)
    800070d4:	06d13023          	sd	a3,96(sp)
    800070d8:	06e13423          	sd	a4,104(sp)
    800070dc:	06f13823          	sd	a5,112(sp)
    800070e0:	07013c23          	sd	a6,120(sp)
    800070e4:	09113023          	sd	a7,128(sp)
    800070e8:	09213423          	sd	s2,136(sp)
    800070ec:	09313823          	sd	s3,144(sp)
    800070f0:	09413c23          	sd	s4,152(sp)
    800070f4:	0b513023          	sd	s5,160(sp)
    800070f8:	0b613423          	sd	s6,168(sp)
    800070fc:	0b713823          	sd	s7,176(sp)
    80007100:	0b813c23          	sd	s8,184(sp)
    80007104:	0d913023          	sd	s9,192(sp)
    80007108:	0da13423          	sd	s10,200(sp)
    8000710c:	0db13823          	sd	s11,208(sp)
    80007110:	0dc13c23          	sd	t3,216(sp)
    80007114:	0fd13023          	sd	t4,224(sp)
    80007118:	0fe13423          	sd	t5,232(sp)
    8000711c:	0ff13823          	sd	t6,240(sp)
    80007120:	ccdff0ef          	jal	ra,80006dec <kerneltrap>
    80007124:	00013083          	ld	ra,0(sp)
    80007128:	00813103          	ld	sp,8(sp)
    8000712c:	01013183          	ld	gp,16(sp)
    80007130:	02013283          	ld	t0,32(sp)
    80007134:	02813303          	ld	t1,40(sp)
    80007138:	03013383          	ld	t2,48(sp)
    8000713c:	03813403          	ld	s0,56(sp)
    80007140:	04013483          	ld	s1,64(sp)
    80007144:	04813503          	ld	a0,72(sp)
    80007148:	05013583          	ld	a1,80(sp)
    8000714c:	05813603          	ld	a2,88(sp)
    80007150:	06013683          	ld	a3,96(sp)
    80007154:	06813703          	ld	a4,104(sp)
    80007158:	07013783          	ld	a5,112(sp)
    8000715c:	07813803          	ld	a6,120(sp)
    80007160:	08013883          	ld	a7,128(sp)
    80007164:	08813903          	ld	s2,136(sp)
    80007168:	09013983          	ld	s3,144(sp)
    8000716c:	09813a03          	ld	s4,152(sp)
    80007170:	0a013a83          	ld	s5,160(sp)
    80007174:	0a813b03          	ld	s6,168(sp)
    80007178:	0b013b83          	ld	s7,176(sp)
    8000717c:	0b813c03          	ld	s8,184(sp)
    80007180:	0c013c83          	ld	s9,192(sp)
    80007184:	0c813d03          	ld	s10,200(sp)
    80007188:	0d013d83          	ld	s11,208(sp)
    8000718c:	0d813e03          	ld	t3,216(sp)
    80007190:	0e013e83          	ld	t4,224(sp)
    80007194:	0e813f03          	ld	t5,232(sp)
    80007198:	0f013f83          	ld	t6,240(sp)
    8000719c:	10010113          	addi	sp,sp,256
    800071a0:	10200073          	sret
    800071a4:	00000013          	nop
    800071a8:	00000013          	nop
    800071ac:	00000013          	nop

00000000800071b0 <timervec>:
    800071b0:	34051573          	csrrw	a0,mscratch,a0
    800071b4:	00b53023          	sd	a1,0(a0)
    800071b8:	00c53423          	sd	a2,8(a0)
    800071bc:	00d53823          	sd	a3,16(a0)
    800071c0:	01853583          	ld	a1,24(a0)
    800071c4:	02053603          	ld	a2,32(a0)
    800071c8:	0005b683          	ld	a3,0(a1)
    800071cc:	00c686b3          	add	a3,a3,a2
    800071d0:	00d5b023          	sd	a3,0(a1)
    800071d4:	00200593          	li	a1,2
    800071d8:	14459073          	csrw	sip,a1
    800071dc:	01053683          	ld	a3,16(a0)
    800071e0:	00853603          	ld	a2,8(a0)
    800071e4:	00053583          	ld	a1,0(a0)
    800071e8:	34051573          	csrrw	a0,mscratch,a0
    800071ec:	30200073          	mret

00000000800071f0 <plicinit>:
    800071f0:	ff010113          	addi	sp,sp,-16
    800071f4:	00813423          	sd	s0,8(sp)
    800071f8:	01010413          	addi	s0,sp,16
    800071fc:	00813403          	ld	s0,8(sp)
    80007200:	0c0007b7          	lui	a5,0xc000
    80007204:	00100713          	li	a4,1
    80007208:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000720c:	00e7a223          	sw	a4,4(a5)
    80007210:	01010113          	addi	sp,sp,16
    80007214:	00008067          	ret

0000000080007218 <plicinithart>:
    80007218:	ff010113          	addi	sp,sp,-16
    8000721c:	00813023          	sd	s0,0(sp)
    80007220:	00113423          	sd	ra,8(sp)
    80007224:	01010413          	addi	s0,sp,16
    80007228:	00000097          	auipc	ra,0x0
    8000722c:	a44080e7          	jalr	-1468(ra) # 80006c6c <cpuid>
    80007230:	0085171b          	slliw	a4,a0,0x8
    80007234:	0c0027b7          	lui	a5,0xc002
    80007238:	00e787b3          	add	a5,a5,a4
    8000723c:	40200713          	li	a4,1026
    80007240:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007244:	00813083          	ld	ra,8(sp)
    80007248:	00013403          	ld	s0,0(sp)
    8000724c:	00d5151b          	slliw	a0,a0,0xd
    80007250:	0c2017b7          	lui	a5,0xc201
    80007254:	00a78533          	add	a0,a5,a0
    80007258:	00052023          	sw	zero,0(a0)
    8000725c:	01010113          	addi	sp,sp,16
    80007260:	00008067          	ret

0000000080007264 <plic_claim>:
    80007264:	ff010113          	addi	sp,sp,-16
    80007268:	00813023          	sd	s0,0(sp)
    8000726c:	00113423          	sd	ra,8(sp)
    80007270:	01010413          	addi	s0,sp,16
    80007274:	00000097          	auipc	ra,0x0
    80007278:	9f8080e7          	jalr	-1544(ra) # 80006c6c <cpuid>
    8000727c:	00813083          	ld	ra,8(sp)
    80007280:	00013403          	ld	s0,0(sp)
    80007284:	00d5151b          	slliw	a0,a0,0xd
    80007288:	0c2017b7          	lui	a5,0xc201
    8000728c:	00a78533          	add	a0,a5,a0
    80007290:	00452503          	lw	a0,4(a0)
    80007294:	01010113          	addi	sp,sp,16
    80007298:	00008067          	ret

000000008000729c <plic_complete>:
    8000729c:	fe010113          	addi	sp,sp,-32
    800072a0:	00813823          	sd	s0,16(sp)
    800072a4:	00913423          	sd	s1,8(sp)
    800072a8:	00113c23          	sd	ra,24(sp)
    800072ac:	02010413          	addi	s0,sp,32
    800072b0:	00050493          	mv	s1,a0
    800072b4:	00000097          	auipc	ra,0x0
    800072b8:	9b8080e7          	jalr	-1608(ra) # 80006c6c <cpuid>
    800072bc:	01813083          	ld	ra,24(sp)
    800072c0:	01013403          	ld	s0,16(sp)
    800072c4:	00d5179b          	slliw	a5,a0,0xd
    800072c8:	0c201737          	lui	a4,0xc201
    800072cc:	00f707b3          	add	a5,a4,a5
    800072d0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800072d4:	00813483          	ld	s1,8(sp)
    800072d8:	02010113          	addi	sp,sp,32
    800072dc:	00008067          	ret

00000000800072e0 <consolewrite>:
    800072e0:	fb010113          	addi	sp,sp,-80
    800072e4:	04813023          	sd	s0,64(sp)
    800072e8:	04113423          	sd	ra,72(sp)
    800072ec:	02913c23          	sd	s1,56(sp)
    800072f0:	03213823          	sd	s2,48(sp)
    800072f4:	03313423          	sd	s3,40(sp)
    800072f8:	03413023          	sd	s4,32(sp)
    800072fc:	01513c23          	sd	s5,24(sp)
    80007300:	05010413          	addi	s0,sp,80
    80007304:	06c05c63          	blez	a2,8000737c <consolewrite+0x9c>
    80007308:	00060993          	mv	s3,a2
    8000730c:	00050a13          	mv	s4,a0
    80007310:	00058493          	mv	s1,a1
    80007314:	00000913          	li	s2,0
    80007318:	fff00a93          	li	s5,-1
    8000731c:	01c0006f          	j	80007338 <consolewrite+0x58>
    80007320:	fbf44503          	lbu	a0,-65(s0)
    80007324:	0019091b          	addiw	s2,s2,1
    80007328:	00148493          	addi	s1,s1,1
    8000732c:	00001097          	auipc	ra,0x1
    80007330:	a9c080e7          	jalr	-1380(ra) # 80007dc8 <uartputc>
    80007334:	03298063          	beq	s3,s2,80007354 <consolewrite+0x74>
    80007338:	00048613          	mv	a2,s1
    8000733c:	00100693          	li	a3,1
    80007340:	000a0593          	mv	a1,s4
    80007344:	fbf40513          	addi	a0,s0,-65
    80007348:	00000097          	auipc	ra,0x0
    8000734c:	9dc080e7          	jalr	-1572(ra) # 80006d24 <either_copyin>
    80007350:	fd5518e3          	bne	a0,s5,80007320 <consolewrite+0x40>
    80007354:	04813083          	ld	ra,72(sp)
    80007358:	04013403          	ld	s0,64(sp)
    8000735c:	03813483          	ld	s1,56(sp)
    80007360:	02813983          	ld	s3,40(sp)
    80007364:	02013a03          	ld	s4,32(sp)
    80007368:	01813a83          	ld	s5,24(sp)
    8000736c:	00090513          	mv	a0,s2
    80007370:	03013903          	ld	s2,48(sp)
    80007374:	05010113          	addi	sp,sp,80
    80007378:	00008067          	ret
    8000737c:	00000913          	li	s2,0
    80007380:	fd5ff06f          	j	80007354 <consolewrite+0x74>

0000000080007384 <consoleread>:
    80007384:	f9010113          	addi	sp,sp,-112
    80007388:	06813023          	sd	s0,96(sp)
    8000738c:	04913c23          	sd	s1,88(sp)
    80007390:	05213823          	sd	s2,80(sp)
    80007394:	05313423          	sd	s3,72(sp)
    80007398:	05413023          	sd	s4,64(sp)
    8000739c:	03513c23          	sd	s5,56(sp)
    800073a0:	03613823          	sd	s6,48(sp)
    800073a4:	03713423          	sd	s7,40(sp)
    800073a8:	03813023          	sd	s8,32(sp)
    800073ac:	06113423          	sd	ra,104(sp)
    800073b0:	01913c23          	sd	s9,24(sp)
    800073b4:	07010413          	addi	s0,sp,112
    800073b8:	00060b93          	mv	s7,a2
    800073bc:	00050913          	mv	s2,a0
    800073c0:	00058c13          	mv	s8,a1
    800073c4:	00060b1b          	sext.w	s6,a2
    800073c8:	00006497          	auipc	s1,0x6
    800073cc:	a4048493          	addi	s1,s1,-1472 # 8000ce08 <cons>
    800073d0:	00400993          	li	s3,4
    800073d4:	fff00a13          	li	s4,-1
    800073d8:	00a00a93          	li	s5,10
    800073dc:	05705e63          	blez	s7,80007438 <consoleread+0xb4>
    800073e0:	09c4a703          	lw	a4,156(s1)
    800073e4:	0984a783          	lw	a5,152(s1)
    800073e8:	0007071b          	sext.w	a4,a4
    800073ec:	08e78463          	beq	a5,a4,80007474 <consoleread+0xf0>
    800073f0:	07f7f713          	andi	a4,a5,127
    800073f4:	00e48733          	add	a4,s1,a4
    800073f8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800073fc:	0017869b          	addiw	a3,a5,1
    80007400:	08d4ac23          	sw	a3,152(s1)
    80007404:	00070c9b          	sext.w	s9,a4
    80007408:	0b370663          	beq	a4,s3,800074b4 <consoleread+0x130>
    8000740c:	00100693          	li	a3,1
    80007410:	f9f40613          	addi	a2,s0,-97
    80007414:	000c0593          	mv	a1,s8
    80007418:	00090513          	mv	a0,s2
    8000741c:	f8e40fa3          	sb	a4,-97(s0)
    80007420:	00000097          	auipc	ra,0x0
    80007424:	8b8080e7          	jalr	-1864(ra) # 80006cd8 <either_copyout>
    80007428:	01450863          	beq	a0,s4,80007438 <consoleread+0xb4>
    8000742c:	001c0c13          	addi	s8,s8,1
    80007430:	fffb8b9b          	addiw	s7,s7,-1
    80007434:	fb5c94e3          	bne	s9,s5,800073dc <consoleread+0x58>
    80007438:	000b851b          	sext.w	a0,s7
    8000743c:	06813083          	ld	ra,104(sp)
    80007440:	06013403          	ld	s0,96(sp)
    80007444:	05813483          	ld	s1,88(sp)
    80007448:	05013903          	ld	s2,80(sp)
    8000744c:	04813983          	ld	s3,72(sp)
    80007450:	04013a03          	ld	s4,64(sp)
    80007454:	03813a83          	ld	s5,56(sp)
    80007458:	02813b83          	ld	s7,40(sp)
    8000745c:	02013c03          	ld	s8,32(sp)
    80007460:	01813c83          	ld	s9,24(sp)
    80007464:	40ab053b          	subw	a0,s6,a0
    80007468:	03013b03          	ld	s6,48(sp)
    8000746c:	07010113          	addi	sp,sp,112
    80007470:	00008067          	ret
    80007474:	00001097          	auipc	ra,0x1
    80007478:	1d8080e7          	jalr	472(ra) # 8000864c <push_on>
    8000747c:	0984a703          	lw	a4,152(s1)
    80007480:	09c4a783          	lw	a5,156(s1)
    80007484:	0007879b          	sext.w	a5,a5
    80007488:	fef70ce3          	beq	a4,a5,80007480 <consoleread+0xfc>
    8000748c:	00001097          	auipc	ra,0x1
    80007490:	234080e7          	jalr	564(ra) # 800086c0 <pop_on>
    80007494:	0984a783          	lw	a5,152(s1)
    80007498:	07f7f713          	andi	a4,a5,127
    8000749c:	00e48733          	add	a4,s1,a4
    800074a0:	01874703          	lbu	a4,24(a4)
    800074a4:	0017869b          	addiw	a3,a5,1
    800074a8:	08d4ac23          	sw	a3,152(s1)
    800074ac:	00070c9b          	sext.w	s9,a4
    800074b0:	f5371ee3          	bne	a4,s3,8000740c <consoleread+0x88>
    800074b4:	000b851b          	sext.w	a0,s7
    800074b8:	f96bf2e3          	bgeu	s7,s6,8000743c <consoleread+0xb8>
    800074bc:	08f4ac23          	sw	a5,152(s1)
    800074c0:	f7dff06f          	j	8000743c <consoleread+0xb8>

00000000800074c4 <consputc>:
    800074c4:	10000793          	li	a5,256
    800074c8:	00f50663          	beq	a0,a5,800074d4 <consputc+0x10>
    800074cc:	00001317          	auipc	t1,0x1
    800074d0:	9f430067          	jr	-1548(t1) # 80007ec0 <uartputc_sync>
    800074d4:	ff010113          	addi	sp,sp,-16
    800074d8:	00113423          	sd	ra,8(sp)
    800074dc:	00813023          	sd	s0,0(sp)
    800074e0:	01010413          	addi	s0,sp,16
    800074e4:	00800513          	li	a0,8
    800074e8:	00001097          	auipc	ra,0x1
    800074ec:	9d8080e7          	jalr	-1576(ra) # 80007ec0 <uartputc_sync>
    800074f0:	02000513          	li	a0,32
    800074f4:	00001097          	auipc	ra,0x1
    800074f8:	9cc080e7          	jalr	-1588(ra) # 80007ec0 <uartputc_sync>
    800074fc:	00013403          	ld	s0,0(sp)
    80007500:	00813083          	ld	ra,8(sp)
    80007504:	00800513          	li	a0,8
    80007508:	01010113          	addi	sp,sp,16
    8000750c:	00001317          	auipc	t1,0x1
    80007510:	9b430067          	jr	-1612(t1) # 80007ec0 <uartputc_sync>

0000000080007514 <consoleintr>:
    80007514:	fe010113          	addi	sp,sp,-32
    80007518:	00813823          	sd	s0,16(sp)
    8000751c:	00913423          	sd	s1,8(sp)
    80007520:	01213023          	sd	s2,0(sp)
    80007524:	00113c23          	sd	ra,24(sp)
    80007528:	02010413          	addi	s0,sp,32
    8000752c:	00006917          	auipc	s2,0x6
    80007530:	8dc90913          	addi	s2,s2,-1828 # 8000ce08 <cons>
    80007534:	00050493          	mv	s1,a0
    80007538:	00090513          	mv	a0,s2
    8000753c:	00001097          	auipc	ra,0x1
    80007540:	e40080e7          	jalr	-448(ra) # 8000837c <acquire>
    80007544:	02048c63          	beqz	s1,8000757c <consoleintr+0x68>
    80007548:	0a092783          	lw	a5,160(s2)
    8000754c:	09892703          	lw	a4,152(s2)
    80007550:	07f00693          	li	a3,127
    80007554:	40e7873b          	subw	a4,a5,a4
    80007558:	02e6e263          	bltu	a3,a4,8000757c <consoleintr+0x68>
    8000755c:	00d00713          	li	a4,13
    80007560:	04e48063          	beq	s1,a4,800075a0 <consoleintr+0x8c>
    80007564:	07f7f713          	andi	a4,a5,127
    80007568:	00e90733          	add	a4,s2,a4
    8000756c:	0017879b          	addiw	a5,a5,1
    80007570:	0af92023          	sw	a5,160(s2)
    80007574:	00970c23          	sb	s1,24(a4)
    80007578:	08f92e23          	sw	a5,156(s2)
    8000757c:	01013403          	ld	s0,16(sp)
    80007580:	01813083          	ld	ra,24(sp)
    80007584:	00813483          	ld	s1,8(sp)
    80007588:	00013903          	ld	s2,0(sp)
    8000758c:	00006517          	auipc	a0,0x6
    80007590:	87c50513          	addi	a0,a0,-1924 # 8000ce08 <cons>
    80007594:	02010113          	addi	sp,sp,32
    80007598:	00001317          	auipc	t1,0x1
    8000759c:	eb030067          	jr	-336(t1) # 80008448 <release>
    800075a0:	00a00493          	li	s1,10
    800075a4:	fc1ff06f          	j	80007564 <consoleintr+0x50>

00000000800075a8 <consoleinit>:
    800075a8:	fe010113          	addi	sp,sp,-32
    800075ac:	00113c23          	sd	ra,24(sp)
    800075b0:	00813823          	sd	s0,16(sp)
    800075b4:	00913423          	sd	s1,8(sp)
    800075b8:	02010413          	addi	s0,sp,32
    800075bc:	00006497          	auipc	s1,0x6
    800075c0:	84c48493          	addi	s1,s1,-1972 # 8000ce08 <cons>
    800075c4:	00048513          	mv	a0,s1
    800075c8:	00002597          	auipc	a1,0x2
    800075cc:	11058593          	addi	a1,a1,272 # 800096d8 <CONSOLE_STATUS+0x6c8>
    800075d0:	00001097          	auipc	ra,0x1
    800075d4:	d88080e7          	jalr	-632(ra) # 80008358 <initlock>
    800075d8:	00000097          	auipc	ra,0x0
    800075dc:	7ac080e7          	jalr	1964(ra) # 80007d84 <uartinit>
    800075e0:	01813083          	ld	ra,24(sp)
    800075e4:	01013403          	ld	s0,16(sp)
    800075e8:	00000797          	auipc	a5,0x0
    800075ec:	d9c78793          	addi	a5,a5,-612 # 80007384 <consoleread>
    800075f0:	0af4bc23          	sd	a5,184(s1)
    800075f4:	00000797          	auipc	a5,0x0
    800075f8:	cec78793          	addi	a5,a5,-788 # 800072e0 <consolewrite>
    800075fc:	0cf4b023          	sd	a5,192(s1)
    80007600:	00813483          	ld	s1,8(sp)
    80007604:	02010113          	addi	sp,sp,32
    80007608:	00008067          	ret

000000008000760c <console_read>:
    8000760c:	ff010113          	addi	sp,sp,-16
    80007610:	00813423          	sd	s0,8(sp)
    80007614:	01010413          	addi	s0,sp,16
    80007618:	00813403          	ld	s0,8(sp)
    8000761c:	00006317          	auipc	t1,0x6
    80007620:	8a433303          	ld	t1,-1884(t1) # 8000cec0 <devsw+0x10>
    80007624:	01010113          	addi	sp,sp,16
    80007628:	00030067          	jr	t1

000000008000762c <console_write>:
    8000762c:	ff010113          	addi	sp,sp,-16
    80007630:	00813423          	sd	s0,8(sp)
    80007634:	01010413          	addi	s0,sp,16
    80007638:	00813403          	ld	s0,8(sp)
    8000763c:	00006317          	auipc	t1,0x6
    80007640:	88c33303          	ld	t1,-1908(t1) # 8000cec8 <devsw+0x18>
    80007644:	01010113          	addi	sp,sp,16
    80007648:	00030067          	jr	t1

000000008000764c <panic>:
    8000764c:	fe010113          	addi	sp,sp,-32
    80007650:	00113c23          	sd	ra,24(sp)
    80007654:	00813823          	sd	s0,16(sp)
    80007658:	00913423          	sd	s1,8(sp)
    8000765c:	02010413          	addi	s0,sp,32
    80007660:	00050493          	mv	s1,a0
    80007664:	00002517          	auipc	a0,0x2
    80007668:	07c50513          	addi	a0,a0,124 # 800096e0 <CONSOLE_STATUS+0x6d0>
    8000766c:	00006797          	auipc	a5,0x6
    80007670:	8e07ae23          	sw	zero,-1796(a5) # 8000cf68 <pr+0x18>
    80007674:	00000097          	auipc	ra,0x0
    80007678:	034080e7          	jalr	52(ra) # 800076a8 <__printf>
    8000767c:	00048513          	mv	a0,s1
    80007680:	00000097          	auipc	ra,0x0
    80007684:	028080e7          	jalr	40(ra) # 800076a8 <__printf>
    80007688:	00002517          	auipc	a0,0x2
    8000768c:	de050513          	addi	a0,a0,-544 # 80009468 <CONSOLE_STATUS+0x458>
    80007690:	00000097          	auipc	ra,0x0
    80007694:	018080e7          	jalr	24(ra) # 800076a8 <__printf>
    80007698:	00100793          	li	a5,1
    8000769c:	00004717          	auipc	a4,0x4
    800076a0:	36f72e23          	sw	a5,892(a4) # 8000ba18 <panicked>
    800076a4:	0000006f          	j	800076a4 <panic+0x58>

00000000800076a8 <__printf>:
    800076a8:	f3010113          	addi	sp,sp,-208
    800076ac:	08813023          	sd	s0,128(sp)
    800076b0:	07313423          	sd	s3,104(sp)
    800076b4:	09010413          	addi	s0,sp,144
    800076b8:	05813023          	sd	s8,64(sp)
    800076bc:	08113423          	sd	ra,136(sp)
    800076c0:	06913c23          	sd	s1,120(sp)
    800076c4:	07213823          	sd	s2,112(sp)
    800076c8:	07413023          	sd	s4,96(sp)
    800076cc:	05513c23          	sd	s5,88(sp)
    800076d0:	05613823          	sd	s6,80(sp)
    800076d4:	05713423          	sd	s7,72(sp)
    800076d8:	03913c23          	sd	s9,56(sp)
    800076dc:	03a13823          	sd	s10,48(sp)
    800076e0:	03b13423          	sd	s11,40(sp)
    800076e4:	00006317          	auipc	t1,0x6
    800076e8:	86c30313          	addi	t1,t1,-1940 # 8000cf50 <pr>
    800076ec:	01832c03          	lw	s8,24(t1)
    800076f0:	00b43423          	sd	a1,8(s0)
    800076f4:	00c43823          	sd	a2,16(s0)
    800076f8:	00d43c23          	sd	a3,24(s0)
    800076fc:	02e43023          	sd	a4,32(s0)
    80007700:	02f43423          	sd	a5,40(s0)
    80007704:	03043823          	sd	a6,48(s0)
    80007708:	03143c23          	sd	a7,56(s0)
    8000770c:	00050993          	mv	s3,a0
    80007710:	4a0c1663          	bnez	s8,80007bbc <__printf+0x514>
    80007714:	60098c63          	beqz	s3,80007d2c <__printf+0x684>
    80007718:	0009c503          	lbu	a0,0(s3)
    8000771c:	00840793          	addi	a5,s0,8
    80007720:	f6f43c23          	sd	a5,-136(s0)
    80007724:	00000493          	li	s1,0
    80007728:	22050063          	beqz	a0,80007948 <__printf+0x2a0>
    8000772c:	00002a37          	lui	s4,0x2
    80007730:	00018ab7          	lui	s5,0x18
    80007734:	000f4b37          	lui	s6,0xf4
    80007738:	00989bb7          	lui	s7,0x989
    8000773c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007740:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007744:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007748:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000774c:	00148c9b          	addiw	s9,s1,1
    80007750:	02500793          	li	a5,37
    80007754:	01998933          	add	s2,s3,s9
    80007758:	38f51263          	bne	a0,a5,80007adc <__printf+0x434>
    8000775c:	00094783          	lbu	a5,0(s2)
    80007760:	00078c9b          	sext.w	s9,a5
    80007764:	1e078263          	beqz	a5,80007948 <__printf+0x2a0>
    80007768:	0024849b          	addiw	s1,s1,2
    8000776c:	07000713          	li	a4,112
    80007770:	00998933          	add	s2,s3,s1
    80007774:	38e78a63          	beq	a5,a4,80007b08 <__printf+0x460>
    80007778:	20f76863          	bltu	a4,a5,80007988 <__printf+0x2e0>
    8000777c:	42a78863          	beq	a5,a0,80007bac <__printf+0x504>
    80007780:	06400713          	li	a4,100
    80007784:	40e79663          	bne	a5,a4,80007b90 <__printf+0x4e8>
    80007788:	f7843783          	ld	a5,-136(s0)
    8000778c:	0007a603          	lw	a2,0(a5)
    80007790:	00878793          	addi	a5,a5,8
    80007794:	f6f43c23          	sd	a5,-136(s0)
    80007798:	42064a63          	bltz	a2,80007bcc <__printf+0x524>
    8000779c:	00a00713          	li	a4,10
    800077a0:	02e677bb          	remuw	a5,a2,a4
    800077a4:	00002d97          	auipc	s11,0x2
    800077a8:	f64d8d93          	addi	s11,s11,-156 # 80009708 <digits>
    800077ac:	00900593          	li	a1,9
    800077b0:	0006051b          	sext.w	a0,a2
    800077b4:	00000c93          	li	s9,0
    800077b8:	02079793          	slli	a5,a5,0x20
    800077bc:	0207d793          	srli	a5,a5,0x20
    800077c0:	00fd87b3          	add	a5,s11,a5
    800077c4:	0007c783          	lbu	a5,0(a5)
    800077c8:	02e656bb          	divuw	a3,a2,a4
    800077cc:	f8f40023          	sb	a5,-128(s0)
    800077d0:	14c5d863          	bge	a1,a2,80007920 <__printf+0x278>
    800077d4:	06300593          	li	a1,99
    800077d8:	00100c93          	li	s9,1
    800077dc:	02e6f7bb          	remuw	a5,a3,a4
    800077e0:	02079793          	slli	a5,a5,0x20
    800077e4:	0207d793          	srli	a5,a5,0x20
    800077e8:	00fd87b3          	add	a5,s11,a5
    800077ec:	0007c783          	lbu	a5,0(a5)
    800077f0:	02e6d73b          	divuw	a4,a3,a4
    800077f4:	f8f400a3          	sb	a5,-127(s0)
    800077f8:	12a5f463          	bgeu	a1,a0,80007920 <__printf+0x278>
    800077fc:	00a00693          	li	a3,10
    80007800:	00900593          	li	a1,9
    80007804:	02d777bb          	remuw	a5,a4,a3
    80007808:	02079793          	slli	a5,a5,0x20
    8000780c:	0207d793          	srli	a5,a5,0x20
    80007810:	00fd87b3          	add	a5,s11,a5
    80007814:	0007c503          	lbu	a0,0(a5)
    80007818:	02d757bb          	divuw	a5,a4,a3
    8000781c:	f8a40123          	sb	a0,-126(s0)
    80007820:	48e5f263          	bgeu	a1,a4,80007ca4 <__printf+0x5fc>
    80007824:	06300513          	li	a0,99
    80007828:	02d7f5bb          	remuw	a1,a5,a3
    8000782c:	02059593          	slli	a1,a1,0x20
    80007830:	0205d593          	srli	a1,a1,0x20
    80007834:	00bd85b3          	add	a1,s11,a1
    80007838:	0005c583          	lbu	a1,0(a1)
    8000783c:	02d7d7bb          	divuw	a5,a5,a3
    80007840:	f8b401a3          	sb	a1,-125(s0)
    80007844:	48e57263          	bgeu	a0,a4,80007cc8 <__printf+0x620>
    80007848:	3e700513          	li	a0,999
    8000784c:	02d7f5bb          	remuw	a1,a5,a3
    80007850:	02059593          	slli	a1,a1,0x20
    80007854:	0205d593          	srli	a1,a1,0x20
    80007858:	00bd85b3          	add	a1,s11,a1
    8000785c:	0005c583          	lbu	a1,0(a1)
    80007860:	02d7d7bb          	divuw	a5,a5,a3
    80007864:	f8b40223          	sb	a1,-124(s0)
    80007868:	46e57663          	bgeu	a0,a4,80007cd4 <__printf+0x62c>
    8000786c:	02d7f5bb          	remuw	a1,a5,a3
    80007870:	02059593          	slli	a1,a1,0x20
    80007874:	0205d593          	srli	a1,a1,0x20
    80007878:	00bd85b3          	add	a1,s11,a1
    8000787c:	0005c583          	lbu	a1,0(a1)
    80007880:	02d7d7bb          	divuw	a5,a5,a3
    80007884:	f8b402a3          	sb	a1,-123(s0)
    80007888:	46ea7863          	bgeu	s4,a4,80007cf8 <__printf+0x650>
    8000788c:	02d7f5bb          	remuw	a1,a5,a3
    80007890:	02059593          	slli	a1,a1,0x20
    80007894:	0205d593          	srli	a1,a1,0x20
    80007898:	00bd85b3          	add	a1,s11,a1
    8000789c:	0005c583          	lbu	a1,0(a1)
    800078a0:	02d7d7bb          	divuw	a5,a5,a3
    800078a4:	f8b40323          	sb	a1,-122(s0)
    800078a8:	3eeaf863          	bgeu	s5,a4,80007c98 <__printf+0x5f0>
    800078ac:	02d7f5bb          	remuw	a1,a5,a3
    800078b0:	02059593          	slli	a1,a1,0x20
    800078b4:	0205d593          	srli	a1,a1,0x20
    800078b8:	00bd85b3          	add	a1,s11,a1
    800078bc:	0005c583          	lbu	a1,0(a1)
    800078c0:	02d7d7bb          	divuw	a5,a5,a3
    800078c4:	f8b403a3          	sb	a1,-121(s0)
    800078c8:	42eb7e63          	bgeu	s6,a4,80007d04 <__printf+0x65c>
    800078cc:	02d7f5bb          	remuw	a1,a5,a3
    800078d0:	02059593          	slli	a1,a1,0x20
    800078d4:	0205d593          	srli	a1,a1,0x20
    800078d8:	00bd85b3          	add	a1,s11,a1
    800078dc:	0005c583          	lbu	a1,0(a1)
    800078e0:	02d7d7bb          	divuw	a5,a5,a3
    800078e4:	f8b40423          	sb	a1,-120(s0)
    800078e8:	42ebfc63          	bgeu	s7,a4,80007d20 <__printf+0x678>
    800078ec:	02079793          	slli	a5,a5,0x20
    800078f0:	0207d793          	srli	a5,a5,0x20
    800078f4:	00fd8db3          	add	s11,s11,a5
    800078f8:	000dc703          	lbu	a4,0(s11)
    800078fc:	00a00793          	li	a5,10
    80007900:	00900c93          	li	s9,9
    80007904:	f8e404a3          	sb	a4,-119(s0)
    80007908:	00065c63          	bgez	a2,80007920 <__printf+0x278>
    8000790c:	f9040713          	addi	a4,s0,-112
    80007910:	00f70733          	add	a4,a4,a5
    80007914:	02d00693          	li	a3,45
    80007918:	fed70823          	sb	a3,-16(a4)
    8000791c:	00078c93          	mv	s9,a5
    80007920:	f8040793          	addi	a5,s0,-128
    80007924:	01978cb3          	add	s9,a5,s9
    80007928:	f7f40d13          	addi	s10,s0,-129
    8000792c:	000cc503          	lbu	a0,0(s9)
    80007930:	fffc8c93          	addi	s9,s9,-1
    80007934:	00000097          	auipc	ra,0x0
    80007938:	b90080e7          	jalr	-1136(ra) # 800074c4 <consputc>
    8000793c:	ffac98e3          	bne	s9,s10,8000792c <__printf+0x284>
    80007940:	00094503          	lbu	a0,0(s2)
    80007944:	e00514e3          	bnez	a0,8000774c <__printf+0xa4>
    80007948:	1a0c1663          	bnez	s8,80007af4 <__printf+0x44c>
    8000794c:	08813083          	ld	ra,136(sp)
    80007950:	08013403          	ld	s0,128(sp)
    80007954:	07813483          	ld	s1,120(sp)
    80007958:	07013903          	ld	s2,112(sp)
    8000795c:	06813983          	ld	s3,104(sp)
    80007960:	06013a03          	ld	s4,96(sp)
    80007964:	05813a83          	ld	s5,88(sp)
    80007968:	05013b03          	ld	s6,80(sp)
    8000796c:	04813b83          	ld	s7,72(sp)
    80007970:	04013c03          	ld	s8,64(sp)
    80007974:	03813c83          	ld	s9,56(sp)
    80007978:	03013d03          	ld	s10,48(sp)
    8000797c:	02813d83          	ld	s11,40(sp)
    80007980:	0d010113          	addi	sp,sp,208
    80007984:	00008067          	ret
    80007988:	07300713          	li	a4,115
    8000798c:	1ce78a63          	beq	a5,a4,80007b60 <__printf+0x4b8>
    80007990:	07800713          	li	a4,120
    80007994:	1ee79e63          	bne	a5,a4,80007b90 <__printf+0x4e8>
    80007998:	f7843783          	ld	a5,-136(s0)
    8000799c:	0007a703          	lw	a4,0(a5)
    800079a0:	00878793          	addi	a5,a5,8
    800079a4:	f6f43c23          	sd	a5,-136(s0)
    800079a8:	28074263          	bltz	a4,80007c2c <__printf+0x584>
    800079ac:	00002d97          	auipc	s11,0x2
    800079b0:	d5cd8d93          	addi	s11,s11,-676 # 80009708 <digits>
    800079b4:	00f77793          	andi	a5,a4,15
    800079b8:	00fd87b3          	add	a5,s11,a5
    800079bc:	0007c683          	lbu	a3,0(a5)
    800079c0:	00f00613          	li	a2,15
    800079c4:	0007079b          	sext.w	a5,a4
    800079c8:	f8d40023          	sb	a3,-128(s0)
    800079cc:	0047559b          	srliw	a1,a4,0x4
    800079d0:	0047569b          	srliw	a3,a4,0x4
    800079d4:	00000c93          	li	s9,0
    800079d8:	0ee65063          	bge	a2,a4,80007ab8 <__printf+0x410>
    800079dc:	00f6f693          	andi	a3,a3,15
    800079e0:	00dd86b3          	add	a3,s11,a3
    800079e4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800079e8:	0087d79b          	srliw	a5,a5,0x8
    800079ec:	00100c93          	li	s9,1
    800079f0:	f8d400a3          	sb	a3,-127(s0)
    800079f4:	0cb67263          	bgeu	a2,a1,80007ab8 <__printf+0x410>
    800079f8:	00f7f693          	andi	a3,a5,15
    800079fc:	00dd86b3          	add	a3,s11,a3
    80007a00:	0006c583          	lbu	a1,0(a3)
    80007a04:	00f00613          	li	a2,15
    80007a08:	0047d69b          	srliw	a3,a5,0x4
    80007a0c:	f8b40123          	sb	a1,-126(s0)
    80007a10:	0047d593          	srli	a1,a5,0x4
    80007a14:	28f67e63          	bgeu	a2,a5,80007cb0 <__printf+0x608>
    80007a18:	00f6f693          	andi	a3,a3,15
    80007a1c:	00dd86b3          	add	a3,s11,a3
    80007a20:	0006c503          	lbu	a0,0(a3)
    80007a24:	0087d813          	srli	a6,a5,0x8
    80007a28:	0087d69b          	srliw	a3,a5,0x8
    80007a2c:	f8a401a3          	sb	a0,-125(s0)
    80007a30:	28b67663          	bgeu	a2,a1,80007cbc <__printf+0x614>
    80007a34:	00f6f693          	andi	a3,a3,15
    80007a38:	00dd86b3          	add	a3,s11,a3
    80007a3c:	0006c583          	lbu	a1,0(a3)
    80007a40:	00c7d513          	srli	a0,a5,0xc
    80007a44:	00c7d69b          	srliw	a3,a5,0xc
    80007a48:	f8b40223          	sb	a1,-124(s0)
    80007a4c:	29067a63          	bgeu	a2,a6,80007ce0 <__printf+0x638>
    80007a50:	00f6f693          	andi	a3,a3,15
    80007a54:	00dd86b3          	add	a3,s11,a3
    80007a58:	0006c583          	lbu	a1,0(a3)
    80007a5c:	0107d813          	srli	a6,a5,0x10
    80007a60:	0107d69b          	srliw	a3,a5,0x10
    80007a64:	f8b402a3          	sb	a1,-123(s0)
    80007a68:	28a67263          	bgeu	a2,a0,80007cec <__printf+0x644>
    80007a6c:	00f6f693          	andi	a3,a3,15
    80007a70:	00dd86b3          	add	a3,s11,a3
    80007a74:	0006c683          	lbu	a3,0(a3)
    80007a78:	0147d79b          	srliw	a5,a5,0x14
    80007a7c:	f8d40323          	sb	a3,-122(s0)
    80007a80:	21067663          	bgeu	a2,a6,80007c8c <__printf+0x5e4>
    80007a84:	02079793          	slli	a5,a5,0x20
    80007a88:	0207d793          	srli	a5,a5,0x20
    80007a8c:	00fd8db3          	add	s11,s11,a5
    80007a90:	000dc683          	lbu	a3,0(s11)
    80007a94:	00800793          	li	a5,8
    80007a98:	00700c93          	li	s9,7
    80007a9c:	f8d403a3          	sb	a3,-121(s0)
    80007aa0:	00075c63          	bgez	a4,80007ab8 <__printf+0x410>
    80007aa4:	f9040713          	addi	a4,s0,-112
    80007aa8:	00f70733          	add	a4,a4,a5
    80007aac:	02d00693          	li	a3,45
    80007ab0:	fed70823          	sb	a3,-16(a4)
    80007ab4:	00078c93          	mv	s9,a5
    80007ab8:	f8040793          	addi	a5,s0,-128
    80007abc:	01978cb3          	add	s9,a5,s9
    80007ac0:	f7f40d13          	addi	s10,s0,-129
    80007ac4:	000cc503          	lbu	a0,0(s9)
    80007ac8:	fffc8c93          	addi	s9,s9,-1
    80007acc:	00000097          	auipc	ra,0x0
    80007ad0:	9f8080e7          	jalr	-1544(ra) # 800074c4 <consputc>
    80007ad4:	ff9d18e3          	bne	s10,s9,80007ac4 <__printf+0x41c>
    80007ad8:	0100006f          	j	80007ae8 <__printf+0x440>
    80007adc:	00000097          	auipc	ra,0x0
    80007ae0:	9e8080e7          	jalr	-1560(ra) # 800074c4 <consputc>
    80007ae4:	000c8493          	mv	s1,s9
    80007ae8:	00094503          	lbu	a0,0(s2)
    80007aec:	c60510e3          	bnez	a0,8000774c <__printf+0xa4>
    80007af0:	e40c0ee3          	beqz	s8,8000794c <__printf+0x2a4>
    80007af4:	00005517          	auipc	a0,0x5
    80007af8:	45c50513          	addi	a0,a0,1116 # 8000cf50 <pr>
    80007afc:	00001097          	auipc	ra,0x1
    80007b00:	94c080e7          	jalr	-1716(ra) # 80008448 <release>
    80007b04:	e49ff06f          	j	8000794c <__printf+0x2a4>
    80007b08:	f7843783          	ld	a5,-136(s0)
    80007b0c:	03000513          	li	a0,48
    80007b10:	01000d13          	li	s10,16
    80007b14:	00878713          	addi	a4,a5,8
    80007b18:	0007bc83          	ld	s9,0(a5)
    80007b1c:	f6e43c23          	sd	a4,-136(s0)
    80007b20:	00000097          	auipc	ra,0x0
    80007b24:	9a4080e7          	jalr	-1628(ra) # 800074c4 <consputc>
    80007b28:	07800513          	li	a0,120
    80007b2c:	00000097          	auipc	ra,0x0
    80007b30:	998080e7          	jalr	-1640(ra) # 800074c4 <consputc>
    80007b34:	00002d97          	auipc	s11,0x2
    80007b38:	bd4d8d93          	addi	s11,s11,-1068 # 80009708 <digits>
    80007b3c:	03ccd793          	srli	a5,s9,0x3c
    80007b40:	00fd87b3          	add	a5,s11,a5
    80007b44:	0007c503          	lbu	a0,0(a5)
    80007b48:	fffd0d1b          	addiw	s10,s10,-1
    80007b4c:	004c9c93          	slli	s9,s9,0x4
    80007b50:	00000097          	auipc	ra,0x0
    80007b54:	974080e7          	jalr	-1676(ra) # 800074c4 <consputc>
    80007b58:	fe0d12e3          	bnez	s10,80007b3c <__printf+0x494>
    80007b5c:	f8dff06f          	j	80007ae8 <__printf+0x440>
    80007b60:	f7843783          	ld	a5,-136(s0)
    80007b64:	0007bc83          	ld	s9,0(a5)
    80007b68:	00878793          	addi	a5,a5,8
    80007b6c:	f6f43c23          	sd	a5,-136(s0)
    80007b70:	000c9a63          	bnez	s9,80007b84 <__printf+0x4dc>
    80007b74:	1080006f          	j	80007c7c <__printf+0x5d4>
    80007b78:	001c8c93          	addi	s9,s9,1
    80007b7c:	00000097          	auipc	ra,0x0
    80007b80:	948080e7          	jalr	-1720(ra) # 800074c4 <consputc>
    80007b84:	000cc503          	lbu	a0,0(s9)
    80007b88:	fe0518e3          	bnez	a0,80007b78 <__printf+0x4d0>
    80007b8c:	f5dff06f          	j	80007ae8 <__printf+0x440>
    80007b90:	02500513          	li	a0,37
    80007b94:	00000097          	auipc	ra,0x0
    80007b98:	930080e7          	jalr	-1744(ra) # 800074c4 <consputc>
    80007b9c:	000c8513          	mv	a0,s9
    80007ba0:	00000097          	auipc	ra,0x0
    80007ba4:	924080e7          	jalr	-1756(ra) # 800074c4 <consputc>
    80007ba8:	f41ff06f          	j	80007ae8 <__printf+0x440>
    80007bac:	02500513          	li	a0,37
    80007bb0:	00000097          	auipc	ra,0x0
    80007bb4:	914080e7          	jalr	-1772(ra) # 800074c4 <consputc>
    80007bb8:	f31ff06f          	j	80007ae8 <__printf+0x440>
    80007bbc:	00030513          	mv	a0,t1
    80007bc0:	00000097          	auipc	ra,0x0
    80007bc4:	7bc080e7          	jalr	1980(ra) # 8000837c <acquire>
    80007bc8:	b4dff06f          	j	80007714 <__printf+0x6c>
    80007bcc:	40c0053b          	negw	a0,a2
    80007bd0:	00a00713          	li	a4,10
    80007bd4:	02e576bb          	remuw	a3,a0,a4
    80007bd8:	00002d97          	auipc	s11,0x2
    80007bdc:	b30d8d93          	addi	s11,s11,-1232 # 80009708 <digits>
    80007be0:	ff700593          	li	a1,-9
    80007be4:	02069693          	slli	a3,a3,0x20
    80007be8:	0206d693          	srli	a3,a3,0x20
    80007bec:	00dd86b3          	add	a3,s11,a3
    80007bf0:	0006c683          	lbu	a3,0(a3)
    80007bf4:	02e557bb          	divuw	a5,a0,a4
    80007bf8:	f8d40023          	sb	a3,-128(s0)
    80007bfc:	10b65e63          	bge	a2,a1,80007d18 <__printf+0x670>
    80007c00:	06300593          	li	a1,99
    80007c04:	02e7f6bb          	remuw	a3,a5,a4
    80007c08:	02069693          	slli	a3,a3,0x20
    80007c0c:	0206d693          	srli	a3,a3,0x20
    80007c10:	00dd86b3          	add	a3,s11,a3
    80007c14:	0006c683          	lbu	a3,0(a3)
    80007c18:	02e7d73b          	divuw	a4,a5,a4
    80007c1c:	00200793          	li	a5,2
    80007c20:	f8d400a3          	sb	a3,-127(s0)
    80007c24:	bca5ece3          	bltu	a1,a0,800077fc <__printf+0x154>
    80007c28:	ce5ff06f          	j	8000790c <__printf+0x264>
    80007c2c:	40e007bb          	negw	a5,a4
    80007c30:	00002d97          	auipc	s11,0x2
    80007c34:	ad8d8d93          	addi	s11,s11,-1320 # 80009708 <digits>
    80007c38:	00f7f693          	andi	a3,a5,15
    80007c3c:	00dd86b3          	add	a3,s11,a3
    80007c40:	0006c583          	lbu	a1,0(a3)
    80007c44:	ff100613          	li	a2,-15
    80007c48:	0047d69b          	srliw	a3,a5,0x4
    80007c4c:	f8b40023          	sb	a1,-128(s0)
    80007c50:	0047d59b          	srliw	a1,a5,0x4
    80007c54:	0ac75e63          	bge	a4,a2,80007d10 <__printf+0x668>
    80007c58:	00f6f693          	andi	a3,a3,15
    80007c5c:	00dd86b3          	add	a3,s11,a3
    80007c60:	0006c603          	lbu	a2,0(a3)
    80007c64:	00f00693          	li	a3,15
    80007c68:	0087d79b          	srliw	a5,a5,0x8
    80007c6c:	f8c400a3          	sb	a2,-127(s0)
    80007c70:	d8b6e4e3          	bltu	a3,a1,800079f8 <__printf+0x350>
    80007c74:	00200793          	li	a5,2
    80007c78:	e2dff06f          	j	80007aa4 <__printf+0x3fc>
    80007c7c:	00002c97          	auipc	s9,0x2
    80007c80:	a6cc8c93          	addi	s9,s9,-1428 # 800096e8 <CONSOLE_STATUS+0x6d8>
    80007c84:	02800513          	li	a0,40
    80007c88:	ef1ff06f          	j	80007b78 <__printf+0x4d0>
    80007c8c:	00700793          	li	a5,7
    80007c90:	00600c93          	li	s9,6
    80007c94:	e0dff06f          	j	80007aa0 <__printf+0x3f8>
    80007c98:	00700793          	li	a5,7
    80007c9c:	00600c93          	li	s9,6
    80007ca0:	c69ff06f          	j	80007908 <__printf+0x260>
    80007ca4:	00300793          	li	a5,3
    80007ca8:	00200c93          	li	s9,2
    80007cac:	c5dff06f          	j	80007908 <__printf+0x260>
    80007cb0:	00300793          	li	a5,3
    80007cb4:	00200c93          	li	s9,2
    80007cb8:	de9ff06f          	j	80007aa0 <__printf+0x3f8>
    80007cbc:	00400793          	li	a5,4
    80007cc0:	00300c93          	li	s9,3
    80007cc4:	dddff06f          	j	80007aa0 <__printf+0x3f8>
    80007cc8:	00400793          	li	a5,4
    80007ccc:	00300c93          	li	s9,3
    80007cd0:	c39ff06f          	j	80007908 <__printf+0x260>
    80007cd4:	00500793          	li	a5,5
    80007cd8:	00400c93          	li	s9,4
    80007cdc:	c2dff06f          	j	80007908 <__printf+0x260>
    80007ce0:	00500793          	li	a5,5
    80007ce4:	00400c93          	li	s9,4
    80007ce8:	db9ff06f          	j	80007aa0 <__printf+0x3f8>
    80007cec:	00600793          	li	a5,6
    80007cf0:	00500c93          	li	s9,5
    80007cf4:	dadff06f          	j	80007aa0 <__printf+0x3f8>
    80007cf8:	00600793          	li	a5,6
    80007cfc:	00500c93          	li	s9,5
    80007d00:	c09ff06f          	j	80007908 <__printf+0x260>
    80007d04:	00800793          	li	a5,8
    80007d08:	00700c93          	li	s9,7
    80007d0c:	bfdff06f          	j	80007908 <__printf+0x260>
    80007d10:	00100793          	li	a5,1
    80007d14:	d91ff06f          	j	80007aa4 <__printf+0x3fc>
    80007d18:	00100793          	li	a5,1
    80007d1c:	bf1ff06f          	j	8000790c <__printf+0x264>
    80007d20:	00900793          	li	a5,9
    80007d24:	00800c93          	li	s9,8
    80007d28:	be1ff06f          	j	80007908 <__printf+0x260>
    80007d2c:	00002517          	auipc	a0,0x2
    80007d30:	9c450513          	addi	a0,a0,-1596 # 800096f0 <CONSOLE_STATUS+0x6e0>
    80007d34:	00000097          	auipc	ra,0x0
    80007d38:	918080e7          	jalr	-1768(ra) # 8000764c <panic>

0000000080007d3c <printfinit>:
    80007d3c:	fe010113          	addi	sp,sp,-32
    80007d40:	00813823          	sd	s0,16(sp)
    80007d44:	00913423          	sd	s1,8(sp)
    80007d48:	00113c23          	sd	ra,24(sp)
    80007d4c:	02010413          	addi	s0,sp,32
    80007d50:	00005497          	auipc	s1,0x5
    80007d54:	20048493          	addi	s1,s1,512 # 8000cf50 <pr>
    80007d58:	00048513          	mv	a0,s1
    80007d5c:	00002597          	auipc	a1,0x2
    80007d60:	9a458593          	addi	a1,a1,-1628 # 80009700 <CONSOLE_STATUS+0x6f0>
    80007d64:	00000097          	auipc	ra,0x0
    80007d68:	5f4080e7          	jalr	1524(ra) # 80008358 <initlock>
    80007d6c:	01813083          	ld	ra,24(sp)
    80007d70:	01013403          	ld	s0,16(sp)
    80007d74:	0004ac23          	sw	zero,24(s1)
    80007d78:	00813483          	ld	s1,8(sp)
    80007d7c:	02010113          	addi	sp,sp,32
    80007d80:	00008067          	ret

0000000080007d84 <uartinit>:
    80007d84:	ff010113          	addi	sp,sp,-16
    80007d88:	00813423          	sd	s0,8(sp)
    80007d8c:	01010413          	addi	s0,sp,16
    80007d90:	100007b7          	lui	a5,0x10000
    80007d94:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007d98:	f8000713          	li	a4,-128
    80007d9c:	00e781a3          	sb	a4,3(a5)
    80007da0:	00300713          	li	a4,3
    80007da4:	00e78023          	sb	a4,0(a5)
    80007da8:	000780a3          	sb	zero,1(a5)
    80007dac:	00e781a3          	sb	a4,3(a5)
    80007db0:	00700693          	li	a3,7
    80007db4:	00d78123          	sb	a3,2(a5)
    80007db8:	00e780a3          	sb	a4,1(a5)
    80007dbc:	00813403          	ld	s0,8(sp)
    80007dc0:	01010113          	addi	sp,sp,16
    80007dc4:	00008067          	ret

0000000080007dc8 <uartputc>:
    80007dc8:	00004797          	auipc	a5,0x4
    80007dcc:	c507a783          	lw	a5,-944(a5) # 8000ba18 <panicked>
    80007dd0:	00078463          	beqz	a5,80007dd8 <uartputc+0x10>
    80007dd4:	0000006f          	j	80007dd4 <uartputc+0xc>
    80007dd8:	fd010113          	addi	sp,sp,-48
    80007ddc:	02813023          	sd	s0,32(sp)
    80007de0:	00913c23          	sd	s1,24(sp)
    80007de4:	01213823          	sd	s2,16(sp)
    80007de8:	01313423          	sd	s3,8(sp)
    80007dec:	02113423          	sd	ra,40(sp)
    80007df0:	03010413          	addi	s0,sp,48
    80007df4:	00004917          	auipc	s2,0x4
    80007df8:	c2c90913          	addi	s2,s2,-980 # 8000ba20 <uart_tx_r>
    80007dfc:	00093783          	ld	a5,0(s2)
    80007e00:	00004497          	auipc	s1,0x4
    80007e04:	c2848493          	addi	s1,s1,-984 # 8000ba28 <uart_tx_w>
    80007e08:	0004b703          	ld	a4,0(s1)
    80007e0c:	02078693          	addi	a3,a5,32
    80007e10:	00050993          	mv	s3,a0
    80007e14:	02e69c63          	bne	a3,a4,80007e4c <uartputc+0x84>
    80007e18:	00001097          	auipc	ra,0x1
    80007e1c:	834080e7          	jalr	-1996(ra) # 8000864c <push_on>
    80007e20:	00093783          	ld	a5,0(s2)
    80007e24:	0004b703          	ld	a4,0(s1)
    80007e28:	02078793          	addi	a5,a5,32
    80007e2c:	00e79463          	bne	a5,a4,80007e34 <uartputc+0x6c>
    80007e30:	0000006f          	j	80007e30 <uartputc+0x68>
    80007e34:	00001097          	auipc	ra,0x1
    80007e38:	88c080e7          	jalr	-1908(ra) # 800086c0 <pop_on>
    80007e3c:	00093783          	ld	a5,0(s2)
    80007e40:	0004b703          	ld	a4,0(s1)
    80007e44:	02078693          	addi	a3,a5,32
    80007e48:	fce688e3          	beq	a3,a4,80007e18 <uartputc+0x50>
    80007e4c:	01f77693          	andi	a3,a4,31
    80007e50:	00005597          	auipc	a1,0x5
    80007e54:	12058593          	addi	a1,a1,288 # 8000cf70 <uart_tx_buf>
    80007e58:	00d586b3          	add	a3,a1,a3
    80007e5c:	00170713          	addi	a4,a4,1
    80007e60:	01368023          	sb	s3,0(a3)
    80007e64:	00e4b023          	sd	a4,0(s1)
    80007e68:	10000637          	lui	a2,0x10000
    80007e6c:	02f71063          	bne	a4,a5,80007e8c <uartputc+0xc4>
    80007e70:	0340006f          	j	80007ea4 <uartputc+0xdc>
    80007e74:	00074703          	lbu	a4,0(a4)
    80007e78:	00f93023          	sd	a5,0(s2)
    80007e7c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007e80:	00093783          	ld	a5,0(s2)
    80007e84:	0004b703          	ld	a4,0(s1)
    80007e88:	00f70e63          	beq	a4,a5,80007ea4 <uartputc+0xdc>
    80007e8c:	00564683          	lbu	a3,5(a2)
    80007e90:	01f7f713          	andi	a4,a5,31
    80007e94:	00e58733          	add	a4,a1,a4
    80007e98:	0206f693          	andi	a3,a3,32
    80007e9c:	00178793          	addi	a5,a5,1
    80007ea0:	fc069ae3          	bnez	a3,80007e74 <uartputc+0xac>
    80007ea4:	02813083          	ld	ra,40(sp)
    80007ea8:	02013403          	ld	s0,32(sp)
    80007eac:	01813483          	ld	s1,24(sp)
    80007eb0:	01013903          	ld	s2,16(sp)
    80007eb4:	00813983          	ld	s3,8(sp)
    80007eb8:	03010113          	addi	sp,sp,48
    80007ebc:	00008067          	ret

0000000080007ec0 <uartputc_sync>:
    80007ec0:	ff010113          	addi	sp,sp,-16
    80007ec4:	00813423          	sd	s0,8(sp)
    80007ec8:	01010413          	addi	s0,sp,16
    80007ecc:	00004717          	auipc	a4,0x4
    80007ed0:	b4c72703          	lw	a4,-1204(a4) # 8000ba18 <panicked>
    80007ed4:	02071663          	bnez	a4,80007f00 <uartputc_sync+0x40>
    80007ed8:	00050793          	mv	a5,a0
    80007edc:	100006b7          	lui	a3,0x10000
    80007ee0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007ee4:	02077713          	andi	a4,a4,32
    80007ee8:	fe070ce3          	beqz	a4,80007ee0 <uartputc_sync+0x20>
    80007eec:	0ff7f793          	andi	a5,a5,255
    80007ef0:	00f68023          	sb	a5,0(a3)
    80007ef4:	00813403          	ld	s0,8(sp)
    80007ef8:	01010113          	addi	sp,sp,16
    80007efc:	00008067          	ret
    80007f00:	0000006f          	j	80007f00 <uartputc_sync+0x40>

0000000080007f04 <uartstart>:
    80007f04:	ff010113          	addi	sp,sp,-16
    80007f08:	00813423          	sd	s0,8(sp)
    80007f0c:	01010413          	addi	s0,sp,16
    80007f10:	00004617          	auipc	a2,0x4
    80007f14:	b1060613          	addi	a2,a2,-1264 # 8000ba20 <uart_tx_r>
    80007f18:	00004517          	auipc	a0,0x4
    80007f1c:	b1050513          	addi	a0,a0,-1264 # 8000ba28 <uart_tx_w>
    80007f20:	00063783          	ld	a5,0(a2)
    80007f24:	00053703          	ld	a4,0(a0)
    80007f28:	04f70263          	beq	a4,a5,80007f6c <uartstart+0x68>
    80007f2c:	100005b7          	lui	a1,0x10000
    80007f30:	00005817          	auipc	a6,0x5
    80007f34:	04080813          	addi	a6,a6,64 # 8000cf70 <uart_tx_buf>
    80007f38:	01c0006f          	j	80007f54 <uartstart+0x50>
    80007f3c:	0006c703          	lbu	a4,0(a3)
    80007f40:	00f63023          	sd	a5,0(a2)
    80007f44:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007f48:	00063783          	ld	a5,0(a2)
    80007f4c:	00053703          	ld	a4,0(a0)
    80007f50:	00f70e63          	beq	a4,a5,80007f6c <uartstart+0x68>
    80007f54:	01f7f713          	andi	a4,a5,31
    80007f58:	00e806b3          	add	a3,a6,a4
    80007f5c:	0055c703          	lbu	a4,5(a1)
    80007f60:	00178793          	addi	a5,a5,1
    80007f64:	02077713          	andi	a4,a4,32
    80007f68:	fc071ae3          	bnez	a4,80007f3c <uartstart+0x38>
    80007f6c:	00813403          	ld	s0,8(sp)
    80007f70:	01010113          	addi	sp,sp,16
    80007f74:	00008067          	ret

0000000080007f78 <uartgetc>:
    80007f78:	ff010113          	addi	sp,sp,-16
    80007f7c:	00813423          	sd	s0,8(sp)
    80007f80:	01010413          	addi	s0,sp,16
    80007f84:	10000737          	lui	a4,0x10000
    80007f88:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007f8c:	0017f793          	andi	a5,a5,1
    80007f90:	00078c63          	beqz	a5,80007fa8 <uartgetc+0x30>
    80007f94:	00074503          	lbu	a0,0(a4)
    80007f98:	0ff57513          	andi	a0,a0,255
    80007f9c:	00813403          	ld	s0,8(sp)
    80007fa0:	01010113          	addi	sp,sp,16
    80007fa4:	00008067          	ret
    80007fa8:	fff00513          	li	a0,-1
    80007fac:	ff1ff06f          	j	80007f9c <uartgetc+0x24>

0000000080007fb0 <uartintr>:
    80007fb0:	100007b7          	lui	a5,0x10000
    80007fb4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007fb8:	0017f793          	andi	a5,a5,1
    80007fbc:	0a078463          	beqz	a5,80008064 <uartintr+0xb4>
    80007fc0:	fe010113          	addi	sp,sp,-32
    80007fc4:	00813823          	sd	s0,16(sp)
    80007fc8:	00913423          	sd	s1,8(sp)
    80007fcc:	00113c23          	sd	ra,24(sp)
    80007fd0:	02010413          	addi	s0,sp,32
    80007fd4:	100004b7          	lui	s1,0x10000
    80007fd8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007fdc:	0ff57513          	andi	a0,a0,255
    80007fe0:	fffff097          	auipc	ra,0xfffff
    80007fe4:	534080e7          	jalr	1332(ra) # 80007514 <consoleintr>
    80007fe8:	0054c783          	lbu	a5,5(s1)
    80007fec:	0017f793          	andi	a5,a5,1
    80007ff0:	fe0794e3          	bnez	a5,80007fd8 <uartintr+0x28>
    80007ff4:	00004617          	auipc	a2,0x4
    80007ff8:	a2c60613          	addi	a2,a2,-1492 # 8000ba20 <uart_tx_r>
    80007ffc:	00004517          	auipc	a0,0x4
    80008000:	a2c50513          	addi	a0,a0,-1492 # 8000ba28 <uart_tx_w>
    80008004:	00063783          	ld	a5,0(a2)
    80008008:	00053703          	ld	a4,0(a0)
    8000800c:	04f70263          	beq	a4,a5,80008050 <uartintr+0xa0>
    80008010:	100005b7          	lui	a1,0x10000
    80008014:	00005817          	auipc	a6,0x5
    80008018:	f5c80813          	addi	a6,a6,-164 # 8000cf70 <uart_tx_buf>
    8000801c:	01c0006f          	j	80008038 <uartintr+0x88>
    80008020:	0006c703          	lbu	a4,0(a3)
    80008024:	00f63023          	sd	a5,0(a2)
    80008028:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000802c:	00063783          	ld	a5,0(a2)
    80008030:	00053703          	ld	a4,0(a0)
    80008034:	00f70e63          	beq	a4,a5,80008050 <uartintr+0xa0>
    80008038:	01f7f713          	andi	a4,a5,31
    8000803c:	00e806b3          	add	a3,a6,a4
    80008040:	0055c703          	lbu	a4,5(a1)
    80008044:	00178793          	addi	a5,a5,1
    80008048:	02077713          	andi	a4,a4,32
    8000804c:	fc071ae3          	bnez	a4,80008020 <uartintr+0x70>
    80008050:	01813083          	ld	ra,24(sp)
    80008054:	01013403          	ld	s0,16(sp)
    80008058:	00813483          	ld	s1,8(sp)
    8000805c:	02010113          	addi	sp,sp,32
    80008060:	00008067          	ret
    80008064:	00004617          	auipc	a2,0x4
    80008068:	9bc60613          	addi	a2,a2,-1604 # 8000ba20 <uart_tx_r>
    8000806c:	00004517          	auipc	a0,0x4
    80008070:	9bc50513          	addi	a0,a0,-1604 # 8000ba28 <uart_tx_w>
    80008074:	00063783          	ld	a5,0(a2)
    80008078:	00053703          	ld	a4,0(a0)
    8000807c:	04f70263          	beq	a4,a5,800080c0 <uartintr+0x110>
    80008080:	100005b7          	lui	a1,0x10000
    80008084:	00005817          	auipc	a6,0x5
    80008088:	eec80813          	addi	a6,a6,-276 # 8000cf70 <uart_tx_buf>
    8000808c:	01c0006f          	j	800080a8 <uartintr+0xf8>
    80008090:	0006c703          	lbu	a4,0(a3)
    80008094:	00f63023          	sd	a5,0(a2)
    80008098:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000809c:	00063783          	ld	a5,0(a2)
    800080a0:	00053703          	ld	a4,0(a0)
    800080a4:	02f70063          	beq	a4,a5,800080c4 <uartintr+0x114>
    800080a8:	01f7f713          	andi	a4,a5,31
    800080ac:	00e806b3          	add	a3,a6,a4
    800080b0:	0055c703          	lbu	a4,5(a1)
    800080b4:	00178793          	addi	a5,a5,1
    800080b8:	02077713          	andi	a4,a4,32
    800080bc:	fc071ae3          	bnez	a4,80008090 <uartintr+0xe0>
    800080c0:	00008067          	ret
    800080c4:	00008067          	ret

00000000800080c8 <kinit>:
    800080c8:	fc010113          	addi	sp,sp,-64
    800080cc:	02913423          	sd	s1,40(sp)
    800080d0:	fffff7b7          	lui	a5,0xfffff
    800080d4:	00006497          	auipc	s1,0x6
    800080d8:	ebb48493          	addi	s1,s1,-325 # 8000df8f <end+0xfff>
    800080dc:	02813823          	sd	s0,48(sp)
    800080e0:	01313c23          	sd	s3,24(sp)
    800080e4:	00f4f4b3          	and	s1,s1,a5
    800080e8:	02113c23          	sd	ra,56(sp)
    800080ec:	03213023          	sd	s2,32(sp)
    800080f0:	01413823          	sd	s4,16(sp)
    800080f4:	01513423          	sd	s5,8(sp)
    800080f8:	04010413          	addi	s0,sp,64
    800080fc:	000017b7          	lui	a5,0x1
    80008100:	01100993          	li	s3,17
    80008104:	00f487b3          	add	a5,s1,a5
    80008108:	01b99993          	slli	s3,s3,0x1b
    8000810c:	06f9e063          	bltu	s3,a5,8000816c <kinit+0xa4>
    80008110:	00005a97          	auipc	s5,0x5
    80008114:	e80a8a93          	addi	s5,s5,-384 # 8000cf90 <end>
    80008118:	0754ec63          	bltu	s1,s5,80008190 <kinit+0xc8>
    8000811c:	0734fa63          	bgeu	s1,s3,80008190 <kinit+0xc8>
    80008120:	00088a37          	lui	s4,0x88
    80008124:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008128:	00004917          	auipc	s2,0x4
    8000812c:	90890913          	addi	s2,s2,-1784 # 8000ba30 <kmem>
    80008130:	00ca1a13          	slli	s4,s4,0xc
    80008134:	0140006f          	j	80008148 <kinit+0x80>
    80008138:	000017b7          	lui	a5,0x1
    8000813c:	00f484b3          	add	s1,s1,a5
    80008140:	0554e863          	bltu	s1,s5,80008190 <kinit+0xc8>
    80008144:	0534f663          	bgeu	s1,s3,80008190 <kinit+0xc8>
    80008148:	00001637          	lui	a2,0x1
    8000814c:	00100593          	li	a1,1
    80008150:	00048513          	mv	a0,s1
    80008154:	00000097          	auipc	ra,0x0
    80008158:	5e4080e7          	jalr	1508(ra) # 80008738 <__memset>
    8000815c:	00093783          	ld	a5,0(s2)
    80008160:	00f4b023          	sd	a5,0(s1)
    80008164:	00993023          	sd	s1,0(s2)
    80008168:	fd4498e3          	bne	s1,s4,80008138 <kinit+0x70>
    8000816c:	03813083          	ld	ra,56(sp)
    80008170:	03013403          	ld	s0,48(sp)
    80008174:	02813483          	ld	s1,40(sp)
    80008178:	02013903          	ld	s2,32(sp)
    8000817c:	01813983          	ld	s3,24(sp)
    80008180:	01013a03          	ld	s4,16(sp)
    80008184:	00813a83          	ld	s5,8(sp)
    80008188:	04010113          	addi	sp,sp,64
    8000818c:	00008067          	ret
    80008190:	00001517          	auipc	a0,0x1
    80008194:	59050513          	addi	a0,a0,1424 # 80009720 <digits+0x18>
    80008198:	fffff097          	auipc	ra,0xfffff
    8000819c:	4b4080e7          	jalr	1204(ra) # 8000764c <panic>

00000000800081a0 <freerange>:
    800081a0:	fc010113          	addi	sp,sp,-64
    800081a4:	000017b7          	lui	a5,0x1
    800081a8:	02913423          	sd	s1,40(sp)
    800081ac:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800081b0:	009504b3          	add	s1,a0,s1
    800081b4:	fffff537          	lui	a0,0xfffff
    800081b8:	02813823          	sd	s0,48(sp)
    800081bc:	02113c23          	sd	ra,56(sp)
    800081c0:	03213023          	sd	s2,32(sp)
    800081c4:	01313c23          	sd	s3,24(sp)
    800081c8:	01413823          	sd	s4,16(sp)
    800081cc:	01513423          	sd	s5,8(sp)
    800081d0:	01613023          	sd	s6,0(sp)
    800081d4:	04010413          	addi	s0,sp,64
    800081d8:	00a4f4b3          	and	s1,s1,a0
    800081dc:	00f487b3          	add	a5,s1,a5
    800081e0:	06f5e463          	bltu	a1,a5,80008248 <freerange+0xa8>
    800081e4:	00005a97          	auipc	s5,0x5
    800081e8:	daca8a93          	addi	s5,s5,-596 # 8000cf90 <end>
    800081ec:	0954e263          	bltu	s1,s5,80008270 <freerange+0xd0>
    800081f0:	01100993          	li	s3,17
    800081f4:	01b99993          	slli	s3,s3,0x1b
    800081f8:	0734fc63          	bgeu	s1,s3,80008270 <freerange+0xd0>
    800081fc:	00058a13          	mv	s4,a1
    80008200:	00004917          	auipc	s2,0x4
    80008204:	83090913          	addi	s2,s2,-2000 # 8000ba30 <kmem>
    80008208:	00002b37          	lui	s6,0x2
    8000820c:	0140006f          	j	80008220 <freerange+0x80>
    80008210:	000017b7          	lui	a5,0x1
    80008214:	00f484b3          	add	s1,s1,a5
    80008218:	0554ec63          	bltu	s1,s5,80008270 <freerange+0xd0>
    8000821c:	0534fa63          	bgeu	s1,s3,80008270 <freerange+0xd0>
    80008220:	00001637          	lui	a2,0x1
    80008224:	00100593          	li	a1,1
    80008228:	00048513          	mv	a0,s1
    8000822c:	00000097          	auipc	ra,0x0
    80008230:	50c080e7          	jalr	1292(ra) # 80008738 <__memset>
    80008234:	00093703          	ld	a4,0(s2)
    80008238:	016487b3          	add	a5,s1,s6
    8000823c:	00e4b023          	sd	a4,0(s1)
    80008240:	00993023          	sd	s1,0(s2)
    80008244:	fcfa76e3          	bgeu	s4,a5,80008210 <freerange+0x70>
    80008248:	03813083          	ld	ra,56(sp)
    8000824c:	03013403          	ld	s0,48(sp)
    80008250:	02813483          	ld	s1,40(sp)
    80008254:	02013903          	ld	s2,32(sp)
    80008258:	01813983          	ld	s3,24(sp)
    8000825c:	01013a03          	ld	s4,16(sp)
    80008260:	00813a83          	ld	s5,8(sp)
    80008264:	00013b03          	ld	s6,0(sp)
    80008268:	04010113          	addi	sp,sp,64
    8000826c:	00008067          	ret
    80008270:	00001517          	auipc	a0,0x1
    80008274:	4b050513          	addi	a0,a0,1200 # 80009720 <digits+0x18>
    80008278:	fffff097          	auipc	ra,0xfffff
    8000827c:	3d4080e7          	jalr	980(ra) # 8000764c <panic>

0000000080008280 <kfree>:
    80008280:	fe010113          	addi	sp,sp,-32
    80008284:	00813823          	sd	s0,16(sp)
    80008288:	00113c23          	sd	ra,24(sp)
    8000828c:	00913423          	sd	s1,8(sp)
    80008290:	02010413          	addi	s0,sp,32
    80008294:	03451793          	slli	a5,a0,0x34
    80008298:	04079c63          	bnez	a5,800082f0 <kfree+0x70>
    8000829c:	00005797          	auipc	a5,0x5
    800082a0:	cf478793          	addi	a5,a5,-780 # 8000cf90 <end>
    800082a4:	00050493          	mv	s1,a0
    800082a8:	04f56463          	bltu	a0,a5,800082f0 <kfree+0x70>
    800082ac:	01100793          	li	a5,17
    800082b0:	01b79793          	slli	a5,a5,0x1b
    800082b4:	02f57e63          	bgeu	a0,a5,800082f0 <kfree+0x70>
    800082b8:	00001637          	lui	a2,0x1
    800082bc:	00100593          	li	a1,1
    800082c0:	00000097          	auipc	ra,0x0
    800082c4:	478080e7          	jalr	1144(ra) # 80008738 <__memset>
    800082c8:	00003797          	auipc	a5,0x3
    800082cc:	76878793          	addi	a5,a5,1896 # 8000ba30 <kmem>
    800082d0:	0007b703          	ld	a4,0(a5)
    800082d4:	01813083          	ld	ra,24(sp)
    800082d8:	01013403          	ld	s0,16(sp)
    800082dc:	00e4b023          	sd	a4,0(s1)
    800082e0:	0097b023          	sd	s1,0(a5)
    800082e4:	00813483          	ld	s1,8(sp)
    800082e8:	02010113          	addi	sp,sp,32
    800082ec:	00008067          	ret
    800082f0:	00001517          	auipc	a0,0x1
    800082f4:	43050513          	addi	a0,a0,1072 # 80009720 <digits+0x18>
    800082f8:	fffff097          	auipc	ra,0xfffff
    800082fc:	354080e7          	jalr	852(ra) # 8000764c <panic>

0000000080008300 <kalloc>:
    80008300:	fe010113          	addi	sp,sp,-32
    80008304:	00813823          	sd	s0,16(sp)
    80008308:	00913423          	sd	s1,8(sp)
    8000830c:	00113c23          	sd	ra,24(sp)
    80008310:	02010413          	addi	s0,sp,32
    80008314:	00003797          	auipc	a5,0x3
    80008318:	71c78793          	addi	a5,a5,1820 # 8000ba30 <kmem>
    8000831c:	0007b483          	ld	s1,0(a5)
    80008320:	02048063          	beqz	s1,80008340 <kalloc+0x40>
    80008324:	0004b703          	ld	a4,0(s1)
    80008328:	00001637          	lui	a2,0x1
    8000832c:	00500593          	li	a1,5
    80008330:	00048513          	mv	a0,s1
    80008334:	00e7b023          	sd	a4,0(a5)
    80008338:	00000097          	auipc	ra,0x0
    8000833c:	400080e7          	jalr	1024(ra) # 80008738 <__memset>
    80008340:	01813083          	ld	ra,24(sp)
    80008344:	01013403          	ld	s0,16(sp)
    80008348:	00048513          	mv	a0,s1
    8000834c:	00813483          	ld	s1,8(sp)
    80008350:	02010113          	addi	sp,sp,32
    80008354:	00008067          	ret

0000000080008358 <initlock>:
    80008358:	ff010113          	addi	sp,sp,-16
    8000835c:	00813423          	sd	s0,8(sp)
    80008360:	01010413          	addi	s0,sp,16
    80008364:	00813403          	ld	s0,8(sp)
    80008368:	00b53423          	sd	a1,8(a0)
    8000836c:	00052023          	sw	zero,0(a0)
    80008370:	00053823          	sd	zero,16(a0)
    80008374:	01010113          	addi	sp,sp,16
    80008378:	00008067          	ret

000000008000837c <acquire>:
    8000837c:	fe010113          	addi	sp,sp,-32
    80008380:	00813823          	sd	s0,16(sp)
    80008384:	00913423          	sd	s1,8(sp)
    80008388:	00113c23          	sd	ra,24(sp)
    8000838c:	01213023          	sd	s2,0(sp)
    80008390:	02010413          	addi	s0,sp,32
    80008394:	00050493          	mv	s1,a0
    80008398:	10002973          	csrr	s2,sstatus
    8000839c:	100027f3          	csrr	a5,sstatus
    800083a0:	ffd7f793          	andi	a5,a5,-3
    800083a4:	10079073          	csrw	sstatus,a5
    800083a8:	fffff097          	auipc	ra,0xfffff
    800083ac:	8e4080e7          	jalr	-1820(ra) # 80006c8c <mycpu>
    800083b0:	07852783          	lw	a5,120(a0)
    800083b4:	06078e63          	beqz	a5,80008430 <acquire+0xb4>
    800083b8:	fffff097          	auipc	ra,0xfffff
    800083bc:	8d4080e7          	jalr	-1836(ra) # 80006c8c <mycpu>
    800083c0:	07852783          	lw	a5,120(a0)
    800083c4:	0004a703          	lw	a4,0(s1)
    800083c8:	0017879b          	addiw	a5,a5,1
    800083cc:	06f52c23          	sw	a5,120(a0)
    800083d0:	04071063          	bnez	a4,80008410 <acquire+0x94>
    800083d4:	00100713          	li	a4,1
    800083d8:	00070793          	mv	a5,a4
    800083dc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800083e0:	0007879b          	sext.w	a5,a5
    800083e4:	fe079ae3          	bnez	a5,800083d8 <acquire+0x5c>
    800083e8:	0ff0000f          	fence
    800083ec:	fffff097          	auipc	ra,0xfffff
    800083f0:	8a0080e7          	jalr	-1888(ra) # 80006c8c <mycpu>
    800083f4:	01813083          	ld	ra,24(sp)
    800083f8:	01013403          	ld	s0,16(sp)
    800083fc:	00a4b823          	sd	a0,16(s1)
    80008400:	00013903          	ld	s2,0(sp)
    80008404:	00813483          	ld	s1,8(sp)
    80008408:	02010113          	addi	sp,sp,32
    8000840c:	00008067          	ret
    80008410:	0104b903          	ld	s2,16(s1)
    80008414:	fffff097          	auipc	ra,0xfffff
    80008418:	878080e7          	jalr	-1928(ra) # 80006c8c <mycpu>
    8000841c:	faa91ce3          	bne	s2,a0,800083d4 <acquire+0x58>
    80008420:	00001517          	auipc	a0,0x1
    80008424:	30850513          	addi	a0,a0,776 # 80009728 <digits+0x20>
    80008428:	fffff097          	auipc	ra,0xfffff
    8000842c:	224080e7          	jalr	548(ra) # 8000764c <panic>
    80008430:	00195913          	srli	s2,s2,0x1
    80008434:	fffff097          	auipc	ra,0xfffff
    80008438:	858080e7          	jalr	-1960(ra) # 80006c8c <mycpu>
    8000843c:	00197913          	andi	s2,s2,1
    80008440:	07252e23          	sw	s2,124(a0)
    80008444:	f75ff06f          	j	800083b8 <acquire+0x3c>

0000000080008448 <release>:
    80008448:	fe010113          	addi	sp,sp,-32
    8000844c:	00813823          	sd	s0,16(sp)
    80008450:	00113c23          	sd	ra,24(sp)
    80008454:	00913423          	sd	s1,8(sp)
    80008458:	01213023          	sd	s2,0(sp)
    8000845c:	02010413          	addi	s0,sp,32
    80008460:	00052783          	lw	a5,0(a0)
    80008464:	00079a63          	bnez	a5,80008478 <release+0x30>
    80008468:	00001517          	auipc	a0,0x1
    8000846c:	2c850513          	addi	a0,a0,712 # 80009730 <digits+0x28>
    80008470:	fffff097          	auipc	ra,0xfffff
    80008474:	1dc080e7          	jalr	476(ra) # 8000764c <panic>
    80008478:	01053903          	ld	s2,16(a0)
    8000847c:	00050493          	mv	s1,a0
    80008480:	fffff097          	auipc	ra,0xfffff
    80008484:	80c080e7          	jalr	-2036(ra) # 80006c8c <mycpu>
    80008488:	fea910e3          	bne	s2,a0,80008468 <release+0x20>
    8000848c:	0004b823          	sd	zero,16(s1)
    80008490:	0ff0000f          	fence
    80008494:	0f50000f          	fence	iorw,ow
    80008498:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000849c:	ffffe097          	auipc	ra,0xffffe
    800084a0:	7f0080e7          	jalr	2032(ra) # 80006c8c <mycpu>
    800084a4:	100027f3          	csrr	a5,sstatus
    800084a8:	0027f793          	andi	a5,a5,2
    800084ac:	04079a63          	bnez	a5,80008500 <release+0xb8>
    800084b0:	07852783          	lw	a5,120(a0)
    800084b4:	02f05e63          	blez	a5,800084f0 <release+0xa8>
    800084b8:	fff7871b          	addiw	a4,a5,-1
    800084bc:	06e52c23          	sw	a4,120(a0)
    800084c0:	00071c63          	bnez	a4,800084d8 <release+0x90>
    800084c4:	07c52783          	lw	a5,124(a0)
    800084c8:	00078863          	beqz	a5,800084d8 <release+0x90>
    800084cc:	100027f3          	csrr	a5,sstatus
    800084d0:	0027e793          	ori	a5,a5,2
    800084d4:	10079073          	csrw	sstatus,a5
    800084d8:	01813083          	ld	ra,24(sp)
    800084dc:	01013403          	ld	s0,16(sp)
    800084e0:	00813483          	ld	s1,8(sp)
    800084e4:	00013903          	ld	s2,0(sp)
    800084e8:	02010113          	addi	sp,sp,32
    800084ec:	00008067          	ret
    800084f0:	00001517          	auipc	a0,0x1
    800084f4:	26050513          	addi	a0,a0,608 # 80009750 <digits+0x48>
    800084f8:	fffff097          	auipc	ra,0xfffff
    800084fc:	154080e7          	jalr	340(ra) # 8000764c <panic>
    80008500:	00001517          	auipc	a0,0x1
    80008504:	23850513          	addi	a0,a0,568 # 80009738 <digits+0x30>
    80008508:	fffff097          	auipc	ra,0xfffff
    8000850c:	144080e7          	jalr	324(ra) # 8000764c <panic>

0000000080008510 <holding>:
    80008510:	00052783          	lw	a5,0(a0)
    80008514:	00079663          	bnez	a5,80008520 <holding+0x10>
    80008518:	00000513          	li	a0,0
    8000851c:	00008067          	ret
    80008520:	fe010113          	addi	sp,sp,-32
    80008524:	00813823          	sd	s0,16(sp)
    80008528:	00913423          	sd	s1,8(sp)
    8000852c:	00113c23          	sd	ra,24(sp)
    80008530:	02010413          	addi	s0,sp,32
    80008534:	01053483          	ld	s1,16(a0)
    80008538:	ffffe097          	auipc	ra,0xffffe
    8000853c:	754080e7          	jalr	1876(ra) # 80006c8c <mycpu>
    80008540:	01813083          	ld	ra,24(sp)
    80008544:	01013403          	ld	s0,16(sp)
    80008548:	40a48533          	sub	a0,s1,a0
    8000854c:	00153513          	seqz	a0,a0
    80008550:	00813483          	ld	s1,8(sp)
    80008554:	02010113          	addi	sp,sp,32
    80008558:	00008067          	ret

000000008000855c <push_off>:
    8000855c:	fe010113          	addi	sp,sp,-32
    80008560:	00813823          	sd	s0,16(sp)
    80008564:	00113c23          	sd	ra,24(sp)
    80008568:	00913423          	sd	s1,8(sp)
    8000856c:	02010413          	addi	s0,sp,32
    80008570:	100024f3          	csrr	s1,sstatus
    80008574:	100027f3          	csrr	a5,sstatus
    80008578:	ffd7f793          	andi	a5,a5,-3
    8000857c:	10079073          	csrw	sstatus,a5
    80008580:	ffffe097          	auipc	ra,0xffffe
    80008584:	70c080e7          	jalr	1804(ra) # 80006c8c <mycpu>
    80008588:	07852783          	lw	a5,120(a0)
    8000858c:	02078663          	beqz	a5,800085b8 <push_off+0x5c>
    80008590:	ffffe097          	auipc	ra,0xffffe
    80008594:	6fc080e7          	jalr	1788(ra) # 80006c8c <mycpu>
    80008598:	07852783          	lw	a5,120(a0)
    8000859c:	01813083          	ld	ra,24(sp)
    800085a0:	01013403          	ld	s0,16(sp)
    800085a4:	0017879b          	addiw	a5,a5,1
    800085a8:	06f52c23          	sw	a5,120(a0)
    800085ac:	00813483          	ld	s1,8(sp)
    800085b0:	02010113          	addi	sp,sp,32
    800085b4:	00008067          	ret
    800085b8:	0014d493          	srli	s1,s1,0x1
    800085bc:	ffffe097          	auipc	ra,0xffffe
    800085c0:	6d0080e7          	jalr	1744(ra) # 80006c8c <mycpu>
    800085c4:	0014f493          	andi	s1,s1,1
    800085c8:	06952e23          	sw	s1,124(a0)
    800085cc:	fc5ff06f          	j	80008590 <push_off+0x34>

00000000800085d0 <pop_off>:
    800085d0:	ff010113          	addi	sp,sp,-16
    800085d4:	00813023          	sd	s0,0(sp)
    800085d8:	00113423          	sd	ra,8(sp)
    800085dc:	01010413          	addi	s0,sp,16
    800085e0:	ffffe097          	auipc	ra,0xffffe
    800085e4:	6ac080e7          	jalr	1708(ra) # 80006c8c <mycpu>
    800085e8:	100027f3          	csrr	a5,sstatus
    800085ec:	0027f793          	andi	a5,a5,2
    800085f0:	04079663          	bnez	a5,8000863c <pop_off+0x6c>
    800085f4:	07852783          	lw	a5,120(a0)
    800085f8:	02f05a63          	blez	a5,8000862c <pop_off+0x5c>
    800085fc:	fff7871b          	addiw	a4,a5,-1
    80008600:	06e52c23          	sw	a4,120(a0)
    80008604:	00071c63          	bnez	a4,8000861c <pop_off+0x4c>
    80008608:	07c52783          	lw	a5,124(a0)
    8000860c:	00078863          	beqz	a5,8000861c <pop_off+0x4c>
    80008610:	100027f3          	csrr	a5,sstatus
    80008614:	0027e793          	ori	a5,a5,2
    80008618:	10079073          	csrw	sstatus,a5
    8000861c:	00813083          	ld	ra,8(sp)
    80008620:	00013403          	ld	s0,0(sp)
    80008624:	01010113          	addi	sp,sp,16
    80008628:	00008067          	ret
    8000862c:	00001517          	auipc	a0,0x1
    80008630:	12450513          	addi	a0,a0,292 # 80009750 <digits+0x48>
    80008634:	fffff097          	auipc	ra,0xfffff
    80008638:	018080e7          	jalr	24(ra) # 8000764c <panic>
    8000863c:	00001517          	auipc	a0,0x1
    80008640:	0fc50513          	addi	a0,a0,252 # 80009738 <digits+0x30>
    80008644:	fffff097          	auipc	ra,0xfffff
    80008648:	008080e7          	jalr	8(ra) # 8000764c <panic>

000000008000864c <push_on>:
    8000864c:	fe010113          	addi	sp,sp,-32
    80008650:	00813823          	sd	s0,16(sp)
    80008654:	00113c23          	sd	ra,24(sp)
    80008658:	00913423          	sd	s1,8(sp)
    8000865c:	02010413          	addi	s0,sp,32
    80008660:	100024f3          	csrr	s1,sstatus
    80008664:	100027f3          	csrr	a5,sstatus
    80008668:	0027e793          	ori	a5,a5,2
    8000866c:	10079073          	csrw	sstatus,a5
    80008670:	ffffe097          	auipc	ra,0xffffe
    80008674:	61c080e7          	jalr	1564(ra) # 80006c8c <mycpu>
    80008678:	07852783          	lw	a5,120(a0)
    8000867c:	02078663          	beqz	a5,800086a8 <push_on+0x5c>
    80008680:	ffffe097          	auipc	ra,0xffffe
    80008684:	60c080e7          	jalr	1548(ra) # 80006c8c <mycpu>
    80008688:	07852783          	lw	a5,120(a0)
    8000868c:	01813083          	ld	ra,24(sp)
    80008690:	01013403          	ld	s0,16(sp)
    80008694:	0017879b          	addiw	a5,a5,1
    80008698:	06f52c23          	sw	a5,120(a0)
    8000869c:	00813483          	ld	s1,8(sp)
    800086a0:	02010113          	addi	sp,sp,32
    800086a4:	00008067          	ret
    800086a8:	0014d493          	srli	s1,s1,0x1
    800086ac:	ffffe097          	auipc	ra,0xffffe
    800086b0:	5e0080e7          	jalr	1504(ra) # 80006c8c <mycpu>
    800086b4:	0014f493          	andi	s1,s1,1
    800086b8:	06952e23          	sw	s1,124(a0)
    800086bc:	fc5ff06f          	j	80008680 <push_on+0x34>

00000000800086c0 <pop_on>:
    800086c0:	ff010113          	addi	sp,sp,-16
    800086c4:	00813023          	sd	s0,0(sp)
    800086c8:	00113423          	sd	ra,8(sp)
    800086cc:	01010413          	addi	s0,sp,16
    800086d0:	ffffe097          	auipc	ra,0xffffe
    800086d4:	5bc080e7          	jalr	1468(ra) # 80006c8c <mycpu>
    800086d8:	100027f3          	csrr	a5,sstatus
    800086dc:	0027f793          	andi	a5,a5,2
    800086e0:	04078463          	beqz	a5,80008728 <pop_on+0x68>
    800086e4:	07852783          	lw	a5,120(a0)
    800086e8:	02f05863          	blez	a5,80008718 <pop_on+0x58>
    800086ec:	fff7879b          	addiw	a5,a5,-1
    800086f0:	06f52c23          	sw	a5,120(a0)
    800086f4:	07853783          	ld	a5,120(a0)
    800086f8:	00079863          	bnez	a5,80008708 <pop_on+0x48>
    800086fc:	100027f3          	csrr	a5,sstatus
    80008700:	ffd7f793          	andi	a5,a5,-3
    80008704:	10079073          	csrw	sstatus,a5
    80008708:	00813083          	ld	ra,8(sp)
    8000870c:	00013403          	ld	s0,0(sp)
    80008710:	01010113          	addi	sp,sp,16
    80008714:	00008067          	ret
    80008718:	00001517          	auipc	a0,0x1
    8000871c:	06050513          	addi	a0,a0,96 # 80009778 <digits+0x70>
    80008720:	fffff097          	auipc	ra,0xfffff
    80008724:	f2c080e7          	jalr	-212(ra) # 8000764c <panic>
    80008728:	00001517          	auipc	a0,0x1
    8000872c:	03050513          	addi	a0,a0,48 # 80009758 <digits+0x50>
    80008730:	fffff097          	auipc	ra,0xfffff
    80008734:	f1c080e7          	jalr	-228(ra) # 8000764c <panic>

0000000080008738 <__memset>:
    80008738:	ff010113          	addi	sp,sp,-16
    8000873c:	00813423          	sd	s0,8(sp)
    80008740:	01010413          	addi	s0,sp,16
    80008744:	1a060e63          	beqz	a2,80008900 <__memset+0x1c8>
    80008748:	40a007b3          	neg	a5,a0
    8000874c:	0077f793          	andi	a5,a5,7
    80008750:	00778693          	addi	a3,a5,7
    80008754:	00b00813          	li	a6,11
    80008758:	0ff5f593          	andi	a1,a1,255
    8000875c:	fff6071b          	addiw	a4,a2,-1
    80008760:	1b06e663          	bltu	a3,a6,8000890c <__memset+0x1d4>
    80008764:	1cd76463          	bltu	a4,a3,8000892c <__memset+0x1f4>
    80008768:	1a078e63          	beqz	a5,80008924 <__memset+0x1ec>
    8000876c:	00b50023          	sb	a1,0(a0)
    80008770:	00100713          	li	a4,1
    80008774:	1ae78463          	beq	a5,a4,8000891c <__memset+0x1e4>
    80008778:	00b500a3          	sb	a1,1(a0)
    8000877c:	00200713          	li	a4,2
    80008780:	1ae78a63          	beq	a5,a4,80008934 <__memset+0x1fc>
    80008784:	00b50123          	sb	a1,2(a0)
    80008788:	00300713          	li	a4,3
    8000878c:	18e78463          	beq	a5,a4,80008914 <__memset+0x1dc>
    80008790:	00b501a3          	sb	a1,3(a0)
    80008794:	00400713          	li	a4,4
    80008798:	1ae78263          	beq	a5,a4,8000893c <__memset+0x204>
    8000879c:	00b50223          	sb	a1,4(a0)
    800087a0:	00500713          	li	a4,5
    800087a4:	1ae78063          	beq	a5,a4,80008944 <__memset+0x20c>
    800087a8:	00b502a3          	sb	a1,5(a0)
    800087ac:	00700713          	li	a4,7
    800087b0:	18e79e63          	bne	a5,a4,8000894c <__memset+0x214>
    800087b4:	00b50323          	sb	a1,6(a0)
    800087b8:	00700e93          	li	t4,7
    800087bc:	00859713          	slli	a4,a1,0x8
    800087c0:	00e5e733          	or	a4,a1,a4
    800087c4:	01059e13          	slli	t3,a1,0x10
    800087c8:	01c76e33          	or	t3,a4,t3
    800087cc:	01859313          	slli	t1,a1,0x18
    800087d0:	006e6333          	or	t1,t3,t1
    800087d4:	02059893          	slli	a7,a1,0x20
    800087d8:	40f60e3b          	subw	t3,a2,a5
    800087dc:	011368b3          	or	a7,t1,a7
    800087e0:	02859813          	slli	a6,a1,0x28
    800087e4:	0108e833          	or	a6,a7,a6
    800087e8:	03059693          	slli	a3,a1,0x30
    800087ec:	003e589b          	srliw	a7,t3,0x3
    800087f0:	00d866b3          	or	a3,a6,a3
    800087f4:	03859713          	slli	a4,a1,0x38
    800087f8:	00389813          	slli	a6,a7,0x3
    800087fc:	00f507b3          	add	a5,a0,a5
    80008800:	00e6e733          	or	a4,a3,a4
    80008804:	000e089b          	sext.w	a7,t3
    80008808:	00f806b3          	add	a3,a6,a5
    8000880c:	00e7b023          	sd	a4,0(a5)
    80008810:	00878793          	addi	a5,a5,8
    80008814:	fed79ce3          	bne	a5,a3,8000880c <__memset+0xd4>
    80008818:	ff8e7793          	andi	a5,t3,-8
    8000881c:	0007871b          	sext.w	a4,a5
    80008820:	01d787bb          	addw	a5,a5,t4
    80008824:	0ce88e63          	beq	a7,a4,80008900 <__memset+0x1c8>
    80008828:	00f50733          	add	a4,a0,a5
    8000882c:	00b70023          	sb	a1,0(a4)
    80008830:	0017871b          	addiw	a4,a5,1
    80008834:	0cc77663          	bgeu	a4,a2,80008900 <__memset+0x1c8>
    80008838:	00e50733          	add	a4,a0,a4
    8000883c:	00b70023          	sb	a1,0(a4)
    80008840:	0027871b          	addiw	a4,a5,2
    80008844:	0ac77e63          	bgeu	a4,a2,80008900 <__memset+0x1c8>
    80008848:	00e50733          	add	a4,a0,a4
    8000884c:	00b70023          	sb	a1,0(a4)
    80008850:	0037871b          	addiw	a4,a5,3
    80008854:	0ac77663          	bgeu	a4,a2,80008900 <__memset+0x1c8>
    80008858:	00e50733          	add	a4,a0,a4
    8000885c:	00b70023          	sb	a1,0(a4)
    80008860:	0047871b          	addiw	a4,a5,4
    80008864:	08c77e63          	bgeu	a4,a2,80008900 <__memset+0x1c8>
    80008868:	00e50733          	add	a4,a0,a4
    8000886c:	00b70023          	sb	a1,0(a4)
    80008870:	0057871b          	addiw	a4,a5,5
    80008874:	08c77663          	bgeu	a4,a2,80008900 <__memset+0x1c8>
    80008878:	00e50733          	add	a4,a0,a4
    8000887c:	00b70023          	sb	a1,0(a4)
    80008880:	0067871b          	addiw	a4,a5,6
    80008884:	06c77e63          	bgeu	a4,a2,80008900 <__memset+0x1c8>
    80008888:	00e50733          	add	a4,a0,a4
    8000888c:	00b70023          	sb	a1,0(a4)
    80008890:	0077871b          	addiw	a4,a5,7
    80008894:	06c77663          	bgeu	a4,a2,80008900 <__memset+0x1c8>
    80008898:	00e50733          	add	a4,a0,a4
    8000889c:	00b70023          	sb	a1,0(a4)
    800088a0:	0087871b          	addiw	a4,a5,8
    800088a4:	04c77e63          	bgeu	a4,a2,80008900 <__memset+0x1c8>
    800088a8:	00e50733          	add	a4,a0,a4
    800088ac:	00b70023          	sb	a1,0(a4)
    800088b0:	0097871b          	addiw	a4,a5,9
    800088b4:	04c77663          	bgeu	a4,a2,80008900 <__memset+0x1c8>
    800088b8:	00e50733          	add	a4,a0,a4
    800088bc:	00b70023          	sb	a1,0(a4)
    800088c0:	00a7871b          	addiw	a4,a5,10
    800088c4:	02c77e63          	bgeu	a4,a2,80008900 <__memset+0x1c8>
    800088c8:	00e50733          	add	a4,a0,a4
    800088cc:	00b70023          	sb	a1,0(a4)
    800088d0:	00b7871b          	addiw	a4,a5,11
    800088d4:	02c77663          	bgeu	a4,a2,80008900 <__memset+0x1c8>
    800088d8:	00e50733          	add	a4,a0,a4
    800088dc:	00b70023          	sb	a1,0(a4)
    800088e0:	00c7871b          	addiw	a4,a5,12
    800088e4:	00c77e63          	bgeu	a4,a2,80008900 <__memset+0x1c8>
    800088e8:	00e50733          	add	a4,a0,a4
    800088ec:	00b70023          	sb	a1,0(a4)
    800088f0:	00d7879b          	addiw	a5,a5,13
    800088f4:	00c7f663          	bgeu	a5,a2,80008900 <__memset+0x1c8>
    800088f8:	00f507b3          	add	a5,a0,a5
    800088fc:	00b78023          	sb	a1,0(a5)
    80008900:	00813403          	ld	s0,8(sp)
    80008904:	01010113          	addi	sp,sp,16
    80008908:	00008067          	ret
    8000890c:	00b00693          	li	a3,11
    80008910:	e55ff06f          	j	80008764 <__memset+0x2c>
    80008914:	00300e93          	li	t4,3
    80008918:	ea5ff06f          	j	800087bc <__memset+0x84>
    8000891c:	00100e93          	li	t4,1
    80008920:	e9dff06f          	j	800087bc <__memset+0x84>
    80008924:	00000e93          	li	t4,0
    80008928:	e95ff06f          	j	800087bc <__memset+0x84>
    8000892c:	00000793          	li	a5,0
    80008930:	ef9ff06f          	j	80008828 <__memset+0xf0>
    80008934:	00200e93          	li	t4,2
    80008938:	e85ff06f          	j	800087bc <__memset+0x84>
    8000893c:	00400e93          	li	t4,4
    80008940:	e7dff06f          	j	800087bc <__memset+0x84>
    80008944:	00500e93          	li	t4,5
    80008948:	e75ff06f          	j	800087bc <__memset+0x84>
    8000894c:	00600e93          	li	t4,6
    80008950:	e6dff06f          	j	800087bc <__memset+0x84>

0000000080008954 <__memmove>:
    80008954:	ff010113          	addi	sp,sp,-16
    80008958:	00813423          	sd	s0,8(sp)
    8000895c:	01010413          	addi	s0,sp,16
    80008960:	0e060863          	beqz	a2,80008a50 <__memmove+0xfc>
    80008964:	fff6069b          	addiw	a3,a2,-1
    80008968:	0006881b          	sext.w	a6,a3
    8000896c:	0ea5e863          	bltu	a1,a0,80008a5c <__memmove+0x108>
    80008970:	00758713          	addi	a4,a1,7
    80008974:	00a5e7b3          	or	a5,a1,a0
    80008978:	40a70733          	sub	a4,a4,a0
    8000897c:	0077f793          	andi	a5,a5,7
    80008980:	00f73713          	sltiu	a4,a4,15
    80008984:	00174713          	xori	a4,a4,1
    80008988:	0017b793          	seqz	a5,a5
    8000898c:	00e7f7b3          	and	a5,a5,a4
    80008990:	10078863          	beqz	a5,80008aa0 <__memmove+0x14c>
    80008994:	00900793          	li	a5,9
    80008998:	1107f463          	bgeu	a5,a6,80008aa0 <__memmove+0x14c>
    8000899c:	0036581b          	srliw	a6,a2,0x3
    800089a0:	fff8081b          	addiw	a6,a6,-1
    800089a4:	02081813          	slli	a6,a6,0x20
    800089a8:	01d85893          	srli	a7,a6,0x1d
    800089ac:	00858813          	addi	a6,a1,8
    800089b0:	00058793          	mv	a5,a1
    800089b4:	00050713          	mv	a4,a0
    800089b8:	01088833          	add	a6,a7,a6
    800089bc:	0007b883          	ld	a7,0(a5)
    800089c0:	00878793          	addi	a5,a5,8
    800089c4:	00870713          	addi	a4,a4,8
    800089c8:	ff173c23          	sd	a7,-8(a4)
    800089cc:	ff0798e3          	bne	a5,a6,800089bc <__memmove+0x68>
    800089d0:	ff867713          	andi	a4,a2,-8
    800089d4:	02071793          	slli	a5,a4,0x20
    800089d8:	0207d793          	srli	a5,a5,0x20
    800089dc:	00f585b3          	add	a1,a1,a5
    800089e0:	40e686bb          	subw	a3,a3,a4
    800089e4:	00f507b3          	add	a5,a0,a5
    800089e8:	06e60463          	beq	a2,a4,80008a50 <__memmove+0xfc>
    800089ec:	0005c703          	lbu	a4,0(a1)
    800089f0:	00e78023          	sb	a4,0(a5)
    800089f4:	04068e63          	beqz	a3,80008a50 <__memmove+0xfc>
    800089f8:	0015c603          	lbu	a2,1(a1)
    800089fc:	00100713          	li	a4,1
    80008a00:	00c780a3          	sb	a2,1(a5)
    80008a04:	04e68663          	beq	a3,a4,80008a50 <__memmove+0xfc>
    80008a08:	0025c603          	lbu	a2,2(a1)
    80008a0c:	00200713          	li	a4,2
    80008a10:	00c78123          	sb	a2,2(a5)
    80008a14:	02e68e63          	beq	a3,a4,80008a50 <__memmove+0xfc>
    80008a18:	0035c603          	lbu	a2,3(a1)
    80008a1c:	00300713          	li	a4,3
    80008a20:	00c781a3          	sb	a2,3(a5)
    80008a24:	02e68663          	beq	a3,a4,80008a50 <__memmove+0xfc>
    80008a28:	0045c603          	lbu	a2,4(a1)
    80008a2c:	00400713          	li	a4,4
    80008a30:	00c78223          	sb	a2,4(a5)
    80008a34:	00e68e63          	beq	a3,a4,80008a50 <__memmove+0xfc>
    80008a38:	0055c603          	lbu	a2,5(a1)
    80008a3c:	00500713          	li	a4,5
    80008a40:	00c782a3          	sb	a2,5(a5)
    80008a44:	00e68663          	beq	a3,a4,80008a50 <__memmove+0xfc>
    80008a48:	0065c703          	lbu	a4,6(a1)
    80008a4c:	00e78323          	sb	a4,6(a5)
    80008a50:	00813403          	ld	s0,8(sp)
    80008a54:	01010113          	addi	sp,sp,16
    80008a58:	00008067          	ret
    80008a5c:	02061713          	slli	a4,a2,0x20
    80008a60:	02075713          	srli	a4,a4,0x20
    80008a64:	00e587b3          	add	a5,a1,a4
    80008a68:	f0f574e3          	bgeu	a0,a5,80008970 <__memmove+0x1c>
    80008a6c:	02069613          	slli	a2,a3,0x20
    80008a70:	02065613          	srli	a2,a2,0x20
    80008a74:	fff64613          	not	a2,a2
    80008a78:	00e50733          	add	a4,a0,a4
    80008a7c:	00c78633          	add	a2,a5,a2
    80008a80:	fff7c683          	lbu	a3,-1(a5)
    80008a84:	fff78793          	addi	a5,a5,-1
    80008a88:	fff70713          	addi	a4,a4,-1
    80008a8c:	00d70023          	sb	a3,0(a4)
    80008a90:	fec798e3          	bne	a5,a2,80008a80 <__memmove+0x12c>
    80008a94:	00813403          	ld	s0,8(sp)
    80008a98:	01010113          	addi	sp,sp,16
    80008a9c:	00008067          	ret
    80008aa0:	02069713          	slli	a4,a3,0x20
    80008aa4:	02075713          	srli	a4,a4,0x20
    80008aa8:	00170713          	addi	a4,a4,1
    80008aac:	00e50733          	add	a4,a0,a4
    80008ab0:	00050793          	mv	a5,a0
    80008ab4:	0005c683          	lbu	a3,0(a1)
    80008ab8:	00178793          	addi	a5,a5,1
    80008abc:	00158593          	addi	a1,a1,1
    80008ac0:	fed78fa3          	sb	a3,-1(a5)
    80008ac4:	fee798e3          	bne	a5,a4,80008ab4 <__memmove+0x160>
    80008ac8:	f89ff06f          	j	80008a50 <__memmove+0xfc>
	...
