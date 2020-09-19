set terminal pngcairo font "arial,10" size 500,500
set output 'scatterplot1.png'

set title "Relation of Performance with Cache Misss"
set ylabel "Clock Cycles per Operartion"
set xlabel "Cache misses in millions"

plot 'exp_data.dat' with points pt 7
