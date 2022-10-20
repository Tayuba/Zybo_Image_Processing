-makelib ies_lib/xilinx_vip -sv \
  "/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "/home/ayuba/tools/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib ies_lib/xpm -sv \
  "/home/ayuba/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/home/ayuba/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "/home/ayuba/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../../zybo_z7_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_processing_system7_0_0/sim/zybo_z7_20_base_2021_1_processing_system7_0_0_stub.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../zybo_z7_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_clk_wiz_0_0/zybo_z7_20_base_2021_1_clk_wiz_0_0_clk_wiz.v" \
  "../../../../zybo_z7_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_clk_wiz_0_0/zybo_z7_20_base_2021_1_clk_wiz_0_0.v" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../zybo_z7_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../zybo_z7_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../zybo_z7_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_proc_sys_reset_0_0/sim/zybo_z7_20_base_2021_1_proc_sys_reset_0_0.vhd" \
  "../../../../zybo_z7_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_proc_sys_reset_0_1/sim/zybo_z7_20_base_2021_1_proc_sys_reset_0_1.vhd" \
  "../../../../zybo_z7_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_proc_sys_reset_0_2/sim/zybo_z7_20_base_2021_1_proc_sys_reset_0_2.vhd" \
  "../../../../zybo_z7_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_proc_sys_reset_0_3/sim/zybo_z7_20_base_2021_1_proc_sys_reset_0_3.vhd" \
  "../../../../zybo_z7_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_proc_sys_reset_0_4/sim/zybo_z7_20_base_2021_1_proc_sys_reset_0_4.vhd" \
-endlib
-makelib ies_lib/axi_lite_ipif_v3_0_4 \
  "../../../../zybo_z7_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_intc_v4_1_15 \
  "../../../../zybo_z7_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/47b8/hdl/axi_intc_v4_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../zybo_z7_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_axi_intc_0_0/sim/zybo_z7_20_base_2021_1_axi_intc_0_0.vhd" \
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../zybo_z7_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_5 \
  "../../../../zybo_z7_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_5 \
  "../../../../zybo_z7_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_5 \
  "../../../../zybo_z7_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_23 \
  "../../../../zybo_z7_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/94ec/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../zybo_z7_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_24 \
  "../../../../zybo_z7_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/8f68/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_protocol_converter_v2_1_24 \
  "../../../../zybo_z7_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ipshared/6e0d/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../zybo_z7_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_auto_pc_0/sim/zybo_z7_20_base_2021_1_auto_pc_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../zybo_z7_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_rst_ps7_0_50M_0/sim/zybo_z7_20_base_2021_1_rst_ps7_0_50M_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../zybo_z7_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/sim/zybo_z7_20_base_2021_1.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

