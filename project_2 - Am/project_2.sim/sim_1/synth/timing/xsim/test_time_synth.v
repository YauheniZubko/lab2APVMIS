// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Sep  8 17:35:08 2019
// Host        : DESKTOP-AI0J7HS running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/zheny/project_2/project_2.sim/sim_1/synth/timing/xsim/test_time_synth.v
// Design      : lab1
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module lab1
   (I1,
    I2,
    I3,
    I4,
    I5,
    I6,
    I7,
    I8,
    I9,
    Y0,
    Y1,
    Y2,
    Y3);
  input I1;
  input I2;
  input I3;
  input I4;
  input I5;
  input I6;
  input I7;
  input I8;
  input I9;
  output Y0;
  output Y1;
  output Y2;
  output Y3;

  wire I1;
  wire I1_IBUF;
  wire I2;
  wire I2_IBUF;
  wire I3;
  wire I3_IBUF;
  wire I4;
  wire I4_IBUF;
  wire I5;
  wire I5_IBUF;
  wire I6;
  wire I6_IBUF;
  wire I7;
  wire I7_IBUF;
  wire I8;
  wire I8_IBUF;
  wire I9;
  wire I9_IBUF;
  wire Y0;
  wire Y0_OBUF;
  wire Y0_OBUF_inst_i_2_n_0;
  wire Y1;
  wire Y1_OBUF;
  wire Y1_OBUF_inst_i_2_n_0;
  wire Y2;
  wire Y2_OBUF;
  wire Y3;
  wire Y3_OBUF;

initial begin
 $sdf_annotate("test_time_synth.sdf",,,,"tool_control");
end
  IBUF I1_IBUF_inst
       (.I(I1),
        .O(I1_IBUF));
  IBUF I2_IBUF_inst
       (.I(I2),
        .O(I2_IBUF));
  IBUF I3_IBUF_inst
       (.I(I3),
        .O(I3_IBUF));
  IBUF I4_IBUF_inst
       (.I(I4),
        .O(I4_IBUF));
  IBUF I5_IBUF_inst
       (.I(I5),
        .O(I5_IBUF));
  IBUF I6_IBUF_inst
       (.I(I6),
        .O(I6_IBUF));
  IBUF I7_IBUF_inst
       (.I(I7),
        .O(I7_IBUF));
  IBUF I8_IBUF_inst
       (.I(I8),
        .O(I8_IBUF));
  IBUF I9_IBUF_inst
       (.I(I9),
        .O(I9_IBUF));
  OBUF Y0_OBUF_inst
       (.I(Y0_OBUF),
        .O(Y0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8F00)) 
    Y0_OBUF_inst_i_1
       (.I0(Y0_OBUF_inst_i_2_n_0),
        .I1(I5_IBUF),
        .I2(I8_IBUF),
        .I3(I9_IBUF),
        .O(Y0_OBUF));
  LUT5 #(
    .INIT(32'h8AFFFFFF)) 
    Y0_OBUF_inst_i_2
       (.I0(I3_IBUF),
        .I1(I1_IBUF),
        .I2(I2_IBUF),
        .I3(I4_IBUF),
        .I4(I6_IBUF),
        .O(Y0_OBUF_inst_i_2_n_0));
  OBUF Y1_OBUF_inst
       (.I(Y1_OBUF),
        .O(Y1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    Y1_OBUF_inst_i_1
       (.I0(Y1_OBUF_inst_i_2_n_0),
        .I1(I8_IBUF),
        .I2(I9_IBUF),
        .O(Y1_OBUF));
  LUT6 #(
    .INIT(64'h8888088808880888)) 
    Y1_OBUF_inst_i_2
       (.I0(I6_IBUF),
        .I1(I7_IBUF),
        .I2(I5_IBUF),
        .I3(I4_IBUF),
        .I4(I2_IBUF),
        .I5(I3_IBUF),
        .O(Y1_OBUF_inst_i_2_n_0));
  OBUF Y2_OBUF_inst
       (.I(Y2_OBUF),
        .O(Y2));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    Y2_OBUF_inst_i_1
       (.I0(I7_IBUF),
        .I1(I6_IBUF),
        .I2(I5_IBUF),
        .I3(I9_IBUF),
        .I4(I8_IBUF),
        .I5(I4_IBUF),
        .O(Y2_OBUF));
  OBUF Y3_OBUF_inst
       (.I(Y3_OBUF),
        .O(Y3));
  LUT2 #(
    .INIT(4'h8)) 
    Y3_OBUF_inst_i_1
       (.I0(I8_IBUF),
        .I1(I9_IBUF),
        .O(Y3_OBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
