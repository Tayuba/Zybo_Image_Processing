// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Sun Oct 23 18:07:34 2022
// Host        : ayuba-VivoBook-Flip-14-ASUS-Flip-TP412UA running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/ayuba/Zybo_Image_Processing/Zybo_Image_Processing/workspace/zybo_z7_20_base_2021_1/hardware/zybo_z7_20_base_2021_1-vivado/zybo_z7_20_base_2021_1-vivado.gen/sources_1/bd/zybo_z7_20_base_2021_1/ip/zybo_z7_20_base_2021_1_clk_wiz_0_0/zybo_z7_20_base_2021_1_clk_wiz_0_0_stub.v
// Design      : zybo_z7_20_base_2021_1_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module zybo_z7_20_base_2021_1_clk_wiz_0_0(clk_out1, clk_out2, clk_out3, clk_out4, clk_out5, 
  resetn, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,clk_out2,clk_out3,clk_out4,clk_out5,resetn,locked,clk_in1" */;
  output clk_out1;
  output clk_out2;
  output clk_out3;
  output clk_out4;
  output clk_out5;
  input resetn;
  output locked;
  input clk_in1;
endmodule
