# Measuring impact on different number of repnops on fibers


# uselessvar=`make program20`


# #echo "HT(0, 28)"
# for i in 1 2 3 4 5 6 7 8 9 10; do ./program20_exp 0 28;  done | grep cycles > log.txt
# e1var1=`cat log.txt | ./mean` 
# #echo "SS(0, 1)"
# for i in 1 2 3 4 5 6 7 8 9 10; do ./program20_exp 0 1;  done | grep cycles > log.txt
# e1var2=`cat log.txt | ./mean` 
# #echo "DS(0, 14)"
# for i in 1 2 3 4 5 6 7 8 9 10; do ./program20_exp 0 14;  done | grep cycles > log.txt
# e1var3=`cat log.txt | ./mean` 

# echo "fiber" $e1var1 $e1var2 $e1var3




# echo "With Repnops"
# echo "program20_exp.c "
# uselessvar=`make program20_repnops`

# #echo "HT(0, 28)"
# for i in 1 2 3 4 5 6 7 8 9 10; do ./program20_exp 0 28;  done | grep cycles > log.txt
# e1var1=`cat log.txt | ./mean` 
# #echo "SS(0, 1)"
# for i in 1 2 3 4 5 6 7 8 9 10; do ./program20_exp 0 1;  done | grep cycles > log.txt
# e1var2=`cat log.txt | ./mean` 
# #echo "DS(0, 14)"
# for i in 1 2 3 4 5 6 7 8 9 10; do ./program20_exp 0 14;  done | grep cycles > log.txt
# e1var3=`cat log.txt | ./mean`

# echo "fiberRN" $e1var1 $e1var2 $e1var3





# uselessvar=`make program20AVX`


# #echo "HT(0, 28)"
# for i in 1 2 3 4 5 6 7 8 9 10; do ./program20_exp 0 28;  done | grep cycles > log.txt
# e1var1=`cat log.txt | ./mean` 
# #echo "SS(0, 1)"
# for i in 1 2 3 4 5 6 7 8 9 10; do ./program20_exp 0 1;  done | grep cycles > log.txt
# e1var2=`cat log.txt | ./mean` 
# #echo "DS(0, 14)"
# for i in 1 2 3 4 5 6 7 8 9 10; do ./program20_exp 0 14;  done | grep cycles > log.txt
# e1var3=`cat log.txt | ./mean` 

# echo "fiber" $e1var1 $e1var2 $e1var3



# uselessvar=`make program22`


# #echo "HT(0, 28)"
# for i in 1 2 3 4 5 6 7 8 9 10; do ./program22 0 28;  done | grep cycles > log.txt
# e1var1=`cat log.txt | ./mean` 
# #echo "SS(0, 1)"
# for i in 1 2 3 4 5 6 7 8 9 10; do ./program22 0 1;  done | grep cycles > log.txt
# e1var2=`cat log.txt | ./mean` 
# #echo "DS(0, 14)"
# for i in 1 2 3 4 5 6 7 8 9 10; do ./program22 0 14;  done | grep cycles > log.txt
# e1var3=`cat log.txt | ./mean` 

# echo "fiber" $e1var1 $e1var2 $e1var3


# uselessvar=`make program22_repnops`


# #echo "HT(0, 28)"
# for i in 1 2 3 4 5 6 7 8 9 10; do ./program22 0 28;  done | grep cycles > log.txt
# e1var1=`cat log.txt | ./mean` 
# #echo "SS(0, 1)"
# for i in 1 2 3 4 5 6 7 8 9 10; do ./program22 0 1;  done | grep cycles > log.txt
# e1var2=`cat log.txt | ./mean` 
# #echo "DS(0, 14)"
# for i in 1 2 3 4 5 6 7 8 9 10; do ./program22 0 14;  done | grep cycles > log.txt
# e1var3=`cat log.txt | ./mean` 

# echo "fiber" $e1var1 $e1var2 $e1var3



# uselessvar=`make program23`


