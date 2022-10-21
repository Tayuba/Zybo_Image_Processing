onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib zybo_z7_20_base_2021_1_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {zybo_z7_20_base_2021_1.udo}

run -all

quit -force
