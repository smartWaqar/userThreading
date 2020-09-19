#include <stdio.h>
#include <inttypes.h>

typedef struct {
  uint64_t rsp;
  uint64_t rip;
  //uint64_t rax;
  //uint64_t rbx;
  //uint64_t rcx;
  uint64_t rdx;
  uint64_t r8;
  uint64_t r9;
  uint64_t r10;
  uint64_t r11;
  //
  uint64_t r12;
  uint64_t r13;
  uint64_t r14;
  uint64_t r15;
  uint64_t rbp;
  uint64_t rdi;
  uint64_t rsi;
  //uint64_t rcx;
  //volatile uint32_t mxcsr;
  volatile uint64_t mxcsr;
} Context;

int main(){

	printf("Hello\n");

	// #ifdef gigi

	// 	for (int i =0; i < gigi; i++){
	// 		printf("A\n");
	// 	}

	// #endif

	Context c;
	c.mxcsr = 1;

	Context *d = &c;

	printf("C %ld\n", c.mxcsr);

	int foo = 10;


	__asm__ __volatile__(
		//"movq $rsi, 112(%%eax) \n\t"
		//"movq 8(%%eax), %%rcx\n\t"
		//"addl %%rcx, 8(%%eax) \n\t"
		//"addq $1, (%%rax) \n\t"
		//"nop"
		"xorq $1, 112(%[t]) \n\t"
		:
		: [t] "a"(d)

	);

	printf("C %ld\n", c.mxcsr);
}