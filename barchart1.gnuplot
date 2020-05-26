set terminal pngcairo font "arial,10" size 500,500
set output 'barchart.png'
set boxwidth 0.75
set style fill solid
set style data histograms
plot "exp_data.dat" using 2:xtic(1) lt rgb "#406090",\
     "" using 3 lt rgb "#40FF00",\
	 "" using 4 lt rgb "#40FFFF"
