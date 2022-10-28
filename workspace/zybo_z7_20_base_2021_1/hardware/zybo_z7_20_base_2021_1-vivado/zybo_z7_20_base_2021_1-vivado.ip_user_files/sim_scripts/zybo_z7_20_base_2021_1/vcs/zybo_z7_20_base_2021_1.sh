#!/bin/bash -f
#*********************************************************************************************************
# Vivado (TM) v2021.1 (64-bit)
#
# Filename    : zybo_z7_20_base_2021_1.sh
# Simulator   : Synopsys Verilog Compiler Simulator
# Description : Simulation script for compiling, elaborating and verifying the project source files.
#               The script will automatically create the design libraries sub-directories in the run
#               directory, add the library logical mappings in the simulator setup file, create default
#               'do/prj' file, execute compilation, elaboration and simulation steps.
#
# Generated by Vivado on Fri Oct 28 23:02:39 CEST 2022
# SW Build 3247384 on Thu Jun 10 19:36:07 MDT 2021
#
# Copyright 1986-2021 Xilinx, Inc. All Rights Reserved. 
#
# usage: zybo_z7_20_base_2021_1.sh [-help]
# usage: zybo_z7_20_base_2021_1.sh [-lib_map_path]
# usage: zybo_z7_20_base_2021_1.sh [-noclean_files]
# usage: zybo_z7_20_base_2021_1.sh [-reset_run]
#
# Prerequisite:- To compile and run simulation, you must compile the Xilinx simulation libraries using the
# 'compile_simlib' TCL command. For more information about this command, run 'compile_simlib -help' in the
# Vivado Tcl Shell. Once the libraries have been compiled successfully, specify the -lib_map_path switch
# that points to these libraries and rerun export_simulation. For more information about this switch please
# type 'export_simulation -help' in the Tcl shell.
#
# You can also point to the simulation libraries by either replacing the <SPECIFY_COMPILED_LIB_PATH> in this
# script with the compiled library directory path or specify this path with the '-lib_map_path' switch when
# executing this script. Please type 'zybo_z7_20_base_2021_1.sh -help' for more information.
#
# Additional references - 'Xilinx Vivado Design Suite User Guide:Logic simulation (UG900)'
#
#*********************************************************************************************************

# Directory path for design sources and include directories (if any) wrt this path
ref_dir="."

# Override directory with 'export_sim_ref_dir' env path value if set in the shell
if [[ (! -z "$export_sim_ref_dir") && ($export_sim_ref_dir != "") ]]; then
  ref_dir="$export_sim_ref_dir"
fi

# Set gcc install path
gcc_path=""
sys_path=""

# Set system shared library paths
xv_cxl_lib_path="/home/ayuba/Zybo_Image_Processing/Zybo_Image_Processing/workspace/zybo_z7_20_base_2021_1/hardware/zybo_z7_20_base_2021_1-vivado/zybo_z7_20_base_2021_1-vivado.cache/compile_simlib/vcs"
xv_cpt_lib_path="/home/ayuba/tools/Xilinx/Vivado/2021.1/data/simmodels/vcs/R-2020.12/lnx64/6.2.0/systemc/protected"
xv_ext_lib_path="/home/ayuba/tools/Xilinx/Vivado/2021.1/data/simmodels/vcs/R-2020.12/lnx64/6.2.0/ext"
xv_boost_lib_path="/home/ayuba/tools/Xilinx/Vivado/2021.1/tps/boost_1_72_0"

# Set vlogan compile options
vlogan_opts="-full64 -sysc"

# Set vhdlan compile options
vhdlan_opts="-full64"

# Set vcs elaboration options
vcs_elab_opts="-full64 -sysc=232 -cpp ${gcc_path}/g++ -debug_acc+pp+dmptf -t ps -licqueue -l elaborate.log -Mlib=/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xsim/ip/xtlm -Mdir=c.obj/_xil_csrc_ -Mlib=/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xsim/ip/remote_port_sc_v4 -Mdir=c.obj/_xil_csrc_ -L/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xsim/ip/remote_port_c_v4 -lremote_port_c_v4 -L/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xsim/ip/common_cpp_v1_0 -lcommon_cpp_v1_0 -Mdir=c.obj -lstdc++fs"

