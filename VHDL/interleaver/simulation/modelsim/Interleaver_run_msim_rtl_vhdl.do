transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Vivian/Documents/GitHub/LiCy/VHDL/interleaver/ram.vhd}
vcom -93 -work work {C:/Users/Vivian/Documents/GitHub/LiCy/VHDL/interleaver/deinterleaver.vhd}

vcom -93 -work work {C:/Users/Vivian/Documents/GitHub/LiCy/VHDL/interleaver/simulation/modelsim/deinterleaver.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  main_deinterleaver

add wave *
view structure
view signals
run -all
