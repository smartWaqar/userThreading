set terminal pngcairo font "arial,10" size 500,500
set output 'barchart.png'
set boxwidth 0.75
set style fill solid
set style data histograms

set title "Effeciencies of Fiber, Delegation and Locks"
set ylabel "Clock Cycles per Operartion"

plot "exp_data.dat" using 2:xtic(1) lt rgb "#406090" title "HT",\
     "" using 3 lt rgb "#40FF00" title "SS",\
	 "" using 4 lt rgb "#40FFFF" title "DS"
