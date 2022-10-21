vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/xil_defaultlib
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/axi_intc_v4_1_15
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/fifo_generator_v13_2_5
vlib activehdl/axi_data_fifo_v2_1_23
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_24
vlib activehdl/axi_protocol_converter_v2_1_24

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_15 activehdl/axi_intc_v4_1_15
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_5 activehdl/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_23 activehdl/axi_data_fifo_v2_1_23
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_24 activehdl/axi_register_slice_v2_1_24
vmap axi_protocol_converter_v2_1_24 activehdl/axi_protocol_converter_v2_1_24

vlog -work xilinx_vip  -sv2k12 "+incdir+/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/6dcf" "+incdir+../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/ec67/hdl" "+incdir+../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/f42d/hdl" "+incdir+/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"/home/ayuba/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/ayuba/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/home/ayuba/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/6dcf" "+incdir+../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/ec67/hdl" "+incdir+../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/f42d/hdl" "+incdir+/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_processing_system7_0_0/sim/zybo_z7_20_base_2021_1_processing_system7_0_0_stub.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/6dcf" "+incdir+../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/ec67/hdl" "+incdir+../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/f42d/hdl" "+incdir+/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_clk_wiz_0_0/zybo_z7_20_base_2021_1_clk_wiz_0_0_clk_wiz.v" \
"../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_clk_wiz_0_0/zybo_z7_20_base_2021_1_clk_wiz_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_proc_sys_reset_0_0/sim/zybo_z7_20_base_2021_1_proc_sys_reset_0_0.vhd" \
"../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_proc_sys_reset_0_1/sim/zybo_z7_20_base_2021_1_proc_sys_reset_0_1.vhd" \
"../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_proc_sys_reset_0_2/sim/zybo_z7_20_base_2021_1_proc_sys_reset_0_2.vhd" \
"../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_proc_sys_reset_0_3/sim/zybo_z7_20_base_2021_1_proc_sys_reset_0_3.vhd" \
"../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_proc_sys_reset_0_4/sim/zybo_z7_20_base_2021_1_proc_sys_reset_0_4.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_15 -93 \
"../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/47b8/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_axi_intc_0_0/sim/zybo_z7_20_base_2021_1_axi_intc_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/6dcf" "+incdir+../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/ec67/hdl" "+incdir+../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/f42d/hdl" "+incdir+/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/6dcf" "+incdir+../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/ec67/hdl" "+incdir+../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/f42d/hdl" "+incdir+/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/6dcf" "+incdir+../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/ec67/hdl" "+incdir+../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/f42d/hdl" "+incdir+/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_23  -v2k5 "+incdir+../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/6dcf" "+incdir+../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/ec67/hdl" "+incdir+../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/f42d/hdl" "+incdir+/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/94ec/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/6dcf" "+incdir+../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/ec67/hdl" "+incdir+../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/f42d/hdl" "+incdir+/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_24  -v2k5 "+incdir+../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/6dcf" "+incdir+../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/ec67/hdl" "+incdir+../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/f42d/hdl" "+incdir+/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/8f68/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_24  -v2k5 "+incdir+../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/6dcf" "+incdir+../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/ec67/hdl" "+incdir+../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/f42d/hdl" "+incdir+/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/6e0d/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/6dcf" "+incdir+../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/ec67/hdl" "+incdir+../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/f42d/hdl" "+incdir+/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_auto_pc_0/sim/zybo_z7_20_base_2021_1_auto_pc_0.v" \

vcom -work xil_defaultlib -93 \
"../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_rst_ps7_0_50M_0/sim/zybo_z7_20_base_2021_1_rst_ps7_0_50M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/6dcf" "+incdir+../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/ec67/hdl" "+incdir+../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/f42d/hdl" "+incdir+/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/sim/zybo_z7_20_base_2021_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

