echo "------- Nodes Experiment -------"
echo "Without Sleep"

echo "----------------------------------------"
echo "Without repnops"
echo "locks_exp2.c with spinlocks"
make locks2


echo "HT(0, 64)"
for i in 1 2 3 4 5 6 7 8 9 10; do ./locks_exp2 0 64;  done | grep cycles > log.txt
cat log.txt | ./meanSD 
echo "SS(0, 1)"
for i in 1 2 3 4 5 6 7 8 9 10; do ./locks_exp2 0 1;  done | grep cycles > log.txt
cat log.txt | ./meanSD 
echo "DS(0, 16)"
for i in 1 2 3 4 5 6 7 8 9 10; do ./locks_exp2 0 16;  done | grep cycles > log.txt
cat log.txt | ./meanSD 


echo "----------------------------------------"
echo "With repnops"
echo "locks_exp2.c with spinlocks"
make locks2_repnops


echo "HT(0, 64)"
for i in 1 2 3 4 5 6 7 8 9 10; do ./locks_exp2 0 64;  done | grep cycles > log.txt
cat log.txt | ./meanSD 
echo "SS(0, 1)"
for i in 1 2 3 4 5 6 7 8 9 10; do ./locks_exp2 0 1;  done | grep cycles > log.txt
cat log.txt | ./meanSD 
echo "DS(0, 16)"
for i in 1 2 3 4 5 6 7 8 9 10; do ./locks_exp2 0 16;  done | grep cycles > log.txt
cat log.txt | ./meanSD