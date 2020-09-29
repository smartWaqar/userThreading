#include <stdio.h>


int main(){

	int x = 0;
	bili:
		if (x == 1){
			printf("OMG---\n");
		}

	x = 1;

	void *ptr = &&bili;

	asm volatile(
		"movq %%rax, %%rcx\n\t"
		"jmpq *%%rcx \n\t"
		:
		: [x] "a" (ptr)
		:

	);
}