# #echo "HT(0, 28)"
# for i in 1 2 3 4 5 6 7 8 9 10; do ./program23 0 28;  done | grep cycles > log.txt
# e1var1=`cat log.txt | ./mean` 
# #echo "SS(0, 1)"
# for i in 1 2 3 4 5 6 7 8 9 10; do ./program23 0 1;  done | grep cycles > log.txt
# e1var2=`cat log.txt | ./mean` 
# #echo "DS(0, 14)"
# for i in 1 2 3 4 5 6 7 8 9 10; do ./program23 0 14;  done | grep cycles > log.txt
# e1var3=`cat log.txt | ./mean` 

# echo "fiber" $e1var1 $e1var2 $e1var3


# uselessvar=`make program24`


# #echo "HT(0, 28)"
# for i in 1 2 3 4 5 6 7 8 9 10; do ./program24 0 28;  done | grep cycles > log.txt
# e1var1=`cat log.txt | ./mean` 
# #echo "SS(0, 1)"
# for i in 1 2 3 4 5 6 7 8 9 10; do ./program24 0 1;  done | grep cycles > log.txt
# e1var2=`cat log.txt | ./mean` 
# #echo "DS(0, 14)"
# for i in 1 2 3 4 5 6 7 8 9 10; do ./program24 0 14;  done | grep cycles > log.txt
# e1var3=`cat log.txt | ./mean` 

# echo "fiber" $e1var1 $e1var2 $e1var3


# gcc -O3 ufiber24.c -std=gnu11 -lpthread -g -o program24
# for i in 1 2 3 4 5 6 7 8 9 10; do ./program24 0 14;  done | grep cycles > log.txt
# cat log.txt | ./meanSD

gcc -O3 -D REP_NOPS=1 ufiber24.c -std=gnu11 -lpthread -g -o program24
for i in 1 2 3 4 5 6 7 8 9 10; do ./program24 0 14;  done | grep cycles > log.txt
cat log.txt | ./meanSD

gcc -O3 -D REP_NOPS=2 ufiber24.c -std=gnu11 -lpthread -g -o program24
for i in 1 2 3 4 5 6 7 8 9 10; do ./program24 0 14;  done | grep cycles > log.txt
cat log.txt | ./meanSD

gcc -O3 -D REP_NOPS=3 ufiber24.c -std=gnu11 -lpthread -g -o program24
for i in 1 2 3 4 5 6 7 8 9 10; do ./program24 0 14;  done | grep cycles > log.txt
cat log.txt | ./meanSD

gcc -O3 -D REP_NOPS=4 ufiber24.c -std=gnu11 -lpthread -g -o program24
for i in 1 2 3 4 5 6 7 8 9 10; do ./program24 0 14;  done | grep cycles > log.txt
cat log.txt | ./meanSD

gcc -O3 -D REP_NOPS=5 ufiber24.c -std=gnu11 -lpthread -g -o program24
for i in 1 2 3 4 5 6 7 8 9 10; do ./program24 0 14;  done | grep cycles > log.txt
cat log.txt | ./meanSD

gcc -O3 -D REP_NOPS=6 ufiber24.c -std=gnu11 -lpthread -g -o program24
for i in 1 2 3 4 5 6 7 8 9 10; do ./program24 0 14;  done | grep cycles > log.txt
cat log.txt | ./meanSD

gcc -O3 -D REP_NOPS=7 ufiber24.c -std=gnu11 -lpthread -g -o program24
for i in 1 2 3 4 5 6 7 8 9 10; do ./program24 0 14;  done | grep cycles > log.txt
cat log.txt | ./meanSD

gcc -O3 -D REP_NOPS=8 ufiber24.c -std=gnu11 -lpthread -g -o program24
for i in 1 2 3 4 5 6 7 8 9 10; do ./program24 0 14;  done | grep cycles > log.txt
cat log.txt | ./meanSD

gcc -O3 -D REP_NOPS=9 ufiber24.c -std=gnu11 -lpthread -g -o program24
for i in 1 2 3 4 5 6 7 8 9 10; do ./program24 0 14;  done | grep cycles > log.txt
cat log.txt | ./meanSD

gcc -O3 -D REP_NOPS=10 ufiber24.c -std=gnu11 -lpthread -g -o program24
for i in 1 2 3 4 5 6 7 8 9 10; do ./program24 0 14;  done | grep cycles > log.txt
cat log.txt | ./meanSD
