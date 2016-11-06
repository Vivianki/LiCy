
# (C) 2001-2016 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ----------------------------------------
# Auto-generated simulation script msim_setup.tcl
# ----------------------------------------
# This script can be used to simulate the following IP:
#     uart_tb
# To create a top-level simulation script which compiles other
# IP, and manages other system issues, copy the following template
# and adapt it to your needs:
# 
# # Start of template
# # If the copied and modified template file is "mentor.do", run it as:
# #   vsim -c -do mentor.do
# #
# # Source the generated sim script
# source msim_setup.tcl
# # Compile eda/sim_lib contents first
# dev_com
# # Override the top-level name (so that elab is useful)
# set TOP_LEVEL_NAME top
# # Compile the standalone IP.
# com
# # Compile the user top-level
# vlog -sv ../../top.sv
# # Elaborate the design.
# elab
# # Run the simulation
# run -a
# # Report success to the shell
# exit -code 0
# # End of template
# ----------------------------------------
# If uart_tb is one of several IP cores in your
# Quartus project, you can generate a simulation script
# suitable for inclusion in your top-level simulation
# script by running the following command line:
# 
# ip-setup-simulation --quartus-project=<quartus project>
# 
# ip-setup-simulation will discover the Altera IP
# within the Quartus project, and generate a unified
# script which supports all the Altera IP within the design.
# ----------------------------------------
# ACDS 15.1 185 win32 2016.10.23.17:58:43

# ----------------------------------------
# Initialize variables
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
}

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "uart_tb"
}

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./../"
}

if ![info exists QUARTUS_INSTALL_DIR] { 
  set QUARTUS_INSTALL_DIR "C:/users/u/documents/quartus/quartus/"
}

if ![info exists USER_DEFINED_COMPILE_OPTIONS] { 
  set USER_DEFINED_COMPILE_OPTIONS ""
}
if ![info exists USER_DEFINED_ELAB_OPTIONS] { 
  set USER_DEFINED_ELAB_OPTIONS ""
}

# ----------------------------------------
# Initialize simulation properties - DO NOT MODIFY!
set ELAB_OPTIONS ""
set SIM_OPTIONS ""
if ![ string match "*-64 vsim*" [ vsim -version ] ] {
} else {
}

