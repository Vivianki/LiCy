transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/owner/Desktop/LiCy/Reed Solomon decoder/register4b.vhd}
vcom -93 -work work {C:/Users/owner/Desktop/LiCy/Reed Solomon decoder/static_1.vhd}
vcom -93 -work work {C:/Users/owner/Desktop/LiCy/Reed Solomon decoder/gf_sum.vhd}
vcom -93 -work work {C:/Users/owner/Desktop/LiCy/Reed Solomon decoder/gf_mult.vhd}
vcom -93 -work work {C:/Users/owner/Desktop/LiCy/Reed Solomon decoder/gf_inv.vhd}
vcom -93 -work work {C:/Users/owner/Desktop/LiCy/Reed Solomon decoder/BerlekampController.vhd}
vcom -93 -work work {C:/Users/owner/Desktop/LiCy/Reed Solomon decoder/BerleMas.vhd}
vcom -93 -work work {C:/Users/owner/Desktop/LiCy/Reed Solomon decoder/Berlekamp_Massey.vhd}
vcom -93 -work work {C:/Users/owner/Desktop/LiCy/Reed Solomon decoder/Mux2x1.vhd}

vcom -93 -work work {C:/Users/owner/Desktop/LiCy/Reed Solomon decoder/simulation/modelsim/BerleMas.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  BerleMas

add wave *
view structure
view signals
run -all
