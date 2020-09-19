#!/bin/sh


# Quads3 With all experiments in both without RepNop and with RepNop


#Quads Machine Experiment For Generating bar chart graphs


# echo "------- Quad 3 Experiment -------"
# echo "Without Sleep"
# echo "Without Repnops"
# echo "program20_exp.c "
uselessvar=`make program20`


#echo "HT(0, 28)"
for i in 1 2 3 4 5 6 7 8 9 10; do ./program20_exp 0 28;  done | grep cycles > log.txt
e1var1=`cat log.txt | ./mean` 
#echo "SS(0, 1)"
for i in 1 2 3 4 5 6 7 8 9 10; do ./program20_exp 0 1;  done | grep cycles > log.txt
e1var2=`cat log.txt | ./mean` 
#echo "DS(0, 14)"
for i in 1 2 3 4 5 6 7 8 9 10; do ./program20_exp 0 14;  done | grep cycles > log.txt
e1var3=`cat log.txt | ./mean` 

echo "fiber" $e1var1 $e1var2 $e1var3

# echo "---------------------------------------"
# echo "delegation_exp.c"
uselessvar=`make delegation`


#echo "HT(0, 28)"
for i in 1 2 3 4 5 6 7 8 9 10; do ./delg 0 28;  done | grep cycles > log.txt
e1var1=`cat log.txt | ./mean` 
#echo "SS(0, 1)"
e1var2=`for i in 1 2 3 4 5 6 7 8 9 10; do ./delg 0 1;  done | grep cycles > log.txt
cat log.txt | ./mean` 
#echo "DS(0, 14)"
for i in 1 2 3 4 5 6 7 8 9 10; do ./delg 0 14;  done | grep cycles > log.txt
e1var3=`cat log.txt | ./mean` 


echo "delegation" $e1var1 $e1var2 $e1var3

# echo "----------------------------------------"
# echo "locks_exp.c with spinlocks"
uselessvar=`make locks`


#echo "HT(0, 28)"
for i in 1 2 3 4 5 6 7 8 9 10; do ./locks_exp 0 28;  done | grep cycles > log.txt
e1var1=`cat log.txt | ./mean` 
#echo "SS(0, 1)"
for i in 1 2 3 4 5 6 7 8 9 10; do ./locks_exp 0 1;  done | grep cycles > log.txt
e1var2=`cat log.txt | ./mean` 
#echo "DS(0, 14)"
for i in 1 2 3 4 5 6 7 8 9 10; do ./locks_exp 0 14;  done | grep cycles > log.txt
e1var3=`cat log.txt | ./mean` 

echo "locks" $e1var1 $e1var2 $e1var3


# echo ""
# echo "######################################"
# echo ""



# echo "With Repnops"
# echo "program20_exp.c "
uselessvar=`make program20_repnops`


#echo "HT(0, 28)"
for i in 1 2 3 4 5 6 7 8 9 10; do ./program20_exp 0 28;  done | grep cycles > log.txt
e1var1=`cat log.txt | ./mean` 
#echo "SS(0, 1)"
for i in 1 2 3 4 5 6 7 8 9 10; do ./program20_exp 0 1;  done | grep cycles > log.txt
e1var2=`cat log.txt | ./mean` 
#echo "DS(0, 14)"
for i in 1 2 3 4 5 6 7 8 9 10; do ./program20_exp 0 14;  done | grep cycles > log.txt
e1var3=`cat log.txt | ./mean`

echo "fiberRN" $e1var1 $e1var2 $e1var3

# echo "---------------------------------------"
# echo "delegation_exp.c"
uselessvar=`make delegation_repnops`


#echo "HT(0, 28)"
for i in 1 2 3 4 5 6 7 8 9 10; do ./delg 0 28;  done | grep cycles > log.txt
e1var1=`cat log.txt | ./mean` 
#echo "SS(0, 1)"
for i in 1 2 3 4 5 6 7 8 9 10; do ./delg 0 1;  done | grep cycles > log.txt
e1var2=`cat log.txt | ./mean` 
#echo "DS(0, 14)"
for i in 1 2 3 4 5 6 7 8 9 10; do ./delg 0 14;  done | grep cycles > log.txt
e1var3=`cat log.txt | ./mean` 

echo "delegationRN" $e1var1 $e1var2 $e1var3


# echo "----------------------------------------"
# echo "locks_exp.c with spinlocks"
uselessvar=`make locks_repnops`


#echo "HT(0, 28)"
for i in 1 2 3 4 5 6 7 8 9 10; do ./locks_exp 0 28;  done | grep cycles > log.txt
e1var1=`cat log.txt | ./mean` 
#echo "SS(0, 1)"
for i in 1 2 3 4 5 6 7 8 9 10; do ./locks_exp 0 1;  done | grep cycles > log.txt
e1var2=`cat log.txt | ./mean` 
#echo "DS(0, 14)"
for i in 1 2 3 4 5 6 7 8 9 10; do ./locks_exp 0 14;  done | grep cycles > log.txt
e1var3=`cat log.txt | ./mean`

echo "locksRN" $e1var1 $e1var2 $e1var3