# ----------------------------------------
# Copy ROM/RAM files to simulation directory
alias file_copy {
  echo "\[exec\] file_copy"
}

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib          ./libraries/     
ensure_lib          ./libraries/work/
vmap       work     ./libraries/work/
vmap       work_lib ./libraries/work/
if ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] {
  ensure_lib                  ./libraries/altera_ver/      
  vmap       altera_ver       ./libraries/altera_ver/      
  ensure_lib                  ./libraries/lpm_ver/         
  vmap       lpm_ver          ./libraries/lpm_ver/         
  ensure_lib                  ./libraries/sgate_ver/       
  vmap       sgate_ver        ./libraries/sgate_ver/       
  ensure_lib                  ./libraries/altera_mf_ver/   
  vmap       altera_mf_ver    ./libraries/altera_mf_ver/   
  ensure_lib                  ./libraries/altera_lnsim_ver/
  vmap       altera_lnsim_ver ./libraries/altera_lnsim_ver/
  ensure_lib                  ./libraries/cycloneive_ver/  
  vmap       cycloneive_ver   ./libraries/cycloneive_ver/  
  ensure_lib                  ./libraries/altera/          
  vmap       altera           ./libraries/altera/          
  ensure_lib                  ./libraries/lpm/             
  vmap       lpm              ./libraries/lpm/             
  ensure_lib                  ./libraries/sgate/           
  vmap       sgate            ./libraries/sgate/           
  ensure_lib                  ./libraries/altera_mf/       
  vmap       altera_mf        ./libraries/altera_mf/       
  ensure_lib                  ./libraries/altera_lnsim/    
  vmap       altera_lnsim     ./libraries/altera_lnsim/    
  ensure_lib                  ./libraries/cycloneive/      
  vmap       cycloneive       ./libraries/cycloneive/      
}
ensure_lib                                                ./libraries/altera_common_sv_packages/                     
vmap       altera_common_sv_packages                      ./libraries/altera_common_sv_packages/                     
ensure_lib                                                ./libraries/uart_inst_avalon_rs232_slave_translator/       
vmap       uart_inst_avalon_rs232_slave_translator        ./libraries/uart_inst_avalon_rs232_slave_translator/       
ensure_lib                                                ./libraries/uart_inst_avalon_rs232_slave_bfm_m0_translator/
vmap       uart_inst_avalon_rs232_slave_bfm_m0_translator ./libraries/uart_inst_avalon_rs232_slave_bfm_m0_translator/
ensure_lib                                                ./libraries/irq_mapper/                                    
vmap       irq_mapper                                     ./libraries/irq_mapper/                                    
ensure_lib                                                ./libraries/mm_interconnect_0/                             
vmap       mm_interconnect_0                              ./libraries/mm_interconnect_0/                             
ensure_lib                                                ./libraries/uart_inst_reset_bfm/                           
vmap       uart_inst_reset_bfm                            ./libraries/uart_inst_reset_bfm/                           
ensure_lib                                                ./libraries/uart_inst_interrupt_bfm/                       
vmap       uart_inst_interrupt_bfm                        ./libraries/uart_inst_interrupt_bfm/                       
ensure_lib                                                ./libraries/uart_inst_external_interface_bfm/              
vmap       uart_inst_external_interface_bfm               ./libraries/uart_inst_external_interface_bfm/              
ensure_lib                                                ./libraries/uart_inst_clk_bfm/                             
vmap       uart_inst_clk_bfm                              ./libraries/uart_inst_clk_bfm/                             
ensure_lib                                                ./libraries/uart_inst_avalon_rs232_slave_bfm/              
vmap       uart_inst_avalon_rs232_slave_bfm               ./libraries/uart_inst_avalon_rs232_slave_bfm/              
ensure_lib                                                ./libraries/uart_inst/                                     
vmap       uart_inst                                      ./libraries/uart_inst/                                     

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  if ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] {
    eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"              -work altera_ver      
    eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                       -work lpm_ver         
    eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                          -work sgate_ver       
    eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                      -work altera_mf_ver   
    eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/altera_lnsim_for_vhdl.sv"  -work altera_lnsim_ver
    eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneive_atoms.v"               -work cycloneive_ver  
    eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_syn_attributes.vhd"        -work altera          
    eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_standard_functions.vhd"    -work altera          
    eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/alt_dspbuilder_package.vhd"       -work altera          
    eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_europa_support_lib.vhd"    -work altera          
    eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives_components.vhd" -work altera          
    eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.vhd"            -work altera          
    eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220pack.vhd"                      -work lpm             
    eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.vhd"                     -work lpm             
    eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate_pack.vhd"                   -work sgate           
    eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.vhd"                        -work sgate           
    eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf_components.vhd"         -work altera_mf       
    eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.vhd"                    -work altera_mf       
    eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim_components.vhd"      -work altera_lnsim    
    eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneive_atoms.vhd"             -work cycloneive      
    eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneive_components.vhd"        -work cycloneive      
  }
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/uart_tb/simulation/submodules/mentor/verbosity_pkg.sv"                                                          -work altera_common_sv_packages                     
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/uart_tb/simulation/submodules/mentor/avalon_mm_pkg.sv"                                                          -work altera_common_sv_packages                     
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/uart_tb/simulation/submodules/mentor/avalon_utilities_pkg.sv"                                                   -work altera_common_sv_packages                     
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/uart_tb/simulation/submodules/mentor/altera_merlin_slave_translator.sv"            -L altera_common_sv_packages -work uart_inst_avalon_rs232_slave_translator       
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/uart_tb/simulation/submodules/altera_merlin_master_translator.sv"                  -L altera_common_sv_packages -work uart_inst_avalon_rs232_slave_bfm_m0_translator
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/uart_tb/simulation/submodules/altera_irq_mapper.vho"                                                            -work irq_mapper                                    
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/uart_tb/simulation/submodules/altera_mm_interconnect.vhd"                                                       -work mm_interconnect_0                             
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/uart_tb/simulation/submodules/altera_avalon_reset_source.vhd"                                                   -work uart_inst_reset_bfm                           
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/uart_tb/simulation/submodules/mentor/altera_avalon_interrupt_sink.sv"              -L altera_common_sv_packages -work uart_inst_interrupt_bfm                       
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/uart_tb/simulation/submodules/mentor/altera_avalon_interrupt_sink_vhdl_wrapper.sv" -L altera_common_sv_packages -work uart_inst_interrupt_bfm                       
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/uart_tb/simulation/submodules/altera_avalon_interrupt_sink_vhdl_pkg.vhd"                                        -work uart_inst_interrupt_bfm                       
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/uart_tb/simulation/submodules/altera_avalon_interrupt_sink_vhdl.vhd"                                            -work uart_inst_interrupt_bfm                       
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/uart_tb/simulation/submodules/altera_conduit_bfm_vhdl_pkg.vhd"                                                  -work uart_inst_external_interface_bfm              
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/uart_tb/simulation/submodules/altera_conduit_bfm.vhd"                                                           -work uart_inst_external_interface_bfm              
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/uart_tb/simulation/submodules/altera_avalon_clock_source.vhd"                                                   -work uart_inst_clk_bfm                             
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/uart_tb/simulation/submodules/mentor/altera_avalon_mm_master_bfm.sv"               -L altera_common_sv_packages -work uart_inst_avalon_rs232_slave_bfm              
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/uart_tb/simulation/submodules/mentor/altera_avalon_mm_master_bfm_vhdl_wrapper.sv"  -L altera_common_sv_packages -work uart_inst_avalon_rs232_slave_bfm              
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/uart_tb/simulation/submodules/altera_avalon_mm_master_bfm_vhdl_pkg.vhd"                                         -work uart_inst_avalon_rs232_slave_bfm              
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/uart_tb/simulation/submodules/altera_avalon_mm_master_bfm_vhdl.vhd"                                             -work uart_inst_avalon_rs232_slave_bfm              
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/uart_tb/simulation/submodules/uart.vhd"                                                                         -work uart_inst                                     
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/uart_tb/simulation/uart_tb.vhd"                                                                                                                                     
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  eval vsim -t ps $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS -L work -L work_lib -L altera_common_sv_packages -L uart_inst_avalon_rs232_slave_translator -L uart_inst_avalon_rs232_slave_bfm_m0_translator -L irq_mapper -L mm_interconnect_0 -L uart_inst_reset_bfm -L uart_inst_interrupt_bfm -L uart_inst_external_interface_bfm -L uart_inst_clk_bfm -L uart_inst_avalon_rs232_slave_bfm -L uart_inst -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with novopt option
alias elab_debug {
  echo "\[exec\] elab_debug"
  eval vsim -novopt -t ps $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS -L work -L work_lib -L altera_common_sv_packages -L uart_inst_avalon_rs232_slave_translator -L uart_inst_avalon_rs232_slave_bfm_m0_translator -L irq_mapper -L mm_interconnect_0 -L uart_inst_reset_bfm -L uart_inst_interrupt_bfm -L uart_inst_external_interface_bfm -L uart_inst_clk_bfm -L uart_inst_avalon_rs232_slave_bfm -L uart_inst -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -novopt
alias ld_debug "
  dev_com
  com
  elab_debug
"

# ----------------------------------------
# Print out user commmand line aliases
alias h {
  echo "List Of Command Line Aliases"
  echo
  echo "file_copy                     -- Copy ROM/RAM files to simulation directory"
  echo
  echo "dev_com                       -- Compile device library files"
  echo
  echo "com                           -- Compile the design files in correct order"
  echo
  echo "elab                          -- Elaborate top level design"
  echo
  echo "elab_debug                    -- Elaborate the top level design with novopt option"
  echo
  echo "ld                            -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                      -- Compile all the design files and elaborate the top level design with -novopt"
  echo
  echo 
  echo
  echo "List Of Variables"
  echo
  echo "TOP_LEVEL_NAME                -- Top level module name."
  echo "                                 For most designs, this should be overridden"
  echo "                                 to enable the elab/elab_debug aliases."
  echo
  echo "SYSTEM_INSTANCE_NAME          -- Instantiated system module name inside top level module."
  echo
  echo "QSYS_SIMDIR                   -- Qsys base simulation directory."
  echo
  echo "QUARTUS_INSTALL_DIR           -- Quartus installation directory."
  echo
  echo "USER_DEFINED_COMPILE_OPTIONS  -- User-defined compile options, added to com/dev_com aliases."
  echo
  echo "USER_DEFINED_ELAB_OPTIONS     -- User-defined elaboration options, added to elab/elab_debug aliases."
}
file_copy
h
