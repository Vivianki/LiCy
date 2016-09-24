transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Vivian/Documents/GitHub/LiCy/Reed Solomon decoder/Syndrome.vhd}
vcom -93 -work work {C:/Users/Vivian/Documents/GitHub/LiCy/Reed Solomon decoder/register4b.vhd}
vcom -93 -work work {C:/Users/Vivian/Documents/GitHub/LiCy/Reed Solomon decoder/static_12.vhd}
vcom -93 -work work {C:/Users/Vivian/Documents/GitHub/LiCy/Reed Solomon decoder/static_8.vhd}
vcom -93 -work work {C:/Users/Vivian/Documents/GitHub/LiCy/Reed Solomon decoder/static_4.vhd}
vcom -93 -work work {C:/Users/Vivian/Documents/GitHub/LiCy/Reed Solomon decoder/static_3.vhd}
vcom -93 -work work {C:/Users/Vivian/Documents/GitHub/LiCy/Reed Solomon decoder/static_2.vhd}
vcom -93 -work work {C:/Users/Vivian/Documents/GitHub/LiCy/Reed Solomon decoder/static_1.vhd}
vcom -93 -work work {C:/Users/Vivian/Documents/GitHub/LiCy/Reed Solomon decoder/gf_sum.vhd}
vcom -93 -work work {C:/Users/Vivian/Documents/GitHub/LiCy/Reed Solomon decoder/gf_mult.vhd}
vcom -93 -work work {C:/Users/Vivian/Documents/GitHub/LiCy/Reed Solomon decoder/static_11.vhd}
vcom -93 -work work {C:/Users/Vivian/Documents/GitHub/LiCy/Reed Solomon decoder/static_6.vhd}

vcom -93 -work work {C:/Users/Vivian/Documents/GitHub/LiCy/Reed Solomon decoder/simulation/modelsim/Syndrome.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  Syndrome

add wave *
view structure
view signals
run 100 us
