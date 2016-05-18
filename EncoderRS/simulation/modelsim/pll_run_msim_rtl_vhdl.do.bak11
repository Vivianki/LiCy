transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/altera_lite/15.1/TCC/gf_mult.vhd}
vcom -93 -work work {C:/altera_lite/15.1/TCC/gf_sum.vhd}
vcom -93 -work work {C:/altera_lite/15.1/TCC/register4b.vhd}
vcom -93 -work work {C:/altera_lite/15.1/TCC/and4x1.vhd}
vcom -93 -work work {C:/altera_lite/15.1/TCC/mux2x1.vhd}
vcom -93 -work work {C:/altera_lite/15.1/TCC/static_12.vhd}
vcom -93 -work work {C:/altera_lite/15.1/TCC/static_1.vhd}
vcom -93 -work work {C:/altera_lite/15.1/TCC/static_3.vhd}
vcom -93 -work work {C:/altera_lite/15.1/TCC/static_15.vhd}
vcom -93 -work work {C:/altera_lite/15.1/TCC/sinalControle.vhd}
vcom -93 -work work {C:/altera_lite/15.1/TCC/RSencoder.vhd}

vcom -93 -work work {C:/altera_lite/15.1/TCC/simulation/modelsim/RSencoder.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  RSencoder_vhd_tst

add wave *
view structure
view signals
run -all
