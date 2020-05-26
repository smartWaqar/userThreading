#!/bin/sh

#Quads Machine Experiment

echo "------- Quad 3 Experiment -------"
echo "Without Sleep"
echo "Without Repnops"
echo "program20_exp.c "
make program20


echo "HT(0, 28)"
for i in 1 2 3 4 5 6 7 8 9 10; do ./program20_exp 0 28;  done | grep cycles > log.txt
cat log.txt | ./meanSD 
echo "SS(0, 1)"
for i in 1 2 3 4 5 6 7 8 9 10; do ./program20_exp 0 1;  done | grep cycles > log.txt
cat log.txt | ./meanSD 
echo "DS(0, 14)"
for i in 1 2 3 4 5 6 7 8 9 10; do ./program20_exp 0 14;  done | grep cycles > log.txt
cat log.txt | ./meanSD 



echo "---------------------------------------"
echo "delegation_exp.c"
make delegation


echo "HT(0, 28)"
for i in 1 2 3 4 5 6 7 8 9 10; do ./delg 0 28;  done | grep cycles > log.txt
cat log.txt | ./meanSD 
echo "SS(0, 1)"
for i in 1 2 3 4 5 6 7 8 9 10; do ./delg 0 1;  done | grep cycles > log.txt
cat log.txt | ./meanSD 
echo "DS(0, 14)"
for i in 1 2 3 4 5 6 7 8 9 10; do ./delg 0 14;  done | grep cycles > log.txt
cat log.txt | ./meanSD 


echo "----------------------------------------"
echo "locks_exp.c with spinlocks"
make locks


echo "HT(0, 28)"
for i in 1 2 3 4 5 6 7 8 9 10; do ./locks_exp 0 28;  done | grep cycles > log.txt
cat log.txt | ./meanSD 
echo "SS(0, 1)"
for i in 1 2 3 4 5 6 7 8 9 10; do ./locks_exp 0 1;  done | grep cycles > log.txt
cat log.txt | ./meanSD 
echo "DS(0, 14)"
for i in 1 2 3 4 5 6 7 8 9 10; do ./locks_exp 0 14;  done | grep cycles > log.txt
cat log.txt | ./meanSD 


echo ""
echo "######################################"
echo ""



echo "With Repnops"
echo "program20_exp.c "
make program20_repnops


echo "HT(0, 28)"
for i in 1 2 3 4 5 6 7 8 9 10; do ./program20_exp 0 28;  done | grep cycles > log.txt
cat log.txt | ./meanSD 
echo "SS(0, 1)"
for i in 1 2 3 4 5 6 7 8 9 10; do ./program20_exp 0 1;  done | grep cycles > log.txt
cat log.txt | ./meanSD 
echo "DS(0, 14)"
for i in 1 2 3 4 5 6 7 8 9 10; do ./program20_exp 0 14;  done | grep cycles > log.txt
cat log.txt | ./meanSD 



echo "---------------------------------------"
echo "delegation_exp.c"
make delegation_repnops


echo "HT(0, 28)"
for i in 1 2 3 4 5 6 7 8 9 10; do ./delg 0 28;  done | grep cycles > log.txt
cat log.txt | ./meanSD 
echo "SS(0, 1)"
for i in 1 2 3 4 5 6 7 8 9 10; do ./delg 0 1;  done | grep cycles > log.txt
cat log.txt | ./meanSD 
echo "DS(0, 14)"
for i in 1 2 3 4 5 6 7 8 9 10; do ./delg 0 14;  done | grep cycles > log.txt
cat log.txt | ./meanSD 


echo "----------------------------------------"
echo "locks_exp.c with spinlocks"
make locks_repnops


echo "HT(0, 28)"
for i in 1 2 3 4 5 6 7 8 9 10; do ./locks_exp 0 28;  done | grep cycles > log.txt
cat log.txt | ./meanSD 
echo "SS(0, 1)"
for i in 1 2 3 4 5 6 7 8 9 10; do ./locks_exp 0 1;  done | grep cycles > log.txt
cat log.txt | ./meanSD 
echo "DS(0, 14)"
for i in 1 2 3 4 5 6 7 8 9 10; do ./locks_exp 0 14;  done | grep cycles > log.txt
cat log.txt | ./meanSD