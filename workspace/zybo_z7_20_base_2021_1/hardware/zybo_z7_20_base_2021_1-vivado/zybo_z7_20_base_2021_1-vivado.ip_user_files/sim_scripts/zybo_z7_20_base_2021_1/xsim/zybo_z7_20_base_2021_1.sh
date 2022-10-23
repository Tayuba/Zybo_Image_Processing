#!/bin/bash -f
#*********************************************************************************************************
# Vivado (TM) v2021.1 (64-bit)
#
# Filename    : zybo_z7_20_base_2021_1.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Simulation script for compiling, elaborating and verifying the project source files.
#               The script will automatically create the design libraries sub-directories in the run
#               directory, add the library logical mappings in the simulator setup file, create default
#               'do/prj' file, execute compilation, elaboration and simulation steps.
#
# Generated by Vivado on Sun Oct 23 18:55:42 CEST 2022
# SW Build 3247384 on Thu Jun 10 19:36:07 MDT 2021
#
# Copyright 1986-2021 Xilinx, Inc. All Rights Reserved. 
#
# usage: zybo_z7_20_base_2021_1.sh [-help]
# usage: zybo_z7_20_base_2021_1.sh [-lib_map_path]
# usage: zybo_z7_20_base_2021_1.sh [-noclean_files]
# usage: zybo_z7_20_base_2021_1.sh [-reset_run]
#
#*********************************************************************************************************

# Set system shared library paths
xv_cxl_lib_path="/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xsim"
xv_cpt_lib_path="/home/ayuba/tools/Xilinx/Vivado/2021.1/data/simmodels/xsim/2021.1/lnx64/6.2.0/systemc/protected"
xv_ext_lib_path="/home/ayuba/tools/Xilinx/Vivado/2021.1/data/simmodels/xsim/2021.1/lnx64/6.2.0/ext"
xv_boost_lib_path="/home/ayuba/tools/Xilinx/Vivado/2021.1/tps/boost_1_72_0"

# Set xvlog options
xvlog_opts="--incr --relax -L uvm -L axi_vip_v1_1_10 -L processing_system7_vip_v1_0_12 -L xilinx_vip"

# Set xvlog options
xvhdl_opts="--incr --relax"

# Set xsc options
xsc_opts=""

# Set custom Vivado library path
xv_ref_path=${VIVADO_LOC:-"/home/ayuba/tools/Xilinx/Vivado/2021.1"}
xv_lib_path="$xv_ref_path/lib/lnx64.o/Default:$xv_ref_path/lib/lnx64.o"

LD_LIBRARY_PATH=$PWD:$xv_lib_path:$xv_ref_path/data/xsim/ip/xtlm:$xv_ref_path/data/xsim/ip/remote_port_sc_v4:$xv_ref_path/data/xsim/ip/remote_port_c_v4:$xv_ref_path/data/xsim/ip/common_cpp_v1_0:$LD_LIBRARY_PATH

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
  xvlog $xvlog_opts -prj vlog.prj 2>&1 | tee compile.log
  xvhdl $xvhdl_opts -prj vhdl.prj 2>&1 | tee compile.log
  xsc -c $xsc_opts --gcc_compile_options "-DBOOST_SYSTEM_NO_DEPRECATED" --gcc_compile_options "-I../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_processing_system7_0_0/sim_tlm -I../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_processing_system7_0_0/sim -I$xv_boost_lib_path -I$xv_cxl_lib_path/ip/xtlm/include -I$xv_cxl_lib_path/ip/remote_port_sc_v4/include -I$xv_cxl_lib_path/ip/remote_port_c_v4/include -I$xv_cxl_lib_path/ip/common_cpp_v1_0/include" -work xil_defaultlib -f xsc.prj 2>&1 | tee compile.log
}

