# This file was generated, do not modify it. # hide
using Gnuplot, Random
Random.seed!(145)
x = 1:2:20
y = 5*rand(10)
yerr = 0.4*abs.(randn(10))
xerr = abs.(randn(10))
@gp(x, y, yerr, 1.5xerr, "w boxerrorbars t 'test' lc 'black'", 
    "set xrange [0:22]","set yrange [0:6]")
    save(term="pngcairo size 600,400", output="plt_errs2.png") #hide