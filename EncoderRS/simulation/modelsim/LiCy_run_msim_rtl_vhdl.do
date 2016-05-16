transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/altera_lite/15.1/TCC/db {C:/altera_lite/15.1/TCC/db/pll_altpll1.v}
vcom -93 -work work {C:/altera_lite/15.1/TCC/PLL.vhd}
vcom -93 -work work {C:/altera_lite/15.1/TCC/LiCy.vhd}

vcom -93 -work work {C:/altera_lite/15.1/TCC/simulation/modelsim/LiCy.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  pll_testbench

add wave *
view structure
view signals
run -all
