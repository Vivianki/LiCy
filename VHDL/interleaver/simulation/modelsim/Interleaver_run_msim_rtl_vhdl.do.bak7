transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/U/Desktop/interleaver/interleaver.vhd}

vcom -93 -work work {C:/Users/U/Desktop/interleaver/simulation/modelsim/interleaver.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  main_interleaver

add wave *
view structure
view signals
run -all
