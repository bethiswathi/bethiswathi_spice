set encoding utf8
set termoption noenhanced
set title "*model description"
set xlabel "V"
set ylabel "V"
set grid
unset logscale x 
set xrange [0.000000e+00:1.800000e+00]
unset logscale y 
set yrange [-9.000000e-02:1.890000e+00]
#set xtics 1
#set x2tics 1
#set ytics 1
#set y2tics 1
set format y "%g"
set format x "%g"
plot 'vdd#branch*1e6.data' using 1:2 with lines lw 1 title "in"
