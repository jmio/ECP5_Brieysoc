# Autogenerated by LiteX / git: 46cd9c5a
set -e
yosys -l top.rpt top.ys
nextpnr-ecp5 --json top.json --lpf top.lpf --textcfg top.config --25k --package CABGA256 --speed 6 --timing-allow-fail  --seed 1
ecppack top.config --svf top.svf --bit top.bit --bootaddr 0  