# Set vcs simulation options
vcs_sim_opts="-ucli -licqueue -l simulate.log"

# Set syscan options
syscan_opts="-full64 -sysc=232 -sysc=opt_if -cpp ${gcc_path}/g++ -V -l syscan.log"

# Set syscan gcc options
syscan_gcc_opts="-I. -I${VCS_HOME}/include/systemc232 -I${VCS_HOME}/include -I${VCS_HOME}/include/cosim/bf -DVCSSYSTEMC=1 -I../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_processing_system7_0_0/sim_tlm -I../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_processing_system7_0_0/sim -I$xv_boost_lib_path -I/home/ayuba/tools/Xilinx/Vivado/2021.1/tps/boost_1_72_0 -I$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_processing_system7_0_0/sim_tlm -I$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_processing_system7_0_0/sim -I../../../../../../../../../../tools/Xilinx/Vivado/2021.1/data/xsim/ip/xtlm/include -I../../../../../../../../../../tools/Xilinx/Vivado/2021.1/data/xsim/ip/remote_port_sc_v4/include -I../../../../../../../../../../tools/Xilinx/Vivado/2021.1/data/xsim/ip/remote_port_c_v4/include -I../../../../../../../../../../tools/Xilinx/Vivado/2021.1/data/xsim/ip/common_cpp_v1_0/include"

LD_LIBRARY_PATH=.:/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xsim/ip/xtlm:/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xsim/ip/remote_port_sc_v4:/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xsim/ip/remote_port_c_v4:/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xsim/ip/common_cpp_v1_0:$sys_path:$LD_LIBRARY_PATH

export xv_cpt_lib_path="/home/ayuba/tools/Xilinx/Vivado/2021.1/data/simmodels/vcs/R-2020.12/lnx64/6.2.0/systemc/protected"

# Design libraries
design_libs=(xilinx_vip xpm xil_defaultlib lib_cdc_v1_0_2 proc_sys_reset_v5_0_13 axi_lite_ipif_v3_0_4 axi_intc_v4_1_15 generic_baseblocks_v2_1_0 fifo_generator_v13_2_5 axi_data_fifo_v2_1_23 axi_infrastructure_v1_1_0 axi_register_slice_v2_1_24 axi_protocol_converter_v2_1_24)

# Simulation root library directory
sim_lib_dir="vcs_lib"

# Script info
echo -e "zybo_z7_20_base_2021_1.sh - Script generated by export_simulation (Vivado v2021.1 (64-bit)-id)\n"

# Main steps
run()
{
  check_args $# $1
  setup $1 $2
  compile
  elaborate
  simulate
}

