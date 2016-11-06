
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

# ACDS 15.1 185 win32 2016.10.23.17:58:43

# ----------------------------------------
# vcsmx - auto-generated simulation script

# ----------------------------------------
# This script can be used to simulate the following IP:
#     uart_tb
# To create a top-level simulation script which compiles other
# IP, and manages other system issues, copy the following template
# and adapt it to your needs:
# 
# # Start of template
# # If the copied and modified template file is "vcsmx_sim.sh", run it as:
# #   ./vcsmx_sim.sh
# #
# # Do the file copy, dev_com and com steps
# source vcsmx_setup.sh \
# SKIP_ELAB=1 \
# SKIP_SIM=1
# 
# # Compile the top level module
# vlogan +v2k +systemverilogext+.sv "$QSYS_SIMDIR/../top.sv"
# 
# # Do the elaboration and sim steps
# # Override the top-level name
# # Override the user-defined sim options, so the simulation runs 
# # forever (until $finish()).
# source vcsmx_setup.sh \
# SKIP_FILE_COPY=1 \
# SKIP_DEV_COM=1 \
# SKIP_COM=1 \
# TOP_LEVEL_NAME="'-top top'" \
# USER_DEFINED_SIM_OPTIONS=""
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
# initialize variables
TOP_LEVEL_NAME="uart_tb"
QSYS_SIMDIR="./../../"
QUARTUS_INSTALL_DIR="C:/users/u/documents/quartus/quartus/"
SKIP_FILE_COPY=0
SKIP_DEV_COM=0
SKIP_COM=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="+vcs+finish+100"

# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_ELAB=1 SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# initialize simulation properties - DO NOT MODIFY!
ELAB_OPTIONS=""
SIM_OPTIONS=""
if [[ `vcs -platform` != *"amd64"* ]]; then
  :
else
  :
fi

# ----------------------------------------
# create compilation libraries
mkdir -p ./libraries/work/
mkdir -p ./libraries/altera_common_sv_packages/
mkdir -p ./libraries/uart_inst_avalon_rs232_slave_bfm_m0_translator/
mkdir -p ./libraries/irq_mapper/
mkdir -p ./libraries/mm_interconnect_0/
mkdir -p ./libraries/uart_inst_reset_bfm/
mkdir -p ./libraries/uart_inst_interrupt_bfm/
mkdir -p ./libraries/uart_inst_external_interface_bfm/
mkdir -p ./libraries/uart_inst_clk_bfm/
mkdir -p ./libraries/uart_inst_avalon_rs232_slave_bfm/
mkdir -p ./libraries/uart_inst/
mkdir -p ./libraries/altera_ver/
mkdir -p ./libraries/lpm_ver/
mkdir -p ./libraries/sgate_ver/
mkdir -p ./libraries/altera_mf_ver/
mkdir -p ./libraries/altera_lnsim_ver/
mkdir -p ./libraries/cycloneive_ver/
mkdir -p ./libraries/altera/
mkdir -p ./libraries/lpm/
mkdir -p ./libraries/sgate/
mkdir -p ./libraries/altera_mf/
mkdir -p ./libraries/altera_lnsim/
mkdir -p ./libraries/cycloneive/

# ----------------------------------------
# copy RAM/ROM files to simulation directory

# ----------------------------------------
# compile device library files
if [ $SKIP_DEV_COM -eq 0 ]; then
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"              -work altera_ver      
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                       -work lpm_ver         
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                          -work sgate_ver       
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                      -work altera_mf_ver   
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                  -work altera_lnsim_ver
  vlogan +v2k $USER_DEFINED_COMPILE_OPTIONS           "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneive_atoms.v"               -work cycloneive_ver  
  vhdlan $USER_DEFINED_COMPILE_OPTIONS                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_syn_attributes.vhd"        -work altera          
  vhdlan $USER_DEFINED_COMPILE_OPTIONS                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_standard_functions.vhd"    -work altera          
  vhdlan $USER_DEFINED_COMPILE_OPTIONS                "$QUARTUS_INSTALL_DIR/eda/sim_lib/alt_dspbuilder_package.vhd"       -work altera          
  vhdlan $USER_DEFINED_COMPILE_OPTIONS                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_europa_support_lib.vhd"    -work altera          
  vhdlan $USER_DEFINED_COMPILE_OPTIONS                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives_components.vhd" -work altera          
  vhdlan $USER_DEFINED_COMPILE_OPTIONS                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.vhd"            -work altera          
  vhdlan $USER_DEFINED_COMPILE_OPTIONS                "$QUARTUS_INSTALL_DIR/eda/sim_lib/220pack.vhd"                      -work lpm             
  vhdlan $USER_DEFINED_COMPILE_OPTIONS                "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.vhd"                     -work lpm             
  vhdlan $USER_DEFINED_COMPILE_OPTIONS                "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate_pack.vhd"                   -work sgate           
  vhdlan $USER_DEFINED_COMPILE_OPTIONS                "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.vhd"                        -work sgate           
  vhdlan $USER_DEFINED_COMPILE_OPTIONS                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf_components.vhd"         -work altera_mf       
  vhdlan $USER_DEFINED_COMPILE_OPTIONS                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.vhd"                    -work altera_mf       
  vhdlan $USER_DEFINED_COMPILE_OPTIONS                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim_components.vhd"      -work altera_lnsim    
  vhdlan $USER_DEFINED_COMPILE_OPTIONS                "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneive_atoms.vhd"             -work cycloneive      
  vhdlan $USER_DEFINED_COMPILE_OPTIONS                "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneive_components.vhd"        -work cycloneive      
