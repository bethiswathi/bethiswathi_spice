set encoding utf8
set termoption noenhanced
set title "Constant values"
set grid
unset logscale x 
set xrange [9.000000e-01:1.100000e+00]
unset logscale y 
set yrange [-1.100000e+00:1.100000e+00]
#set xtics 1
#set x2tics 1
#set ytics 1
#set y2tics 1
set format y "%g"
set format x "%g"
plot 'v.data' using 1:2 with lines lw 1 title "i"