# RUN_STEP: <compile>
compile()
{
  vlogan -work xilinx_vip $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/6dcf" +incdir+"$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/f42d/hdl" +incdir+"/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/include" -sysc \
    "/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
    "/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
    "/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
    "/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
    "/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
    "/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
    "/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
    "/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
    "/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
  2>&1 | tee -a vlogan.log

  vlogan -work xpm $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/6dcf" +incdir+"$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/f42d/hdl" +incdir+"/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/include" -sysc \
    "/home/ayuba/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
    "/home/ayuba/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  2>&1 | tee -a vlogan.log

  vhdlan -work xpm $vhdlan_opts \
    "/home/ayuba/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xil_defaultlib $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/6dcf" +incdir+"$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/f42d/hdl" +incdir+"/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/include" -sysc \
    "$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_processing_system7_0_0/sim/zybo_z7_20_base_2021_1_processing_system7_0_0_stub.sv" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/6dcf" +incdir+"$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/f42d/hdl" +incdir+"/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/include" -sysc \
    "$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_clk_wiz_0_0/zybo_z7_20_base_2021_1_clk_wiz_0_0_clk_wiz.v" \
    "$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_clk_wiz_0_0/zybo_z7_20_base_2021_1_clk_wiz_0_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work lib_cdc_v1_0_2 $vhdlan_opts \
    "$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work proc_sys_reset_v5_0_13 $vhdlan_opts \
    "$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_proc_sys_reset_0_0/sim/zybo_z7_20_base_2021_1_proc_sys_reset_0_0.vhd" \
    "$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_proc_sys_reset_0_1/sim/zybo_z7_20_base_2021_1_proc_sys_reset_0_1.vhd" \
    "$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_proc_sys_reset_0_2/sim/zybo_z7_20_base_2021_1_proc_sys_reset_0_2.vhd" \
    "$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_proc_sys_reset_0_3/sim/zybo_z7_20_base_2021_1_proc_sys_reset_0_3.vhd" \
    "$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_proc_sys_reset_0_4/sim/zybo_z7_20_base_2021_1_proc_sys_reset_0_4.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_lite_ipif_v3_0_4 $vhdlan_opts \
    "$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_intc_v4_1_15 $vhdlan_opts \
    "$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/47b8/hdl/axi_intc_v4_1_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_axi_intc_0_0/sim/zybo_z7_20_base_2021_1_axi_intc_0_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work generic_baseblocks_v2_1_0 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/6dcf" +incdir+"$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/f42d/hdl" +incdir+"/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/include" -sysc \
    "$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work fifo_generator_v13_2_5 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/6dcf" +incdir+"$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/f42d/hdl" +incdir+"/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/include" -sysc \
    "$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work fifo_generator_v13_2_5 $vhdlan_opts \
    "$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work fifo_generator_v13_2_5 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/6dcf" +incdir+"$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/f42d/hdl" +incdir+"/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/include" -sysc \
    "$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_data_fifo_v2_1_23 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/6dcf" +incdir+"$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/f42d/hdl" +incdir+"/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/include" -sysc \
    "$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/94ec/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_infrastructure_v1_1_0 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/6dcf" +incdir+"$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/f42d/hdl" +incdir+"/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/include" -sysc \
    "$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_register_slice_v2_1_24 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/6dcf" +incdir+"$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/f42d/hdl" +incdir+"/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/include" -sysc \
    "$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/8f68/hdl/axi_register_slice_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_protocol_converter_v2_1_24 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/6dcf" +incdir+"$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/f42d/hdl" +incdir+"/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/include" -sysc \
    "$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/6e0d/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/6dcf" +incdir+"$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/f42d/hdl" +incdir+"/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/include" -sysc \
    "$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_auto_pc_0/sim/zybo_z7_20_base_2021_1_auto_pc_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_rst_ps7_0_50M_0/sim/zybo_z7_20_base_2021_1_rst_ps7_0_50M_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/6dcf" +incdir+"$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/f42d/hdl" +incdir+"/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/include" -sysc \
    "$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/sim/zybo_z7_20_base_2021_1.v" \
  2>&1 | tee -a vlogan.log


  syscan $syscan_opts -cflags "-O3 -std=c++11 -fPIC -Wall -Wno-deprecated -DSC_INCLUDE_DYNAMIC_PROCESSES $syscan_gcc_opts" -Mdir=c.obj \
    "$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_processing_system7_0_0/sim_tlm/processing_system7_v5_5_tlm.cpp"

  syscan $syscan_opts -cflags "-O3 -std=c++11 -fPIC -Wall -Wno-deprecated -DSC_INCLUDE_DYNAMIC_PROCESSES $syscan_gcc_opts" -Mdir=c.obj \
    "$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_processing_system7_0_0/sim/zybo_z7_20_base_2021_1_processing_system7_0_0_sc.cpp"

  syscan $syscan_opts -sysc=opt_if -cflags "-O3 -std=c++11 -fPIC -Wall -Wno-deprecated -DSC_INCLUDE_DYNAMIC_PROCESSES $syscan_gcc_opts" -Mdir=c.obj \
    "$ref_dir/../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_processing_system7_0_0/sim/zybo_z7_20_base_2021_1_processing_system7_0_0.cpp:zybo_z7_20_base_2021_1_processing_system7_0_0"


  vlogan -work xil_defaultlib $vlogan_opts +v2k \
    glbl.v \
  2>&1 | tee -a vlogan.log
}

