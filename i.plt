set encoding utf8
set termoption noenhanced
set title "*model description"
set xlabel "V"
set ylabel "V"
set grid
unset logscale x 
set xrange [1.620000e+00:1.980000e+00]
unset logscale y 
set yrange [1.602000e+00:1.998000e+00]
#set xtics 1
#set x2tics 1
#set ytics 1
#set y2tics 1
set format y "%g"
set format x "%g"
plot 'i.data' using 1:2 with lines lw 1 title "vdd"
