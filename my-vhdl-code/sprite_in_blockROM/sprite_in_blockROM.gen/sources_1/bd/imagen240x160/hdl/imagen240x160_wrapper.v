//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Tue Dec 12 08:10:23 2023
//Host        : jlbpacheco running 64-bit major release  (build 9200)
//Command     : generate_target imagen240x160_wrapper.bd
//Design      : imagen240x160_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module imagen240x160_wrapper
   (M,
    addra,
    clka);
  output [11:0]M;
  input [15:0]addra;
  input clka;

  wire [11:0]M;
  wire [15:0]addra;
  wire clka;

  imagen240x160 imagen240x160_i
       (.M(M),
        .addra(addra),
        .clka(clka));
endmodule
