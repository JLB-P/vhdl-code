//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Tue Dec 12 08:10:23 2023
//Host        : jlbpacheco running 64-bit major release  (build 9200)
//Command     : generate_target imagen240x160.bd
//Design      : imagen240x160
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "imagen240x160,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=imagen240x160,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "imagen240x160.hwdef" *) 
module imagen240x160
   (M,
    addra,
    clka);
  output [11:0]M;
  input [15:0]addra;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLKA CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLKA, CLK_DOMAIN imagen240x160_clka_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clka;

  wire [15:0]addra_0_1;
  wire clka_0_1;
  wire [11:0]imagen240x160_douta;

  assign M[11:0] = imagen240x160_douta;
  assign addra_0_1 = addra[15:0];
  assign clka_0_1 = clka;
  imagen240x160_blk_mem_gen_0_0 imagen240x160
       (.addra(addra_0_1),
        .clka(clka_0_1),
        .douta(imagen240x160_douta));
endmodule