# RUN_STEP: <elaborate>
elaborate()
{
  vcs $vcs_elab_opts xil_defaultlib.zybo_z7_20_base_2021_1 xil_defaultlib.glbl -o zybo_z7_20_base_2021_1_simv
}

# RUN_STEP: <simulate>
simulate()
{
  ./zybo_z7_20_base_2021_1_simv $vcs_sim_opts -do simulate.do
}

# STEP: setup
setup()
{
  case $1 in
    "-lib_map_path" )
      if [[ ($2 == "") ]]; then
        echo -e "ERROR: Simulation library directory path not specified (type \"./zybo_z7_20_base_2021_1.sh -help\" for more information)\n"
        exit 1
      fi
      create_lib_mappings $2
    ;;
    "-reset_run" )
      reset_run
      echo -e "INFO: Simulation run files deleted.\n"
      exit 0
    ;;
    "-noclean_files" )
      # do not remove previous data
    ;;
    * )
      create_lib_mappings $2
  esac

  create_lib_dir

  # Add any setup/initialization commands here:-

  # <user specific commands>

}

# Define design library mappings
create_lib_mappings()
{
  file="synopsys_sim.setup"
  if [[ -e $file ]]; then
    if [[ ($1 == "") ]]; then
      return
    else
      rm -rf $file
    fi
  fi

  touch $file

  if [[ ($1 != "") ]]; then
    lib_map_path="$1"
  else
    lib_map_path="/home/ayuba/Zybo_Image_Processing/Zybo_Image_Processing/workspace/zybo_z7_20_base_2021_1/hardware/zybo_z7_20_base_2021_1-vivado/zybo_z7_20_base_2021_1-vivado.cache/compile_simlib/vcs"
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    mapping="$lib:$sim_lib_dir/$lib"
    echo $mapping >> $file
  done

  if [[ ($lib_map_path != "") ]]; then
    incl_ref="OTHERS=$lib_map_path/synopsys_sim.setup"
    echo $incl_ref >> $file
  fi
}

# Create design library directory paths
create_lib_dir()
{
  if [[ -e $sim_lib_dir ]]; then
    rm -rf $sim_lib_dir
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    lib_dir="$sim_lib_dir/$lib"
    if [[ ! -e $lib_dir ]]; then
      mkdir -p $lib_dir
    fi
  done
}

# Delete generated data from the previous run
reset_run()
{
  files_to_remove=(ucli.key zybo_z7_20_base_2021_1_simv vlogan.log vhdlan.log compile.log elaborate.log simulate.log .vlogansetup.env .vlogansetup.args .vcs_lib_lock scirocco_command.log 64 AN.DB csrc zybo_z7_20_base_2021_1_simv.daidir)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done

  create_lib_dir
}

# Check command line arguments
check_args()
{
  if [[ ($1 == 1 ) && ($2 != "-lib_map_path" && $2 != "-noclean_files" && $2 != "-reset_run" && $2 != "-help" && $2 != "-h") ]]; then
    echo -e "ERROR: Unknown option specified '$2' (type \"./zybo_z7_20_base_2021_1.sh -help\" for more information)\n"
    exit 1
  fi

  if [[ ($2 == "-help" || $2 == "-h") ]]; then
    usage
  fi
}

# Script usage
usage()
{
  msg="Usage: zybo_z7_20_base_2021_1.sh [-help]\n\
Usage: zybo_z7_20_base_2021_1.sh [-lib_map_path]\n\
Usage: zybo_z7_20_base_2021_1.sh [-reset_run]\n\
Usage: zybo_z7_20_base_2021_1.sh [-noclean_files]\n\n\
[-help] -- Print help information for this script\n\n\
[-lib_map_path <path>] -- Compiled simulation library directory path. The simulation library is compiled\n\
using the compile_simlib tcl command. Please see 'compile_simlib -help' for more information.\n\n\
[-reset_run] -- Recreate simulator setup files and library mappings for a clean run. The generated files\n\
from the previous run will be removed. If you don't want to remove the simulator generated files, use the\n\
-noclean_files switch.\n\n\
[-noclean_files] -- Reset previous run, but do not remove simulator generated files from the previous run.\n\n"
  echo -e $msg
  exit 1
}

# Launch script
run $1 $2
