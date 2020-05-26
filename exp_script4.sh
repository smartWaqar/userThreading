#For generating graphs

#echo "------- Nodes Experiment -------"
#echo "Without Sleep"

#echo "----------------------------------------"
#echo "Without repnops"

#echo "locks_exp2.c"
uselessvar=`make locks2`


#echo "HT(0, 64)"
for i in 1 2 3; do ./locks_exp2 0 64;  done | grep cycles > log.txt
e1var1=`cat log.txt | ./mean` 
#echo "SS(0, 1)"
for i in 1 2 3; do ./locks_exp2 0 1;  done | grep cycles > log.txt
e1var2=`cat log.txt | ./mean` 
#echo "DS(0, 16)"
for i in 1 2 3; do ./locks_exp2 0 16;  done | grep cycles > log.txt
e1var3=`cat log.txt | ./mean` 

echo "locks" $e1var1 $e1var2 $e1var3

#echo "----------------------------------------"
#echo "With repnops"
#echo "locks_RN"
uselessvar=`make locks2_repnops`


#echo "HT(0, 64)"
for i in 1 2 3; do ./locks_exp2 0 64;  done | grep cycles > log.txt
e1var1=`cat log.txt | ./mean` 
#echo "SS(0, 1)"
for i in 1 2 3; do ./locks_exp2 0 1;  done | grep cycles > log.txt
e1var2=`cat log.txt | ./mean` 
#echo "DS(0, 16)"
for i in 1 2 3; do ./locks_exp2 0 16;  done | grep cycles > log.txt
e1var3=`cat log.txt | ./mean` 

echo "locks_RN" $e1var1 $e1var2 $e1var3