# RUN_STEP: <elaborate>
elaborate()
{
  xsc --shared -lib xil_defaultlib -lib processing_system7_v5_5_6 -gcc_link_options "-L$xv_cxl_lib_path/ip/xtlm -lxtlm" -gcc_link_options "-L$xv_cxl_lib_path/ip/remote_port_sc_v4 -lremote_port_sc_v4" -gcc_link_options "-L$xv_cxl_lib_path/ip/remote_port_c_v4 -lremote_port_c_v4" -gcc_link_options "-L$xv_cxl_lib_path/ip/common_cpp_v1_0 -lcommon_cpp_v1_0" -o libdpi.so
  xelab --incr --debug typical --relax --mt auto -sv_root "$xv_cxl_lib_path/ip/xtlm" -sc_lib libxtlm.so --include "$xv_cxl_lib_path/ip/xtlm/include" -sv_root "$xv_cxl_lib_path/ip/remote_port_sc_v4" -sc_lib libremote_port_sc_v4.so --include "$xv_cxl_lib_path/ip/remote_port_sc_v4/include" -sv_root "$xv_cxl_lib_path/ip/remote_port_c_v4" -sc_lib libremote_port_c_v4.so --include "$xv_cxl_lib_path/ip/remote_port_c_v4/include" -sv_root "$xv_cxl_lib_path/ip/common_cpp_v1_0" -sc_lib libcommon_cpp_v1_0.so --include "$xv_cxl_lib_path/ip/common_cpp_v1_0/include" --include "../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_processing_system7_0_0/sim_tlm" --include "../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_processing_system7_0_0/sim" --include "$xv_boost_lib_path" -L xil_defaultlib -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L axi_lite_ipif_v3_0_4 -L axi_intc_v4_1_15 -L generic_baseblocks_v2_1_0 -L fifo_generator_v13_2_5 -L axi_data_fifo_v2_1_23 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_24 -L axi_protocol_converter_v2_1_24 -L uvm -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -L xpm -sv_root "." -sc_lib libdpi.so --snapshot zybo_z7_20_base_2021_1 xil_defaultlib.zybo_z7_20_base_2021_1 xil_defaultlib.glbl -log elaborate.log
}

# RUN_STEP: <simulate>
simulate()
{
  xsim zybo_z7_20_base_2021_1 -key {Behavioral:sim_1:Functional:zybo_z7_20_base_2021_1} -tclbatch cmd.tcl -protoinst "protoinst_files/zybo_z7_20_base_2021_1.protoinst" -log simulate.log
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
     copy_setup_file $2
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
     copy_setup_file $2
  esac

  # Add any setup/initialization commands here:-

  # <user specific commands>

}

# Copy xsim.ini file
copy_setup_file()
{
  file="xsim.ini"
  lib_map_path="/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xsim"
  if [[ ($1 != "") ]]; then
    lib_map_path="$1"
  fi
  if [[ ($lib_map_path != "") ]]; then
    src_file="$lib_map_path/$file"
    if [[ -e $src_file ]]; then
      cp $src_file .
    fi

    # Map local design libraries to xsim.ini
    map_local_libs

  fi
}

# Map local design libraries
map_local_libs()
{
  updated_mappings=()
  local_mappings=()

  # Local design libraries
  local_libs=(xil_defaultlib)

  if [[ 0 == ${#local_libs[@]} ]]; then
    return
  fi

  file="xsim.ini"
  file_backup="xsim.ini.bak"

  if [[ -e $file ]]; then
    rm -f $file_backup

    # Create a backup copy of the xsim.ini file
    cp $file $file_backup

    # Read libraries from backup file and search in local library collection
    while read -r line
    do
      IN=$line

      # Split mapping entry with '=' delimiter to fetch library name and mapping
      read lib_name mapping <<<$(IFS="="; echo $IN)

      # If local library found, then construct the local mapping and add to local mapping collection
      if `echo ${local_libs[@]} | grep -wq $lib_name` ; then
        line="$lib_name=xsim.dir/$lib_name"
        local_mappings+=("$lib_name")
      fi

      # Add to updated library mapping collection
      updated_mappings+=("$line")
    done < "$file_backup"

    # Append local libraries not found originally from xsim.ini
    for (( i=0; i<${#local_libs[*]}; i++ )); do
      lib_name="${local_libs[i]}"
      if `echo ${local_mappings[@]} | grep -wvq $lib_name` ; then
        line="$lib_name=xsim.dir/$lib_name"
        updated_mappings+=("$line")
      fi
    done

    # Write updated mappings in xsim.ini
    rm -f $file
    for (( i=0; i<${#updated_mappings[*]}; i++ )); do
      lib_name="${updated_mappings[i]}"
      echo $lib_name >> $file
    done
  else
    for (( i=0; i<${#local_libs[*]}; i++ )); do
      lib_name="${local_libs[i]}"
      mapping="$lib_name=xsim.dir/$lib_name"
      echo $mapping >> $file
    done
  fi
}

# Delete generated data from the previous run
reset_run()
{
  files_to_remove=(xelab.pb xsim.jou xvhdl.log xvlog.log compile.log elaborate.log simulate.log xelab.log xsim.log run.log xvhdl.pb xvlog.pb zybo_z7_20_base_2021_1.wdb xsim.dir)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done
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