fi

# ----------------------------------------
# compile design files in correct order
if [ $SKIP_COM -eq 0 ]; then
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/uart_tb/simulation/submodules/verbosity_pkg.sv"                             -work altera_common_sv_packages                     
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/uart_tb/simulation/submodules/avalon_mm_pkg.sv"                             -work altera_common_sv_packages                     
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/uart_tb/simulation/submodules/avalon_utilities_pkg.sv"                      -work altera_common_sv_packages                     
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/uart_tb/simulation/submodules/altera_merlin_master_translator.sv"           -work uart_inst_avalon_rs232_slave_bfm_m0_translator
  vhdlan -xlrm $USER_DEFINED_COMPILE_OPTIONS          "$QSYS_SIMDIR/uart_tb/simulation/submodules/altera_irq_mapper.vho"                        -work irq_mapper                                    
  vhdlan -xlrm $USER_DEFINED_COMPILE_OPTIONS          "$QSYS_SIMDIR/uart_tb/simulation/submodules/altera_mm_interconnect.vhd"                   -work mm_interconnect_0                             
  vhdlan -xlrm $USER_DEFINED_COMPILE_OPTIONS          "$QSYS_SIMDIR/uart_tb/simulation/submodules/altera_avalon_reset_source.vhd"               -work uart_inst_reset_bfm                           
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/uart_tb/simulation/submodules/altera_avalon_interrupt_sink.sv"              -work uart_inst_interrupt_bfm                       
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/uart_tb/simulation/submodules/altera_avalon_interrupt_sink_vhdl_wrapper.sv" -work uart_inst_interrupt_bfm                       
  vhdlan -xlrm $USER_DEFINED_COMPILE_OPTIONS          "$QSYS_SIMDIR/uart_tb/simulation/submodules/altera_avalon_interrupt_sink_vhdl_pkg.vhd"    -work uart_inst_interrupt_bfm                       
  vhdlan -xlrm $USER_DEFINED_COMPILE_OPTIONS          "$QSYS_SIMDIR/uart_tb/simulation/submodules/altera_avalon_interrupt_sink_vhdl.vhd"        -work uart_inst_interrupt_bfm                       
  vhdlan -xlrm $USER_DEFINED_COMPILE_OPTIONS          "$QSYS_SIMDIR/uart_tb/simulation/submodules/altera_conduit_bfm_vhdl_pkg.vhd"              -work uart_inst_external_interface_bfm              
  vhdlan -xlrm $USER_DEFINED_COMPILE_OPTIONS          "$QSYS_SIMDIR/uart_tb/simulation/submodules/altera_conduit_bfm.vhd"                       -work uart_inst_external_interface_bfm              
  vhdlan -xlrm $USER_DEFINED_COMPILE_OPTIONS          "$QSYS_SIMDIR/uart_tb/simulation/submodules/altera_avalon_clock_source.vhd"               -work uart_inst_clk_bfm                             
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/uart_tb/simulation/submodules/altera_avalon_mm_master_bfm.sv"               -work uart_inst_avalon_rs232_slave_bfm              
  vlogan +v2k -sverilog $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/uart_tb/simulation/submodules/altera_avalon_mm_master_bfm_vhdl_wrapper.sv"  -work uart_inst_avalon_rs232_slave_bfm              
  vhdlan -xlrm $USER_DEFINED_COMPILE_OPTIONS          "$QSYS_SIMDIR/uart_tb/simulation/submodules/altera_avalon_mm_master_bfm_vhdl_pkg.vhd"     -work uart_inst_avalon_rs232_slave_bfm              
  vhdlan -xlrm $USER_DEFINED_COMPILE_OPTIONS          "$QSYS_SIMDIR/uart_tb/simulation/submodules/altera_avalon_mm_master_bfm_vhdl.vhd"         -work uart_inst_avalon_rs232_slave_bfm              
  vhdlan -xlrm $USER_DEFINED_COMPILE_OPTIONS          "$QSYS_SIMDIR/uart_tb/simulation/submodules/uart.vhd"                                     -work uart_inst                                     
  vhdlan -xlrm $USER_DEFINED_COMPILE_OPTIONS          "$QSYS_SIMDIR/uart_tb/simulation/uart_tb.vhd"                                                                                                 
fi

# ----------------------------------------
# elaborate top level design
if [ $SKIP_ELAB -eq 0 ]; then
  vcs -lca -t ps $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS $TOP_LEVEL_NAME
fi

# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS
fi
