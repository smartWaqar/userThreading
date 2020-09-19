program20: program20_exp.c ufiber20.c contextSwitch2.s
	gcc -O3 program20_exp.c ufiber20.c contextSwitch2.s -std=gnu11 -lpthread -g -o program20_exp

delegation: delegation_exp.c
	gcc delegation_exp.c -lpthread -o delg

locks: locks_exp.c
	gcc locks_exp.c -lpthread -o locks_exp

locks2: locks_exp.c
	gcc locks_exp2.c -lpthread -o locks_exp2


program20_repnops: program20_exp.c ufiber20.c contextSwitch2.s
	gcc -D REP_NOPS -O3 program20_exp.c ufiber20.c contextSwitch2.s -std=gnu11 -lpthread -g -o program20_exp

delegation_repnops: delegation_exp.c
	gcc -D REP_NOPS delegation_exp.c -lpthread -o delg

locks_repnops: locks_exp.c
	gcc -D REP_NOPS locks_exp.c -lpthread -o locks_exp

locks2_repnops: locks_exp.c
	gcc -D REP_NOPS locks_exp2.c -lpthread -o locks_exp2


clean_program20:
	$(RM) ./program20_exp
	
clean_delegation:
	$(RM) ./delg

clean_locks:
	$(RM) ./locks_exp


program20AVX: program20_exp.c ufiber20.c contextSwitch2.s
	gcc -O3 program20_exp.c ufiber20.c contextSwitch2.s -mavx512f -mavx512cd -std=gnu11 -lpthread -g -o program20_exp



program21: program20_exp.c ufiber21.c contextSwitch2.s
	gcc -O3 program21_exp.c ufiber21.c contextSwitch2.s -std=gnu11 -lpthread -g -o program21



program22: program22.c ufiber22.h ufiber22.c
	gcc -O3 program22.c ufiber22.c -std=gnu11 -lpthread -g -o program22

program22_repnops: program22.c ufiber22.h ufiber22.c
	gcc -D REP_NOPS -O3 program22.c ufiber22.c -std=gnu11 -lpthread -g -o program22



program23: program23.c ufiber23.h ufiber23.c
	gcc -O3 program23.c ufiber23.c -std=gnu11 -lpthread -g -o program23

program23_repnops: program23.c ufiber23.h ufiber23.c
	gcc -D REP_NOPS -O3 program23.c ufiber23.c -std=gnu11 -lpthread -g -o program23


# program24: program24.c ufiber24.h ufiber24.c
# 	gcc -O3 program24.c ufiber24.c -std=gnu11 -lpthread -g -o program24

# program24_repnops: program24.c ufiber24.h ufiber24.c
# 	gcc -D REP_NOPS -O3 program24.c ufiber24.c -std=gnu11 -lpthread -g -o program24