// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
// Date        : Tue May 01 13:18:50 2018
// Host        : NaifMehanna-Laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {D:/Naif
//               Mehanna/Documents/Cours/IMA4/CNP/projet_cnp_rihme/MicroControlCNP/MicroControlCNP.sim/sim_1/impl/func/alu_tb_func_impl.v}
// Design      : topmodule
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ClockingModule
   (dividedClock,
    CLK,
    O_leds_OBUF);
  output dividedClock;
  input CLK;
  input [0:0]O_leds_OBUF;

  wire CLK;
  wire [0:0]O_leds_OBUF;
  wire [26:0]cnt;
  wire \cnt[26]_i_2_n_0 ;
  wire \cnt[26]_i_3_n_0 ;
  wire \cnt[26]_i_4_n_0 ;
  wire \cnt[26]_i_6_n_0 ;
  wire \cnt[26]_i_7_n_0 ;
  wire \cnt[26]_i_8_n_0 ;
  wire \cnt[26]_i_9_n_0 ;
  wire [26:0]cnt_0;
  wire \cnt_reg[12]_i_2_n_0 ;
  wire \cnt_reg[16]_i_2_n_0 ;
  wire \cnt_reg[20]_i_2_n_0 ;
  wire \cnt_reg[24]_i_2_n_0 ;
  wire \cnt_reg[4]_i_2_n_0 ;
  wire \cnt_reg[8]_i_2_n_0 ;
  wire [26:1]data0;
  wire dividedClock;
  wire temp_i_1_n_0;
  wire [2:0]\NLW_cnt_reg[12]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_reg[16]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_reg[20]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_reg[24]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_cnt_reg[26]_i_5_CO_UNCONNECTED ;
  wire [3:2]\NLW_cnt_reg[26]_i_5_O_UNCONNECTED ;
  wire [2:0]\NLW_cnt_reg[4]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_reg[8]_i_2_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(cnt[0]),
        .O(cnt_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[10]_i_1 
       (.I0(\cnt[26]_i_2_n_0 ),
        .I1(\cnt[26]_i_3_n_0 ),
        .I2(\cnt[26]_i_4_n_0 ),
        .I3(data0[10]),
        .O(cnt_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[11]_i_1 
       (.I0(\cnt[26]_i_2_n_0 ),
        .I1(\cnt[26]_i_3_n_0 ),
        .I2(\cnt[26]_i_4_n_0 ),
        .I3(data0[11]),
        .O(cnt_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[12]_i_1 
       (.I0(\cnt[26]_i_2_n_0 ),
        .I1(\cnt[26]_i_3_n_0 ),
        .I2(\cnt[26]_i_4_n_0 ),
        .I3(data0[12]),
        .O(cnt_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[13]_i_1 
       (.I0(\cnt[26]_i_2_n_0 ),
        .I1(\cnt[26]_i_3_n_0 ),
        .I2(\cnt[26]_i_4_n_0 ),
        .I3(data0[13]),
        .O(cnt_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[14]_i_1 
       (.I0(\cnt[26]_i_2_n_0 ),
        .I1(\cnt[26]_i_3_n_0 ),
        .I2(\cnt[26]_i_4_n_0 ),
        .I3(data0[14]),
        .O(cnt_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[15]_i_1 
       (.I0(\cnt[26]_i_2_n_0 ),
        .I1(\cnt[26]_i_3_n_0 ),
        .I2(\cnt[26]_i_4_n_0 ),
        .I3(data0[15]),
        .O(cnt_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[16]_i_1 
       (.I0(\cnt[26]_i_2_n_0 ),
        .I1(\cnt[26]_i_3_n_0 ),
        .I2(\cnt[26]_i_4_n_0 ),
        .I3(data0[16]),
        .O(cnt_0[16]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[17]_i_1 
       (.I0(\cnt[26]_i_2_n_0 ),
        .I1(\cnt[26]_i_3_n_0 ),
        .I2(\cnt[26]_i_4_n_0 ),
        .I3(data0[17]),
        .O(cnt_0[17]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[18]_i_1 
       (.I0(\cnt[26]_i_2_n_0 ),
        .I1(\cnt[26]_i_3_n_0 ),
        .I2(\cnt[26]_i_4_n_0 ),
        .I3(data0[18]),
        .O(cnt_0[18]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[19]_i_1 
       (.I0(\cnt[26]_i_2_n_0 ),
        .I1(\cnt[26]_i_3_n_0 ),
        .I2(\cnt[26]_i_4_n_0 ),
        .I3(data0[19]),
        .O(cnt_0[19]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[1]_i_1 
       (.I0(\cnt[26]_i_2_n_0 ),
        .I1(\cnt[26]_i_3_n_0 ),
        .I2(\cnt[26]_i_4_n_0 ),
        .I3(data0[1]),
        .O(cnt_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[20]_i_1 
       (.I0(\cnt[26]_i_2_n_0 ),
        .I1(\cnt[26]_i_3_n_0 ),
        .I2(\cnt[26]_i_4_n_0 ),
        .I3(data0[20]),
        .O(cnt_0[20]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[21]_i_1 
       (.I0(\cnt[26]_i_2_n_0 ),
        .I1(\cnt[26]_i_3_n_0 ),
        .I2(\cnt[26]_i_4_n_0 ),
        .I3(data0[21]),
        .O(cnt_0[21]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[22]_i_1 
       (.I0(\cnt[26]_i_2_n_0 ),
        .I1(\cnt[26]_i_3_n_0 ),
        .I2(\cnt[26]_i_4_n_0 ),
        .I3(data0[22]),
        .O(cnt_0[22]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[23]_i_1 
       (.I0(\cnt[26]_i_2_n_0 ),
        .I1(\cnt[26]_i_3_n_0 ),
        .I2(\cnt[26]_i_4_n_0 ),
        .I3(data0[23]),
        .O(cnt_0[23]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[24]_i_1 
       (.I0(\cnt[26]_i_2_n_0 ),
        .I1(\cnt[26]_i_3_n_0 ),
        .I2(\cnt[26]_i_4_n_0 ),
        .I3(data0[24]),
        .O(cnt_0[24]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[25]_i_1 
       (.I0(\cnt[26]_i_2_n_0 ),
        .I1(\cnt[26]_i_3_n_0 ),
        .I2(\cnt[26]_i_4_n_0 ),
        .I3(data0[25]),
        .O(cnt_0[25]));
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[26]_i_1 
       (.I0(\cnt[26]_i_2_n_0 ),
        .I1(\cnt[26]_i_3_n_0 ),
        .I2(\cnt[26]_i_4_n_0 ),
        .I3(data0[26]),
        .O(cnt_0[26]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFDF)) 
    \cnt[26]_i_2 
       (.I0(cnt[26]),
        .I1(cnt[25]),
        .I2(cnt[0]),
        .I3(\cnt[26]_i_6_n_0 ),
        .I4(\cnt[26]_i_7_n_0 ),
        .O(\cnt[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \cnt[26]_i_3 
       (.I0(cnt[8]),
        .I1(cnt[7]),
        .I2(cnt[5]),
        .I3(cnt[6]),
        .I4(\cnt[26]_i_8_n_0 ),
        .O(\cnt[26]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \cnt[26]_i_4 
       (.I0(cnt[15]),
        .I1(cnt[16]),
        .I2(cnt[13]),
        .I3(cnt[14]),
        .I4(\cnt[26]_i_9_n_0 ),
        .O(\cnt[26]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cnt[26]_i_6 
       (.I0(cnt[22]),
        .I1(cnt[21]),
        .I2(cnt[24]),
        .I3(cnt[23]),
        .O(\cnt[26]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cnt[26]_i_7 
       (.I0(cnt[2]),
        .I1(cnt[1]),
        .I2(cnt[4]),
        .I3(cnt[3]),
        .O(\cnt[26]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt[26]_i_8 
       (.I0(cnt[10]),
        .I1(cnt[9]),
        .I2(cnt[12]),
        .I3(cnt[11]),
        .O(\cnt[26]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \cnt[26]_i_9 
       (.I0(cnt[18]),
        .I1(cnt[17]),
        .I2(cnt[20]),
        .I3(cnt[19]),
        .O(\cnt[26]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[2]_i_1 
       (.I0(\cnt[26]_i_2_n_0 ),
        .I1(\cnt[26]_i_3_n_0 ),
        .I2(\cnt[26]_i_4_n_0 ),
        .I3(data0[2]),
        .O(cnt_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[3]_i_1 
       (.I0(\cnt[26]_i_2_n_0 ),
        .I1(\cnt[26]_i_3_n_0 ),
        .I2(\cnt[26]_i_4_n_0 ),
        .I3(data0[3]),
        .O(cnt_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[4]_i_1 
       (.I0(\cnt[26]_i_2_n_0 ),
        .I1(\cnt[26]_i_3_n_0 ),
        .I2(\cnt[26]_i_4_n_0 ),
        .I3(data0[4]),
        .O(cnt_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[5]_i_1 
       (.I0(\cnt[26]_i_2_n_0 ),
        .I1(\cnt[26]_i_3_n_0 ),
        .I2(\cnt[26]_i_4_n_0 ),
        .I3(data0[5]),
        .O(cnt_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[6]_i_1 
       (.I0(\cnt[26]_i_2_n_0 ),
        .I1(\cnt[26]_i_3_n_0 ),
        .I2(\cnt[26]_i_4_n_0 ),
        .I3(data0[6]),
        .O(cnt_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[7]_i_1 
       (.I0(\cnt[26]_i_2_n_0 ),
        .I1(\cnt[26]_i_3_n_0 ),
        .I2(\cnt[26]_i_4_n_0 ),
        .I3(data0[7]),
        .O(cnt_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[8]_i_1 
       (.I0(\cnt[26]_i_2_n_0 ),
        .I1(\cnt[26]_i_3_n_0 ),
        .I2(\cnt[26]_i_4_n_0 ),
        .I3(data0[8]),
        .O(cnt_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[9]_i_1 
       (.I0(\cnt[26]_i_2_n_0 ),
        .I1(\cnt[26]_i_3_n_0 ),
        .I2(\cnt[26]_i_4_n_0 ),
        .I3(data0[9]),
        .O(cnt_0[9]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(O_leds_OBUF),
        .D(cnt_0[0]),
        .Q(cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(O_leds_OBUF),
        .D(cnt_0[10]),
        .Q(cnt[10]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(O_leds_OBUF),
        .D(cnt_0[11]),
        .Q(cnt[11]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(O_leds_OBUF),
        .D(cnt_0[12]),
        .Q(cnt[12]));
  CARRY4 \cnt_reg[12]_i_2 
       (.CI(\cnt_reg[8]_i_2_n_0 ),
        .CO({\cnt_reg[12]_i_2_n_0 ,\NLW_cnt_reg[12]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(cnt[12:9]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(O_leds_OBUF),
        .D(cnt_0[13]),
        .Q(cnt[13]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(O_leds_OBUF),
        .D(cnt_0[14]),
        .Q(cnt[14]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(O_leds_OBUF),
        .D(cnt_0[15]),
        .Q(cnt[15]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(O_leds_OBUF),
        .D(cnt_0[16]),
        .Q(cnt[16]));
  CARRY4 \cnt_reg[16]_i_2 
       (.CI(\cnt_reg[12]_i_2_n_0 ),
        .CO({\cnt_reg[16]_i_2_n_0 ,\NLW_cnt_reg[16]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(cnt[16:13]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(O_leds_OBUF),
        .D(cnt_0[17]),
        .Q(cnt[17]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(O_leds_OBUF),
        .D(cnt_0[18]),
        .Q(cnt[18]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(O_leds_OBUF),
        .D(cnt_0[19]),
        .Q(cnt[19]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(O_leds_OBUF),
        .D(cnt_0[1]),
        .Q(cnt[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(O_leds_OBUF),
        .D(cnt_0[20]),
        .Q(cnt[20]));
  CARRY4 \cnt_reg[20]_i_2 
       (.CI(\cnt_reg[16]_i_2_n_0 ),
        .CO({\cnt_reg[20]_i_2_n_0 ,\NLW_cnt_reg[20]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(cnt[20:17]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(O_leds_OBUF),
        .D(cnt_0[21]),
        .Q(cnt[21]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(O_leds_OBUF),
        .D(cnt_0[22]),
        .Q(cnt[22]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(O_leds_OBUF),
        .D(cnt_0[23]),
        .Q(cnt[23]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(O_leds_OBUF),
        .D(cnt_0[24]),
        .Q(cnt[24]));
  CARRY4 \cnt_reg[24]_i_2 
       (.CI(\cnt_reg[20]_i_2_n_0 ),
        .CO({\cnt_reg[24]_i_2_n_0 ,\NLW_cnt_reg[24]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(cnt[24:21]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(O_leds_OBUF),
        .D(cnt_0[25]),
        .Q(cnt[25]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(O_leds_OBUF),
        .D(cnt_0[26]),
        .Q(cnt[26]));
  CARRY4 \cnt_reg[26]_i_5 
       (.CI(\cnt_reg[24]_i_2_n_0 ),
        .CO(\NLW_cnt_reg[26]_i_5_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_reg[26]_i_5_O_UNCONNECTED [3:2],data0[26:25]}),
        .S({1'b0,1'b0,cnt[26:25]}));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(O_leds_OBUF),
        .D(cnt_0[2]),
        .Q(cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(O_leds_OBUF),
        .D(cnt_0[3]),
        .Q(cnt[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(O_leds_OBUF),
        .D(cnt_0[4]),
        .Q(cnt[4]));
  CARRY4 \cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\cnt_reg[4]_i_2_n_0 ,\NLW_cnt_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(cnt[4:1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(O_leds_OBUF),
        .D(cnt_0[5]),
        .Q(cnt[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(O_leds_OBUF),
        .D(cnt_0[6]),
        .Q(cnt[6]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(O_leds_OBUF),
        .D(cnt_0[7]),
        .Q(cnt[7]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(O_leds_OBUF),
        .D(cnt_0[8]),
        .Q(cnt[8]));
  CARRY4 \cnt_reg[8]_i_2 
       (.CI(\cnt_reg[4]_i_2_n_0 ),
        .CO({\cnt_reg[8]_i_2_n_0 ,\NLW_cnt_reg[8]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(cnt[8:5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(O_leds_OBUF),
        .D(cnt_0[9]),
        .Q(cnt[9]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    temp_i_1
       (.I0(\cnt[26]_i_2_n_0 ),
        .I1(\cnt[26]_i_3_n_0 ),
        .I2(\cnt[26]_i_4_n_0 ),
        .I3(dividedClock),
        .O(temp_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    temp_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(O_leds_OBUF),
        .D(temp_i_1_n_0),
        .Q(dividedClock));
endmodule

module alu
   (O_shouldBranch,
    D,
    \pc_actuel_reg[15] ,
    p_0_in,
    s_result,
    Q,
    O_regDwe,
    dividedClock_BUFG,
    \O_aluop_reg[1] ,
    \pc_actuel_reg[0] ,
    O_leds_OBUF,
    plusOp,
    \O_aluop_reg[3] ,
    \O_dataB_reg[15] ,
    \O_dataA_reg[15] );
  output O_shouldBranch;
  output [15:0]D;
  output [15:0]\pc_actuel_reg[15] ;
  output p_0_in;
  output [15:0]s_result;
  input [2:0]Q;
  input O_regDwe;
  input dividedClock_BUFG;
  input \O_aluop_reg[1] ;
  input [0:0]\pc_actuel_reg[0] ;
  input [0:0]O_leds_OBUF;
  input [14:0]plusOp;
  input [15:0]\O_aluop_reg[3] ;
  input [15:0]\O_dataB_reg[15] ;
  input [15:0]\O_dataA_reg[15] ;

  wire [15:0]D;
  wire \O_aluop_reg[1] ;
  wire [15:0]\O_aluop_reg[3] ;
  wire [15:0]\O_dataA_reg[15] ;
  wire [15:0]\O_dataB_reg[15] ;
  wire O_dataWriteReg;
  wire [0:0]O_leds_OBUF;
  wire O_regDwe;
  wire O_shouldBranch;
  wire [2:0]Q;
  wire dividedClock_BUFG;
  wire p_0_in;
  wire [0:0]\pc_actuel_reg[0] ;
  wire [15:0]\pc_actuel_reg[15] ;
  wire [14:0]plusOp;
  wire [15:0]s_result;
  wire \s_result[11]_i_10_n_0 ;
  wire \s_result[11]_i_11_n_0 ;
  wire \s_result[11]_i_12_n_0 ;
  wire \s_result[11]_i_13_n_0 ;
  wire \s_result[15]_i_13_n_0 ;
  wire \s_result[15]_i_14_n_0 ;
  wire \s_result[15]_i_15_n_0 ;
  wire \s_result[15]_i_16_n_0 ;
  wire \s_result[3]_i_10_n_0 ;
  wire \s_result[3]_i_11_n_0 ;
  wire \s_result[3]_i_12_n_0 ;
  wire \s_result[3]_i_13_n_0 ;
  wire \s_result[7]_i_10_n_0 ;
  wire \s_result[7]_i_11_n_0 ;
  wire \s_result[7]_i_12_n_0 ;
  wire \s_result[7]_i_13_n_0 ;
  wire \s_result_reg[11]_i_9_n_0 ;
  wire \s_result_reg[3]_i_9_n_0 ;
  wire \s_result_reg[7]_i_9_n_0 ;
  wire [2:0]\NLW_s_result_reg[11]_i_9_CO_UNCONNECTED ;
  wire [3:0]\NLW_s_result_reg[15]_i_10_CO_UNCONNECTED ;
  wire [2:0]\NLW_s_result_reg[3]_i_9_CO_UNCONNECTED ;
  wire [2:0]\NLW_s_result_reg[7]_i_9_CO_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    O_dataWriteReg_reg
       (.C(dividedClock_BUFG),
        .CE(Q[0]),
        .D(O_regDwe),
        .Q(O_dataWriteReg),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0A0B030B)) 
    \pc_actuel[0]_i_1 
       (.I0(\pc_actuel_reg[15] [0]),
        .I1(\pc_actuel_reg[0] ),
        .I2(O_leds_OBUF),
        .I3(Q[2]),
        .I4(O_shouldBranch),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h0000CAEE)) 
    \pc_actuel[10]_i_1 
       (.I0(plusOp[9]),
        .I1(\pc_actuel_reg[15] [10]),
        .I2(O_shouldBranch),
        .I3(Q[2]),
        .I4(O_leds_OBUF),
        .O(D[10]));
  LUT5 #(
    .INIT(32'h0000CAEE)) 
    \pc_actuel[11]_i_1 
       (.I0(plusOp[10]),
        .I1(\pc_actuel_reg[15] [11]),
        .I2(O_shouldBranch),
        .I3(Q[2]),
        .I4(O_leds_OBUF),
        .O(D[11]));
  LUT5 #(
    .INIT(32'h0000CAEE)) 
    \pc_actuel[12]_i_1 
       (.I0(plusOp[11]),
        .I1(\pc_actuel_reg[15] [12]),
        .I2(O_shouldBranch),
        .I3(Q[2]),
        .I4(O_leds_OBUF),
        .O(D[12]));
  LUT5 #(
    .INIT(32'h0000CAEE)) 
    \pc_actuel[13]_i_1 
       (.I0(plusOp[12]),
        .I1(\pc_actuel_reg[15] [13]),
        .I2(O_shouldBranch),
        .I3(Q[2]),
        .I4(O_leds_OBUF),
        .O(D[13]));
  LUT5 #(
    .INIT(32'h0000CAEE)) 
    \pc_actuel[14]_i_1 
       (.I0(plusOp[13]),
        .I1(\pc_actuel_reg[15] [14]),
        .I2(O_shouldBranch),
        .I3(Q[2]),
        .I4(O_leds_OBUF),
        .O(D[14]));
  LUT5 #(
    .INIT(32'h0000CAEE)) 
    \pc_actuel[15]_i_2 
       (.I0(plusOp[14]),
        .I1(\pc_actuel_reg[15] [15]),
        .I2(O_shouldBranch),
        .I3(Q[2]),
        .I4(O_leds_OBUF),
        .O(D[15]));
  LUT5 #(
    .INIT(32'h0000CAEE)) 
    \pc_actuel[1]_i_1 
       (.I0(plusOp[0]),
        .I1(\pc_actuel_reg[15] [1]),
        .I2(O_shouldBranch),
        .I3(Q[2]),
        .I4(O_leds_OBUF),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h0000CAEE)) 
    \pc_actuel[2]_i_1 
       (.I0(plusOp[1]),
        .I1(\pc_actuel_reg[15] [2]),
        .I2(O_shouldBranch),
        .I3(Q[2]),
        .I4(O_leds_OBUF),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h0000CAEE)) 
    \pc_actuel[3]_i_1 
       (.I0(plusOp[2]),
        .I1(\pc_actuel_reg[15] [3]),
        .I2(O_shouldBranch),
        .I3(Q[2]),
        .I4(O_leds_OBUF),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h0000CAEE)) 
    \pc_actuel[4]_i_1 
       (.I0(plusOp[3]),
        .I1(\pc_actuel_reg[15] [4]),
        .I2(O_shouldBranch),
        .I3(Q[2]),
        .I4(O_leds_OBUF),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h0000CAEE)) 
    \pc_actuel[5]_i_1 
       (.I0(plusOp[4]),
        .I1(\pc_actuel_reg[15] [5]),
        .I2(O_shouldBranch),
        .I3(Q[2]),
        .I4(O_leds_OBUF),
        .O(D[5]));
  LUT5 #(
    .INIT(32'h0000CAEE)) 
    \pc_actuel[6]_i_1 
       (.I0(plusOp[5]),
        .I1(\pc_actuel_reg[15] [6]),
        .I2(O_shouldBranch),
        .I3(Q[2]),
        .I4(O_leds_OBUF),
        .O(D[6]));
  LUT5 #(
    .INIT(32'h0000CAEE)) 
    \pc_actuel[7]_i_1 
       (.I0(plusOp[6]),
        .I1(\pc_actuel_reg[15] [7]),
        .I2(O_shouldBranch),
        .I3(Q[2]),
        .I4(O_leds_OBUF),
        .O(D[7]));
  LUT5 #(
    .INIT(32'h0000CAEE)) 
    \pc_actuel[8]_i_1 
       (.I0(plusOp[7]),
        .I1(\pc_actuel_reg[15] [8]),
        .I2(O_shouldBranch),
        .I3(Q[2]),
        .I4(O_leds_OBUF),
        .O(D[8]));
  LUT5 #(
    .INIT(32'h0000CAEE)) 
    \pc_actuel[9]_i_1 
       (.I0(plusOp[8]),
        .I1(\pc_actuel_reg[15] [9]),
        .I2(O_shouldBranch),
        .I3(Q[2]),
        .I4(O_leds_OBUF),
        .O(D[9]));
  LUT2 #(
    .INIT(4'h8)) 
    regs_reg_r1_0_7_0_5_i_1
       (.I0(O_dataWriteReg),
        .I1(Q[1]),
        .O(p_0_in));
  LUT2 #(
    .INIT(4'h6)) 
    \s_result[11]_i_10 
       (.I0(\O_dataB_reg[15] [11]),
        .I1(\O_dataA_reg[15] [11]),
        .O(\s_result[11]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_result[11]_i_11 
       (.I0(\O_dataB_reg[15] [10]),
        .I1(\O_dataA_reg[15] [10]),
        .O(\s_result[11]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_result[11]_i_12 
       (.I0(\O_dataB_reg[15] [9]),
        .I1(\O_dataA_reg[15] [9]),
        .O(\s_result[11]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_result[11]_i_13 
       (.I0(\O_dataB_reg[15] [8]),
        .I1(\O_dataA_reg[15] [8]),
        .O(\s_result[11]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_result[15]_i_13 
       (.I0(\O_dataB_reg[15] [15]),
        .I1(\O_dataA_reg[15] [15]),
        .O(\s_result[15]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_result[15]_i_14 
       (.I0(\O_dataB_reg[15] [14]),
        .I1(\O_dataA_reg[15] [14]),
        .O(\s_result[15]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_result[15]_i_15 
       (.I0(\O_dataB_reg[15] [13]),
        .I1(\O_dataA_reg[15] [13]),
        .O(\s_result[15]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_result[15]_i_16 
       (.I0(\O_dataB_reg[15] [12]),
        .I1(\O_dataA_reg[15] [12]),
        .O(\s_result[15]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_result[3]_i_10 
       (.I0(\O_dataB_reg[15] [3]),
        .I1(\O_dataA_reg[15] [3]),
        .O(\s_result[3]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_result[3]_i_11 
       (.I0(\O_dataB_reg[15] [2]),
        .I1(\O_dataA_reg[15] [2]),
        .O(\s_result[3]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_result[3]_i_12 
       (.I0(\O_dataB_reg[15] [1]),
        .I1(\O_dataA_reg[15] [1]),
        .O(\s_result[3]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_result[3]_i_13 
       (.I0(\O_dataB_reg[15] [0]),
        .I1(\O_dataA_reg[15] [0]),
        .O(\s_result[3]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_result[7]_i_10 
       (.I0(\O_dataB_reg[15] [7]),
        .I1(\O_dataA_reg[15] [7]),
        .O(\s_result[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_result[7]_i_11 
       (.I0(\O_dataB_reg[15] [6]),
        .I1(\O_dataA_reg[15] [6]),
        .O(\s_result[7]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_result[7]_i_12 
       (.I0(\O_dataB_reg[15] [5]),
        .I1(\O_dataA_reg[15] [5]),
        .O(\s_result[7]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_result[7]_i_13 
       (.I0(\O_dataB_reg[15] [4]),
        .I1(\O_dataA_reg[15] [4]),
        .O(\s_result[7]_i_13_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_result_reg[0] 
       (.C(dividedClock_BUFG),
        .CE(Q[0]),
        .D(\O_aluop_reg[3] [0]),
        .Q(\pc_actuel_reg[15] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_result_reg[10] 
       (.C(dividedClock_BUFG),
        .CE(Q[0]),
        .D(\O_aluop_reg[3] [10]),
        .Q(\pc_actuel_reg[15] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_result_reg[11] 
       (.C(dividedClock_BUFG),
        .CE(Q[0]),
        .D(\O_aluop_reg[3] [11]),
        .Q(\pc_actuel_reg[15] [11]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \s_result_reg[11]_i_9 
       (.CI(\s_result_reg[7]_i_9_n_0 ),
        .CO({\s_result_reg[11]_i_9_n_0 ,\NLW_s_result_reg[11]_i_9_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\O_dataB_reg[15] [11:8]),
        .O(s_result[11:8]),
        .S({\s_result[11]_i_10_n_0 ,\s_result[11]_i_11_n_0 ,\s_result[11]_i_12_n_0 ,\s_result[11]_i_13_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s_result_reg[12] 
       (.C(dividedClock_BUFG),
        .CE(Q[0]),
        .D(\O_aluop_reg[3] [12]),
        .Q(\pc_actuel_reg[15] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_result_reg[13] 
       (.C(dividedClock_BUFG),
        .CE(Q[0]),
        .D(\O_aluop_reg[3] [13]),
        .Q(\pc_actuel_reg[15] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_result_reg[14] 
       (.C(dividedClock_BUFG),
        .CE(Q[0]),
        .D(\O_aluop_reg[3] [14]),
        .Q(\pc_actuel_reg[15] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_result_reg[15] 
       (.C(dividedClock_BUFG),
        .CE(Q[0]),
        .D(\O_aluop_reg[3] [15]),
        .Q(\pc_actuel_reg[15] [15]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \s_result_reg[15]_i_10 
       (.CI(\s_result_reg[11]_i_9_n_0 ),
        .CO(\NLW_s_result_reg[15]_i_10_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\O_dataB_reg[15] [14:12]}),
        .O(s_result[15:12]),
        .S({\s_result[15]_i_13_n_0 ,\s_result[15]_i_14_n_0 ,\s_result[15]_i_15_n_0 ,\s_result[15]_i_16_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s_result_reg[1] 
       (.C(dividedClock_BUFG),
        .CE(Q[0]),
        .D(\O_aluop_reg[3] [1]),
        .Q(\pc_actuel_reg[15] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_result_reg[2] 
       (.C(dividedClock_BUFG),
        .CE(Q[0]),
        .D(\O_aluop_reg[3] [2]),
        .Q(\pc_actuel_reg[15] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_result_reg[3] 
       (.C(dividedClock_BUFG),
        .CE(Q[0]),
        .D(\O_aluop_reg[3] [3]),
        .Q(\pc_actuel_reg[15] [3]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \s_result_reg[3]_i_9 
       (.CI(1'b0),
        .CO({\s_result_reg[3]_i_9_n_0 ,\NLW_s_result_reg[3]_i_9_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\O_dataB_reg[15] [3:0]),
        .O(s_result[3:0]),
        .S({\s_result[3]_i_10_n_0 ,\s_result[3]_i_11_n_0 ,\s_result[3]_i_12_n_0 ,\s_result[3]_i_13_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s_result_reg[4] 
       (.C(dividedClock_BUFG),
        .CE(Q[0]),
        .D(\O_aluop_reg[3] [4]),
        .Q(\pc_actuel_reg[15] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_result_reg[5] 
       (.C(dividedClock_BUFG),
        .CE(Q[0]),
        .D(\O_aluop_reg[3] [5]),
        .Q(\pc_actuel_reg[15] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_result_reg[6] 
       (.C(dividedClock_BUFG),
        .CE(Q[0]),
        .D(\O_aluop_reg[3] [6]),
        .Q(\pc_actuel_reg[15] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_result_reg[7] 
       (.C(dividedClock_BUFG),
        .CE(Q[0]),
        .D(\O_aluop_reg[3] [7]),
        .Q(\pc_actuel_reg[15] [7]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \s_result_reg[7]_i_9 
       (.CI(\s_result_reg[3]_i_9_n_0 ),
        .CO({\s_result_reg[7]_i_9_n_0 ,\NLW_s_result_reg[7]_i_9_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\O_dataB_reg[15] [7:4]),
        .O(s_result[7:4]),
        .S({\s_result[7]_i_10_n_0 ,\s_result[7]_i_11_n_0 ,\s_result[7]_i_12_n_0 ,\s_result[7]_i_13_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s_result_reg[8] 
       (.C(dividedClock_BUFG),
        .CE(Q[0]),
        .D(\O_aluop_reg[3] [8]),
        .Q(\pc_actuel_reg[15] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_result_reg[9] 
       (.C(dividedClock_BUFG),
        .CE(Q[0]),
        .D(\O_aluop_reg[3] [9]),
        .Q(\pc_actuel_reg[15] [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    s_shouldBranch_reg
       (.C(dividedClock_BUFG),
        .CE(1'b1),
        .D(\O_aluop_reg[1] ),
        .Q(O_shouldBranch),
        .R(1'b0));
endmodule

module controlunit
   (Q,
    E,
    \pc_actuel_reg[15] ,
    O_leds_OBUF,
    dividedClock_BUFG);
  output [3:0]Q;
  output [0:0]E;
  output [0:0]\pc_actuel_reg[15] ;
  input [0:0]O_leds_OBUF;
  input dividedClock_BUFG;

  wire [0:0]E;
  wire [0:0]O_leds_OBUF;
  wire [3:0]Q;
  wire dividedClock_BUFG;
  wire [0:0]\pc_actuel_reg[15] ;
  wire \s_state[0]_i_1_n_0 ;
  wire \s_state[1]_i_1_n_0 ;
  wire \s_state[2]_i_1_n_0 ;
  wire \s_state[3]_i_1_n_0 ;
  wire \s_state[4]_i_1_n_0 ;
  wire [1:1]state;

  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \O_dataA[15]_i_1 
       (.I0(state),
        .I1(Q[2]),
        .O(E));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_actuel[15]_i_1 
       (.I0(O_leds_OBUF),
        .I1(Q[3]),
        .O(\pc_actuel_reg[15] ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFFFFFEE9)) 
    \s_state[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(state),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\s_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \s_state[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(state),
        .O(\s_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \s_state[2]_i_1 
       (.I0(state),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\s_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \s_state[3]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(state),
        .O(\s_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \s_state[4]_i_1 
       (.I0(state),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\s_state[4]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \s_state_reg[0] 
       (.C(dividedClock_BUFG),
        .CE(1'b1),
        .D(\s_state[0]_i_1_n_0 ),
        .Q(Q[0]),
        .S(O_leds_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \s_state_reg[1] 
       (.C(dividedClock_BUFG),
        .CE(1'b1),
        .D(\s_state[1]_i_1_n_0 ),
        .Q(state),
        .R(O_leds_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \s_state_reg[2] 
       (.C(dividedClock_BUFG),
        .CE(1'b1),
        .D(\s_state[2]_i_1_n_0 ),
        .Q(Q[1]),
        .R(O_leds_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \s_state_reg[3] 
       (.C(dividedClock_BUFG),
        .CE(1'b1),
        .D(\s_state[3]_i_1_n_0 ),
        .Q(Q[2]),
        .R(O_leds_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \s_state_reg[4] 
       (.C(dividedClock_BUFG),
        .CE(1'b1),
        .D(\s_state[4]_i_1_n_0 ),
        .Q(Q[3]),
        .R(O_leds_OBUF));
endmodule

module decoder
   (O_regDwe,
    O_imm,
    O_selB,
    D,
    DI,
    S,
    s_shouldBranch_reg,
    \s_result_reg[15] ,
    \O_dataA_reg[13] ,
    Q,
    \O_data_reg[15] ,
    dividedClock_BUFG,
    \O_data_reg[15]_0 ,
    O,
    \O_dataB_reg[15] ,
    \O_dataA_reg[15] ,
    \pc_actuel_reg[7] ,
    \O_selB_reg[0]_0 ,
    \pc_actuel_reg[13] ,
    \pc_actuel_reg[12] ,
    s_result,
    O_shouldBranch);
  output O_regDwe;
  output [4:0]O_imm;
  output [2:0]O_selB;
  output [15:0]D;
  output [0:0]DI;
  output [0:0]S;
  output s_shouldBranch_reg;
  output [0:0]\s_result_reg[15] ;
  output [2:0]\O_dataA_reg[13] ;
  input [1:0]Q;
  input \O_data_reg[15] ;
  input dividedClock_BUFG;
  input [15:0]\O_data_reg[15]_0 ;
  input [2:0]O;
  input [15:0]\O_dataB_reg[15] ;
  input [15:0]\O_dataA_reg[15] ;
  input [3:0]\pc_actuel_reg[7] ;
  input [3:0]\O_selB_reg[0]_0 ;
  input [3:0]\pc_actuel_reg[13] ;
  input [2:0]\pc_actuel_reg[12] ;
  input [15:0]s_result;
  input O_shouldBranch;

  wire [15:0]D;
  wire [0:0]DI;
  wire [2:0]O;
  wire [4:1]O_aluop;
  wire [0:0]O_aluop__0;
  wire [2:0]\O_dataA_reg[13] ;
  wire [15:0]\O_dataA_reg[15] ;
  wire [15:0]\O_dataB_reg[15] ;
  wire \O_data_reg[15] ;
  wire [15:0]\O_data_reg[15]_0 ;
  wire [4:0]O_imm;
  wire O_regDwe;
  wire [2:0]O_selB;
  wire [3:0]\O_selB_reg[0]_0 ;
  wire O_shouldBranch;
  wire [1:0]Q;
  wire [0:0]S;
  wire dividedClock_BUFG;
  wire [2:0]\pc_actuel_reg[12] ;
  wire [3:0]\pc_actuel_reg[13] ;
  wire [3:0]\pc_actuel_reg[7] ;
  wire [15:0]s_result;
  wire \s_result[0]_i_2_n_0 ;
  wire \s_result[0]_i_3_n_0 ;
  wire \s_result[0]_i_4_n_0 ;
  wire \s_result[10]_i_2_n_0 ;
  wire \s_result[10]_i_3_n_0 ;
  wire \s_result[11]_i_3_n_0 ;
  wire \s_result[11]_i_4_n_0 ;
  wire \s_result[12]_i_2_n_0 ;
  wire \s_result[12]_i_3_n_0 ;
  wire \s_result[13]_i_2_n_0 ;
  wire \s_result[13]_i_3_n_0 ;
  wire \s_result[14]_i_2_n_0 ;
  wire \s_result[14]_i_3_n_0 ;
  wire \s_result[15]_i_11_n_0 ;
  wire \s_result[15]_i_12_n_0 ;
  wire \s_result[15]_i_3_n_0 ;
  wire \s_result[15]_i_4_n_0 ;
  wire \s_result[1]_i_2_n_0 ;
  wire \s_result[1]_i_3_n_0 ;
  wire \s_result[2]_i_2_n_0 ;
  wire \s_result[2]_i_3_n_0 ;
  wire \s_result[3]_i_3_n_0 ;
  wire \s_result[3]_i_4_n_0 ;
  wire \s_result[4]_i_2_n_0 ;
  wire \s_result[4]_i_3_n_0 ;
  wire \s_result[5]_i_2_n_0 ;
  wire \s_result[5]_i_3_n_0 ;
  wire \s_result[6]_i_2_n_0 ;
  wire \s_result[6]_i_3_n_0 ;
  wire \s_result[7]_i_3_n_0 ;
  wire \s_result[7]_i_4_n_0 ;
  wire \s_result[8]_i_2_n_0 ;
  wire \s_result[8]_i_3_n_0 ;
  wire \s_result[8]_i_4_n_0 ;
  wire \s_result[8]_i_5_n_0 ;
  wire \s_result[8]_i_6_n_0 ;
  wire \s_result[9]_i_2_n_0 ;
  wire \s_result[9]_i_3_n_0 ;
  wire [0:0]\s_result_reg[15] ;
  wire s_shouldBranch_reg;

  FDRE #(
    .INIT(1'b0)) 
    \O_aluop_reg[0] 
       (.C(dividedClock_BUFG),
        .CE(Q[0]),
        .D(\O_data_reg[15]_0 [8]),
        .Q(O_aluop__0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_aluop_reg[1] 
       (.C(dividedClock_BUFG),
        .CE(Q[0]),
        .D(\O_data_reg[15]_0 [12]),
        .Q(O_aluop[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_aluop_reg[2] 
       (.C(dividedClock_BUFG),
        .CE(Q[0]),
        .D(\O_data_reg[15]_0 [13]),
        .Q(O_aluop[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_aluop_reg[3] 
       (.C(dividedClock_BUFG),
        .CE(Q[0]),
        .D(\O_data_reg[15]_0 [14]),
        .Q(O_aluop[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_aluop_reg[4] 
       (.C(dividedClock_BUFG),
        .CE(Q[0]),
        .D(\O_data_reg[15]_0 [15]),
        .Q(O_aluop[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_imm_reg[5] 
       (.C(dividedClock_BUFG),
        .CE(Q[0]),
        .D(\O_data_reg[15]_0 [5]),
        .Q(O_imm[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_imm_reg[6] 
       (.C(dividedClock_BUFG),
        .CE(Q[0]),
        .D(\O_data_reg[15]_0 [6]),
        .Q(O_imm[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_imm_reg[7] 
       (.C(dividedClock_BUFG),
        .CE(Q[0]),
        .D(\O_data_reg[15]_0 [7]),
        .Q(O_imm[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_imm_reg[8] 
       (.C(dividedClock_BUFG),
        .CE(Q[0]),
        .D(\O_data_reg[15]_0 [0]),
        .Q(O_imm[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_imm_reg[9] 
       (.C(dividedClock_BUFG),
        .CE(Q[0]),
        .D(\O_data_reg[15]_0 [1]),
        .Q(O_imm[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    O_regDwe_reg
       (.C(dividedClock_BUFG),
        .CE(Q[0]),
        .D(\O_data_reg[15] ),
        .Q(O_regDwe),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_selB_reg[0] 
       (.C(dividedClock_BUFG),
        .CE(Q[0]),
        .D(\O_data_reg[15]_0 [2]),
        .Q(O_selB[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_selB_reg[1] 
       (.C(dividedClock_BUFG),
        .CE(Q[0]),
        .D(\O_data_reg[15]_0 [3]),
        .Q(O_selB[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_selB_reg[2] 
       (.C(dividedClock_BUFG),
        .CE(Q[0]),
        .D(\O_data_reg[15]_0 [4]),
        .Q(O_selB[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_selD_reg[0] 
       (.C(dividedClock_BUFG),
        .CE(Q[0]),
        .D(\O_data_reg[15]_0 [9]),
        .Q(\O_dataA_reg[13] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_selD_reg[1] 
       (.C(dividedClock_BUFG),
        .CE(Q[0]),
        .D(\O_data_reg[15]_0 [10]),
        .Q(\O_dataA_reg[13] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_selD_reg[2] 
       (.C(dividedClock_BUFG),
        .CE(Q[0]),
        .D(\O_data_reg[15]_0 [11]),
        .Q(\O_dataA_reg[13] [2]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFEFEFE)) 
    \s_result[0]_i_1 
       (.I0(\s_result[0]_i_2_n_0 ),
        .I1(\s_result[0]_i_3_n_0 ),
        .I2(\s_result[0]_i_4_n_0 ),
        .I3(\s_result[8]_i_3_n_0 ),
        .I4(\O_dataA_reg[15] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hC000880000000000)) 
    \s_result[0]_i_2 
       (.I0(O_imm[3]),
        .I1(\s_result[8]_i_6_n_0 ),
        .I2(\pc_actuel_reg[12] [0]),
        .I3(O_aluop[4]),
        .I4(O_aluop[3]),
        .I5(O_aluop__0),
        .O(\s_result[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \s_result[0]_i_3 
       (.I0(s_result[0]),
        .I1(O_aluop[1]),
        .I2(O_aluop[3]),
        .I3(O_aluop[4]),
        .I4(O_aluop[2]),
        .O(\s_result[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0400040000000400)) 
    \s_result[0]_i_4 
       (.I0(O_aluop[3]),
        .I1(\O_dataB_reg[15] [0]),
        .I2(O_aluop[4]),
        .I3(O_aluop[2]),
        .I4(O_aluop[1]),
        .I5(\O_dataA_reg[15] [0]),
        .O(\s_result[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF80)) 
    \s_result[10]_i_1 
       (.I0(O_aluop[3]),
        .I1(O_aluop__0),
        .I2(\O_selB_reg[0]_0 [2]),
        .I3(\s_result[10]_i_2_n_0 ),
        .I4(\s_result[10]_i_3_n_0 ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h0000222200F02222)) 
    \s_result[10]_i_2 
       (.I0(s_result[10]),
        .I1(O_aluop[2]),
        .I2(O_selB[0]),
        .I3(O_aluop[3]),
        .I4(O_aluop[4]),
        .I5(O_aluop__0),
        .O(\s_result[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFCFCF5F0F0F0)) 
    \s_result[10]_i_3 
       (.I0(O_aluop[1]),
        .I1(\s_result[15]_i_11_n_0 ),
        .I2(\s_result[15]_i_12_n_0 ),
        .I3(O_aluop[2]),
        .I4(\O_dataB_reg[15] [10]),
        .I5(\O_dataA_reg[15] [10]),
        .O(\s_result[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF80)) 
    \s_result[11]_i_1 
       (.I0(O_aluop[3]),
        .I1(O_aluop__0),
        .I2(\O_selB_reg[0]_0 [3]),
        .I3(\s_result[11]_i_3_n_0 ),
        .I4(\s_result[11]_i_4_n_0 ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h0000222200F02222)) 
    \s_result[11]_i_3 
       (.I0(s_result[11]),
        .I1(O_aluop[2]),
        .I2(O_selB[1]),
        .I3(O_aluop[3]),
        .I4(O_aluop[4]),
        .I5(O_aluop__0),
        .O(\s_result[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFCFCF5F0F0F0)) 
    \s_result[11]_i_4 
       (.I0(O_aluop[1]),
        .I1(\s_result[15]_i_11_n_0 ),
        .I2(\s_result[15]_i_12_n_0 ),
        .I3(O_aluop[2]),
        .I4(\O_dataB_reg[15] [11]),
        .I5(\O_dataA_reg[15] [11]),
        .O(\s_result[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_result[11]_i_5 
       (.I0(O_selB[0]),
        .I1(\pc_actuel_reg[12] [1]),
        .O(S));
  LUT5 #(
    .INIT(32'hFFFFFF80)) 
    \s_result[12]_i_1 
       (.I0(O_aluop[3]),
        .I1(O_aluop__0),
        .I2(\pc_actuel_reg[13] [0]),
        .I3(\s_result[12]_i_2_n_0 ),
        .I4(\s_result[12]_i_3_n_0 ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'h0000222200F02222)) 
    \s_result[12]_i_2 
       (.I0(s_result[12]),
        .I1(O_aluop[2]),
        .I2(O_selB[2]),
        .I3(O_aluop[3]),
        .I4(O_aluop[4]),
        .I5(O_aluop__0),
        .O(\s_result[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFCFCF5F0F0F0)) 
    \s_result[12]_i_3 
       (.I0(O_aluop[1]),
        .I1(\s_result[15]_i_11_n_0 ),
        .I2(\s_result[15]_i_12_n_0 ),
        .I3(O_aluop[2]),
        .I4(\O_dataB_reg[15] [12]),
        .I5(\O_dataA_reg[15] [12]),
        .O(\s_result[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF80)) 
    \s_result[13]_i_1 
       (.I0(O_aluop[3]),
        .I1(O_aluop__0),
        .I2(\pc_actuel_reg[13] [1]),
        .I3(\s_result[13]_i_2_n_0 ),
        .I4(\s_result[13]_i_3_n_0 ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'h0000222200F02222)) 
    \s_result[13]_i_2 
       (.I0(s_result[13]),
        .I1(O_aluop[2]),
        .I2(O_imm[0]),
        .I3(O_aluop[3]),
        .I4(O_aluop[4]),
        .I5(O_aluop__0),
        .O(\s_result[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFCFCF5F0F0F0)) 
    \s_result[13]_i_3 
       (.I0(O_aluop[1]),
        .I1(\s_result[15]_i_11_n_0 ),
        .I2(\s_result[15]_i_12_n_0 ),
        .I3(O_aluop[2]),
        .I4(\O_dataB_reg[15] [13]),
        .I5(\O_dataA_reg[15] [13]),
        .O(\s_result[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF80)) 
    \s_result[14]_i_1 
       (.I0(O_aluop[3]),
        .I1(O_aluop__0),
        .I2(\pc_actuel_reg[13] [2]),
        .I3(\s_result[14]_i_2_n_0 ),
        .I4(\s_result[14]_i_3_n_0 ),
        .O(D[14]));
  LUT6 #(
    .INIT(64'h0000222200F02222)) 
    \s_result[14]_i_2 
       (.I0(s_result[14]),
        .I1(O_aluop[2]),
        .I2(O_imm[1]),
        .I3(O_aluop[3]),
        .I4(O_aluop[4]),
        .I5(O_aluop__0),
        .O(\s_result[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFCFCF5F0F0F0)) 
    \s_result[14]_i_3 
       (.I0(O_aluop[1]),
        .I1(\s_result[15]_i_11_n_0 ),
        .I2(\s_result[15]_i_12_n_0 ),
        .I3(O_aluop[2]),
        .I4(\O_dataB_reg[15] [14]),
        .I5(\O_dataA_reg[15] [14]),
        .O(\s_result[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF80)) 
    \s_result[15]_i_1 
       (.I0(O_aluop[3]),
        .I1(O_aluop__0),
        .I2(\pc_actuel_reg[13] [3]),
        .I3(\s_result[15]_i_3_n_0 ),
        .I4(\s_result[15]_i_4_n_0 ),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \s_result[15]_i_11 
       (.I0(O_aluop[1]),
        .I1(O_aluop[2]),
        .I2(O_aluop__0),
        .I3(O_aluop[3]),
        .O(\s_result[15]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFCAE)) 
    \s_result[15]_i_12 
       (.I0(O_aluop[1]),
        .I1(O_aluop[3]),
        .I2(O_aluop[4]),
        .I3(O_aluop[2]),
        .O(\s_result[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000222200F02222)) 
    \s_result[15]_i_3 
       (.I0(s_result[15]),
        .I1(O_aluop[2]),
        .I2(O_imm[2]),
        .I3(O_aluop[3]),
        .I4(O_aluop[4]),
        .I5(O_aluop__0),
        .O(\s_result[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFCFCF5F0F0F0)) 
    \s_result[15]_i_4 
       (.I0(O_aluop[1]),
        .I1(\s_result[15]_i_11_n_0 ),
        .I2(\s_result[15]_i_12_n_0 ),
        .I3(O_aluop[2]),
        .I4(\O_dataB_reg[15] [15]),
        .I5(\O_dataA_reg[15] [15]),
        .O(\s_result[15]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_result[15]_i_5 
       (.I0(O_selB[0]),
        .O(DI));
  LUT2 #(
    .INIT(4'h6)) 
    \s_result[15]_i_9 
       (.I0(O_selB[0]),
        .I1(\pc_actuel_reg[12] [2]),
        .O(\s_result_reg[15] ));
  LUT5 #(
    .INIT(32'hFFFFFF80)) 
    \s_result[1]_i_1 
       (.I0(O_aluop[3]),
        .I1(O_aluop__0),
        .I2(O[0]),
        .I3(\s_result[1]_i_2_n_0 ),
        .I4(\s_result[1]_i_3_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h00F0222200002222)) 
    \s_result[1]_i_2 
       (.I0(s_result[1]),
        .I1(O_aluop[2]),
        .I2(O_imm[4]),
        .I3(O_aluop[3]),
        .I4(O_aluop[4]),
        .I5(O_aluop__0),
        .O(\s_result[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFCFCF5F0F0F0)) 
    \s_result[1]_i_3 
       (.I0(O_aluop[1]),
        .I1(\s_result[15]_i_11_n_0 ),
        .I2(\s_result[15]_i_12_n_0 ),
        .I3(O_aluop[2]),
        .I4(\O_dataB_reg[15] [1]),
        .I5(\O_dataA_reg[15] [1]),
        .O(\s_result[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF80)) 
    \s_result[2]_i_1 
       (.I0(O_aluop[3]),
        .I1(O_aluop__0),
        .I2(O[1]),
        .I3(\s_result[2]_i_2_n_0 ),
        .I4(\s_result[2]_i_3_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h00F0222200002222)) 
    \s_result[2]_i_2 
       (.I0(s_result[2]),
        .I1(O_aluop[2]),
        .I2(O_selB[0]),
        .I3(O_aluop[3]),
        .I4(O_aluop[4]),
        .I5(O_aluop__0),
        .O(\s_result[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFCFCF5F0F0F0)) 
    \s_result[2]_i_3 
       (.I0(O_aluop[1]),
        .I1(\s_result[15]_i_11_n_0 ),
        .I2(\s_result[15]_i_12_n_0 ),
        .I3(O_aluop[2]),
        .I4(\O_dataB_reg[15] [2]),
        .I5(\O_dataA_reg[15] [2]),
        .O(\s_result[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF80)) 
    \s_result[3]_i_1 
       (.I0(O_aluop[3]),
        .I1(O_aluop__0),
        .I2(O[2]),
        .I3(\s_result[3]_i_3_n_0 ),
        .I4(\s_result[3]_i_4_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h00F0222200002222)) 
    \s_result[3]_i_3 
       (.I0(s_result[3]),
        .I1(O_aluop[2]),
        .I2(O_selB[1]),
        .I3(O_aluop[3]),
        .I4(O_aluop[4]),
        .I5(O_aluop__0),
        .O(\s_result[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFCFCF5F0F0F0)) 
    \s_result[3]_i_4 
       (.I0(O_aluop[1]),
        .I1(\s_result[15]_i_11_n_0 ),
        .I2(\s_result[15]_i_12_n_0 ),
        .I3(O_aluop[2]),
        .I4(\O_dataB_reg[15] [3]),
        .I5(\O_dataA_reg[15] [3]),
        .O(\s_result[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF80)) 
    \s_result[4]_i_1 
       (.I0(O_aluop[3]),
        .I1(O_aluop__0),
        .I2(\pc_actuel_reg[7] [0]),
        .I3(\s_result[4]_i_2_n_0 ),
        .I4(\s_result[4]_i_3_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h00F0222200002222)) 
    \s_result[4]_i_2 
       (.I0(s_result[4]),
        .I1(O_aluop[2]),
        .I2(O_selB[2]),
        .I3(O_aluop[3]),
        .I4(O_aluop[4]),
        .I5(O_aluop__0),
        .O(\s_result[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFCFCF5F0F0F0)) 
    \s_result[4]_i_3 
       (.I0(O_aluop[1]),
        .I1(\s_result[15]_i_11_n_0 ),
        .I2(\s_result[15]_i_12_n_0 ),
        .I3(O_aluop[2]),
        .I4(\O_dataB_reg[15] [4]),
        .I5(\O_dataA_reg[15] [4]),
        .O(\s_result[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF80)) 
    \s_result[5]_i_1 
       (.I0(O_aluop[3]),
        .I1(O_aluop__0),
        .I2(\pc_actuel_reg[7] [1]),
        .I3(\s_result[5]_i_2_n_0 ),
        .I4(\s_result[5]_i_3_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h00F0222200002222)) 
    \s_result[5]_i_2 
       (.I0(s_result[5]),
        .I1(O_aluop[2]),
        .I2(O_imm[0]),
        .I3(O_aluop[3]),
        .I4(O_aluop[4]),
        .I5(O_aluop__0),
        .O(\s_result[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFCFCF5F0F0F0)) 
    \s_result[5]_i_3 
       (.I0(O_aluop[1]),
        .I1(\s_result[15]_i_11_n_0 ),
        .I2(\s_result[15]_i_12_n_0 ),
        .I3(O_aluop[2]),
        .I4(\O_dataB_reg[15] [5]),
        .I5(\O_dataA_reg[15] [5]),
        .O(\s_result[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF80)) 
    \s_result[6]_i_1 
       (.I0(O_aluop[3]),
        .I1(O_aluop__0),
        .I2(\pc_actuel_reg[7] [2]),
        .I3(\s_result[6]_i_2_n_0 ),
        .I4(\s_result[6]_i_3_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h00F0222200002222)) 
    \s_result[6]_i_2 
       (.I0(s_result[6]),
        .I1(O_aluop[2]),
        .I2(O_imm[1]),
        .I3(O_aluop[3]),
        .I4(O_aluop[4]),
        .I5(O_aluop__0),
        .O(\s_result[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFCFCF5F0F0F0)) 
    \s_result[6]_i_3 
       (.I0(O_aluop[1]),
        .I1(\s_result[15]_i_11_n_0 ),
        .I2(\s_result[15]_i_12_n_0 ),
        .I3(O_aluop[2]),
        .I4(\O_dataB_reg[15] [6]),
        .I5(\O_dataA_reg[15] [6]),
        .O(\s_result[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF80)) 
    \s_result[7]_i_1 
       (.I0(O_aluop[3]),
        .I1(O_aluop__0),
        .I2(\pc_actuel_reg[7] [3]),
        .I3(\s_result[7]_i_3_n_0 ),
        .I4(\s_result[7]_i_4_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h00F0222200002222)) 
    \s_result[7]_i_3 
       (.I0(s_result[7]),
        .I1(O_aluop[2]),
        .I2(O_imm[2]),
        .I3(O_aluop[3]),
        .I4(O_aluop[4]),
        .I5(O_aluop__0),
        .O(\s_result[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFCFCF5F0F0F0)) 
    \s_result[7]_i_4 
       (.I0(O_aluop[1]),
        .I1(\s_result[15]_i_11_n_0 ),
        .I2(\s_result[15]_i_12_n_0 ),
        .I3(O_aluop[2]),
        .I4(\O_dataB_reg[15] [7]),
        .I5(\O_dataA_reg[15] [7]),
        .O(\s_result[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    \s_result[8]_i_1 
       (.I0(\s_result[8]_i_2_n_0 ),
        .I1(\O_dataA_reg[15] [8]),
        .I2(\s_result[8]_i_3_n_0 ),
        .I3(\s_result[8]_i_4_n_0 ),
        .I4(\s_result[8]_i_5_n_0 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hC000000000008080)) 
    \s_result[8]_i_2 
       (.I0(O_imm[3]),
        .I1(\s_result[8]_i_6_n_0 ),
        .I2(O_aluop[4]),
        .I3(\O_selB_reg[0]_0 [0]),
        .I4(O_aluop[3]),
        .I5(O_aluop__0),
        .O(\s_result[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0100000C)) 
    \s_result[8]_i_3 
       (.I0(O_aluop__0),
        .I1(O_aluop[2]),
        .I2(O_aluop[1]),
        .I3(O_aluop[3]),
        .I4(O_aluop[4]),
        .O(\s_result[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0400040000000400)) 
    \s_result[8]_i_4 
       (.I0(O_aluop[3]),
        .I1(\O_dataB_reg[15] [8]),
        .I2(O_aluop[4]),
        .I3(O_aluop[2]),
        .I4(O_aluop[1]),
        .I5(\O_dataA_reg[15] [8]),
        .O(\s_result[8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \s_result[8]_i_5 
       (.I0(s_result[8]),
        .I1(O_aluop[1]),
        .I2(O_aluop[3]),
        .I3(O_aluop[4]),
        .I4(O_aluop[2]),
        .O(\s_result[8]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \s_result[8]_i_6 
       (.I0(O_aluop[1]),
        .I1(O_aluop[2]),
        .O(\s_result[8]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF80)) 
    \s_result[9]_i_1 
       (.I0(O_aluop[3]),
        .I1(O_aluop__0),
        .I2(\O_selB_reg[0]_0 [1]),
        .I3(\s_result[9]_i_2_n_0 ),
        .I4(\s_result[9]_i_3_n_0 ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h0000222200F02222)) 
    \s_result[9]_i_2 
       (.I0(s_result[9]),
        .I1(O_aluop[2]),
        .I2(O_imm[4]),
        .I3(O_aluop[3]),
        .I4(O_aluop[4]),
        .I5(O_aluop__0),
        .O(\s_result[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFCFCF5F0F0F0)) 
    \s_result[9]_i_3 
       (.I0(O_aluop[1]),
        .I1(\s_result[15]_i_11_n_0 ),
        .I2(\s_result[15]_i_12_n_0 ),
        .I3(O_aluop[2]),
        .I4(\O_dataB_reg[15] [9]),
        .I5(\O_dataA_reg[15] [9]),
        .O(\s_result[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFBFB00004000)) 
    s_shouldBranch_i_1
       (.I0(O_aluop[1]),
        .I1(Q[1]),
        .I2(O_aluop[3]),
        .I3(O_aluop[4]),
        .I4(O_aluop[2]),
        .I5(O_shouldBranch),
        .O(s_shouldBranch_reg));
endmodule

module program_counter
   (O,
    Q,
    \s_result_reg[7] ,
    \s_result_reg[11] ,
    \s_result_reg[15] ,
    plusOp,
    O_selB,
    S,
    DI,
    \O_selB_reg[0] ,
    O_imm,
    E,
    D,
    dividedClock_BUFG);
  output [2:0]O;
  output [4:0]Q;
  output [3:0]\s_result_reg[7] ;
  output [3:0]\s_result_reg[11] ;
  output [3:0]\s_result_reg[15] ;
  output [14:0]plusOp;
  input [2:0]O_selB;
  input [0:0]S;
  input [0:0]DI;
  input [0:0]\O_selB_reg[0] ;
  input [4:0]O_imm;
  input [0:0]E;
  input [15:0]D;
  input dividedClock_BUFG;

  wire [15:0]D;
  wire [0:0]DI;
  wire [0:0]E;
  wire [2:0]O;
  wire [4:0]O_imm;
  wire [2:0]O_selB;
  wire [0:0]\O_selB_reg[0] ;
  wire [4:0]Q;
  wire [0:0]S;
  wire dividedClock_BUFG;
  wire \pc_actuel_reg[12]_i_2_n_0 ;
  wire \pc_actuel_reg[4]_i_2_n_0 ;
  wire \pc_actuel_reg[8]_i_2_n_0 ;
  wire \pc_actuel_reg_n_0_[10] ;
  wire \pc_actuel_reg_n_0_[13] ;
  wire \pc_actuel_reg_n_0_[14] ;
  wire \pc_actuel_reg_n_0_[15] ;
  wire \pc_actuel_reg_n_0_[3] ;
  wire \pc_actuel_reg_n_0_[4] ;
  wire \pc_actuel_reg_n_0_[5] ;
  wire \pc_actuel_reg_n_0_[6] ;
  wire \pc_actuel_reg_n_0_[7] ;
  wire \pc_actuel_reg_n_0_[8] ;
  wire \pc_actuel_reg_n_0_[9] ;
  wire [14:0]plusOp;
  wire \s_result[11]_i_6_n_0 ;
  wire \s_result[11]_i_7_n_0 ;
  wire \s_result[11]_i_8_n_0 ;
  wire \s_result[15]_i_6_n_0 ;
  wire \s_result[15]_i_7_n_0 ;
  wire \s_result[15]_i_8_n_0 ;
  wire \s_result[3]_i_5_n_0 ;
  wire \s_result[3]_i_6_n_0 ;
  wire \s_result[3]_i_7_n_0 ;
  wire \s_result[7]_i_5_n_0 ;
  wire \s_result[7]_i_6_n_0 ;
  wire \s_result[7]_i_7_n_0 ;
  wire \s_result[7]_i_8_n_0 ;
  wire [3:0]\s_result_reg[11] ;
  wire \s_result_reg[11]_i_2_n_0 ;
  wire [3:0]\s_result_reg[15] ;
  wire \s_result_reg[3]_i_2_n_0 ;
  wire [3:0]\s_result_reg[7] ;
  wire \s_result_reg[7]_i_2_n_0 ;
  wire [2:0]\NLW_pc_actuel_reg[12]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_pc_actuel_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_pc_actuel_reg[15]_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_pc_actuel_reg[4]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_pc_actuel_reg[8]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_s_result_reg[11]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_s_result_reg[15]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_s_result_reg[3]_i_2_CO_UNCONNECTED ;
  wire [0:0]\NLW_s_result_reg[3]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_s_result_reg[7]_i_2_CO_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    \pc_actuel_reg[0] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_actuel_reg[10] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(D[10]),
        .Q(\pc_actuel_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_actuel_reg[11] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(D[11]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_actuel_reg[12] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(D[12]),
        .Q(Q[4]),
        .R(1'b0));
  CARRY4 \pc_actuel_reg[12]_i_2 
       (.CI(\pc_actuel_reg[8]_i_2_n_0 ),
        .CO({\pc_actuel_reg[12]_i_2_n_0 ,\NLW_pc_actuel_reg[12]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[11:8]),
        .S({Q[4:3],\pc_actuel_reg_n_0_[10] ,\pc_actuel_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \pc_actuel_reg[13] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(D[13]),
        .Q(\pc_actuel_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_actuel_reg[14] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(D[14]),
        .Q(\pc_actuel_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_actuel_reg[15] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(D[15]),
        .Q(\pc_actuel_reg_n_0_[15] ),
        .R(1'b0));
  CARRY4 \pc_actuel_reg[15]_i_3 
       (.CI(\pc_actuel_reg[12]_i_2_n_0 ),
        .CO(\NLW_pc_actuel_reg[15]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_pc_actuel_reg[15]_i_3_O_UNCONNECTED [3],plusOp[14:12]}),
        .S({1'b0,\pc_actuel_reg_n_0_[15] ,\pc_actuel_reg_n_0_[14] ,\pc_actuel_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \pc_actuel_reg[1] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_actuel_reg[2] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_actuel_reg[3] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(D[3]),
        .Q(\pc_actuel_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_actuel_reg[4] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(D[4]),
        .Q(\pc_actuel_reg_n_0_[4] ),
        .R(1'b0));
  CARRY4 \pc_actuel_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\pc_actuel_reg[4]_i_2_n_0 ,\NLW_pc_actuel_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(Q[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[3:0]),
        .S({\pc_actuel_reg_n_0_[4] ,\pc_actuel_reg_n_0_[3] ,Q[2:1]}));
  FDRE #(
    .INIT(1'b0)) 
    \pc_actuel_reg[5] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(D[5]),
        .Q(\pc_actuel_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_actuel_reg[6] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(D[6]),
        .Q(\pc_actuel_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_actuel_reg[7] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(D[7]),
        .Q(\pc_actuel_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_actuel_reg[8] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(D[8]),
        .Q(\pc_actuel_reg_n_0_[8] ),
        .R(1'b0));
  CARRY4 \pc_actuel_reg[8]_i_2 
       (.CI(\pc_actuel_reg[4]_i_2_n_0 ),
        .CO({\pc_actuel_reg[8]_i_2_n_0 ,\NLW_pc_actuel_reg[8]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[7:4]),
        .S({\pc_actuel_reg_n_0_[8] ,\pc_actuel_reg_n_0_[7] ,\pc_actuel_reg_n_0_[6] ,\pc_actuel_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \pc_actuel_reg[9] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(D[9]),
        .Q(\pc_actuel_reg_n_0_[9] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \s_result[11]_i_6 
       (.I0(\pc_actuel_reg_n_0_[10] ),
        .I1(O_imm[4]),
        .O(\s_result[11]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_result[11]_i_7 
       (.I0(\pc_actuel_reg_n_0_[9] ),
        .I1(O_imm[3]),
        .O(\s_result[11]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_result[11]_i_8 
       (.I0(\pc_actuel_reg_n_0_[8] ),
        .I1(O_imm[2]),
        .O(\s_result[11]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_result[15]_i_6 
       (.I0(\pc_actuel_reg_n_0_[14] ),
        .I1(\pc_actuel_reg_n_0_[15] ),
        .O(\s_result[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_result[15]_i_7 
       (.I0(\pc_actuel_reg_n_0_[13] ),
        .I1(\pc_actuel_reg_n_0_[14] ),
        .O(\s_result[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_result[15]_i_8 
       (.I0(Q[4]),
        .I1(\pc_actuel_reg_n_0_[13] ),
        .O(\s_result[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_result[3]_i_5 
       (.I0(\pc_actuel_reg_n_0_[3] ),
        .I1(O_selB[0]),
        .O(\s_result[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_result[3]_i_6 
       (.I0(Q[2]),
        .I1(O_imm[4]),
        .O(\s_result[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_result[3]_i_7 
       (.I0(Q[1]),
        .I1(O_imm[3]),
        .O(\s_result[3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_result[7]_i_5 
       (.I0(\pc_actuel_reg_n_0_[7] ),
        .I1(O_imm[1]),
        .O(\s_result[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_result[7]_i_6 
       (.I0(\pc_actuel_reg_n_0_[6] ),
        .I1(O_imm[0]),
        .O(\s_result[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_result[7]_i_7 
       (.I0(\pc_actuel_reg_n_0_[5] ),
        .I1(O_selB[2]),
        .O(\s_result[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_result[7]_i_8 
       (.I0(\pc_actuel_reg_n_0_[4] ),
        .I1(O_selB[1]),
        .O(\s_result[7]_i_8_n_0 ));
  CARRY4 \s_result_reg[11]_i_2 
       (.CI(\s_result_reg[7]_i_2_n_0 ),
        .CO({\s_result_reg[11]_i_2_n_0 ,\NLW_s_result_reg[11]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({O_selB[0],\pc_actuel_reg_n_0_[10] ,\pc_actuel_reg_n_0_[9] ,\pc_actuel_reg_n_0_[8] }),
        .O(\s_result_reg[11] ),
        .S({S,\s_result[11]_i_6_n_0 ,\s_result[11]_i_7_n_0 ,\s_result[11]_i_8_n_0 }));
  CARRY4 \s_result_reg[15]_i_2 
       (.CI(\s_result_reg[11]_i_2_n_0 ),
        .CO(\NLW_s_result_reg[15]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\pc_actuel_reg_n_0_[13] ,Q[4],DI}),
        .O(\s_result_reg[15] ),
        .S({\s_result[15]_i_6_n_0 ,\s_result[15]_i_7_n_0 ,\s_result[15]_i_8_n_0 ,\O_selB_reg[0] }));
  CARRY4 \s_result_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\s_result_reg[3]_i_2_n_0 ,\NLW_s_result_reg[3]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\pc_actuel_reg_n_0_[3] ,Q[2:1],1'b0}),
        .O({O,\NLW_s_result_reg[3]_i_2_O_UNCONNECTED [0]}),
        .S({\s_result[3]_i_5_n_0 ,\s_result[3]_i_6_n_0 ,\s_result[3]_i_7_n_0 ,Q[0]}));
  CARRY4 \s_result_reg[7]_i_2 
       (.CI(\s_result_reg[3]_i_2_n_0 ),
        .CO({\s_result_reg[7]_i_2_n_0 ,\NLW_s_result_reg[7]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\pc_actuel_reg_n_0_[7] ,\pc_actuel_reg_n_0_[6] ,\pc_actuel_reg_n_0_[5] ,\pc_actuel_reg_n_0_[4] }),
        .O(\s_result_reg[7] ),
        .S({\s_result[7]_i_5_n_0 ,\s_result[7]_i_6_n_0 ,\s_result[7]_i_7_n_0 ,\s_result[7]_i_8_n_0 }));
endmodule

module ram16
   (O_regDwe_reg,
    O_data,
    dividedClock_BUFG,
    Q);
  output O_regDwe_reg;
  output [15:0]O_data;
  input dividedClock_BUFG;
  input [2:0]Q;

  wire [15:0]O_data;
  wire O_regDwe_reg;
  wire [2:0]Q;
  wire dividedClock_BUFG;
  wire [15:0]p_1_out;

  FDRE #(
    .INIT(1'b0)) 
    \O_data_reg[0] 
       (.C(dividedClock_BUFG),
        .CE(1'b1),
        .D(p_1_out[0]),
        .Q(O_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_data_reg[10] 
       (.C(dividedClock_BUFG),
        .CE(1'b1),
        .D(p_1_out[10]),
        .Q(O_data[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_data_reg[11] 
       (.C(dividedClock_BUFG),
        .CE(1'b1),
        .D(p_1_out[11]),
        .Q(O_data[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_data_reg[12] 
       (.C(dividedClock_BUFG),
        .CE(1'b1),
        .D(p_1_out[12]),
        .Q(O_data[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_data_reg[13] 
       (.C(dividedClock_BUFG),
        .CE(1'b1),
        .D(p_1_out[13]),
        .Q(O_data[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_data_reg[14] 
       (.C(dividedClock_BUFG),
        .CE(1'b1),
        .D(p_1_out[14]),
        .Q(O_data[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_data_reg[15] 
       (.C(dividedClock_BUFG),
        .CE(1'b1),
        .D(p_1_out[15]),
        .Q(O_data[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_data_reg[1] 
       (.C(dividedClock_BUFG),
        .CE(1'b1),
        .D(p_1_out[1]),
        .Q(O_data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_data_reg[2] 
       (.C(dividedClock_BUFG),
        .CE(1'b1),
        .D(p_1_out[2]),
        .Q(O_data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_data_reg[3] 
       (.C(dividedClock_BUFG),
        .CE(1'b1),
        .D(p_1_out[3]),
        .Q(O_data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_data_reg[4] 
       (.C(dividedClock_BUFG),
        .CE(1'b1),
        .D(p_1_out[4]),
        .Q(O_data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_data_reg[5] 
       (.C(dividedClock_BUFG),
        .CE(1'b1),
        .D(p_1_out[5]),
        .Q(O_data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_data_reg[6] 
       (.C(dividedClock_BUFG),
        .CE(1'b1),
        .D(p_1_out[6]),
        .Q(O_data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_data_reg[7] 
       (.C(dividedClock_BUFG),
        .CE(1'b1),
        .D(p_1_out[7]),
        .Q(O_data[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_data_reg[8] 
       (.C(dividedClock_BUFG),
        .CE(1'b1),
        .D(p_1_out[8]),
        .Q(O_data[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_data_reg[9] 
       (.C(dividedClock_BUFG),
        .CE(1'b1),
        .D(p_1_out[9]),
        .Q(O_data[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h9FDF)) 
    O_regDwe_i_1
       (.I0(O_data[15]),
        .I1(O_data[13]),
        .I2(O_data[14]),
        .I3(O_data[12]),
        .O(O_regDwe_reg));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h0000008A)) 
    ram_16_reg_0_7_0_0
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(1'b1),
        .O(p_1_out[0]),
        .WCLK(dividedClock_BUFG),
        .WE(1'b0));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h0000002C)) 
    ram_16_reg_0_7_10_10
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(1'b1),
        .O(p_1_out[10]),
        .WCLK(dividedClock_BUFG),
        .WE(1'b0));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000050)) 
    ram_16_reg_0_7_11_11
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(1'b1),
        .O(p_1_out[11]),
        .WCLK(dividedClock_BUFG),
        .WE(1'b0));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_16_reg_0_7_12_12
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(1'b1),
        .O(p_1_out[12]),
        .WCLK(dividedClock_BUFG),
        .WE(1'b0));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000044)) 
    ram_16_reg_0_7_13_13
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(1'b1),
        .O(p_1_out[13]),
        .WCLK(dividedClock_BUFG),
        .WE(1'b0));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000080)) 
    ram_16_reg_0_7_14_14
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(1'b1),
        .O(p_1_out[14]),
        .WCLK(dividedClock_BUFG),
        .WE(1'b0));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h0000009B)) 
    ram_16_reg_0_7_15_15
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(1'b1),
        .O(p_1_out[15]),
        .WCLK(dividedClock_BUFG),
        .WE(1'b0));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000011)) 
    ram_16_reg_0_7_1_1
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(1'b1),
        .O(p_1_out[1]),
        .WCLK(dividedClock_BUFG),
        .WE(1'b0));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h000000C7)) 
    ram_16_reg_0_7_2_2
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(1'b1),
        .O(p_1_out[2]),
        .WCLK(dividedClock_BUFG),
        .WE(1'b0));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000043)) 
    ram_16_reg_0_7_3_3
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(1'b1),
        .O(p_1_out[3]),
        .WCLK(dividedClock_BUFG),
        .WE(1'b0));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000021)) 
    ram_16_reg_0_7_4_4
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(1'b1),
        .O(p_1_out[4]),
        .WCLK(dividedClock_BUFG),
        .WE(1'b0));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000023)) 
    ram_16_reg_0_7_5_5
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(1'b1),
        .O(p_1_out[5]),
        .WCLK(dividedClock_BUFG),
        .WE(1'b0));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000023)) 
    ram_16_reg_0_7_6_6
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(1'b1),
        .O(p_1_out[6]),
        .WCLK(dividedClock_BUFG),
        .WE(1'b0));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000003)) 
    ram_16_reg_0_7_7_7
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(1'b1),
        .O(p_1_out[7]),
        .WCLK(dividedClock_BUFG),
        .WE(1'b0));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h0000009A)) 
    ram_16_reg_0_7_8_8
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(1'b1),
        .O(p_1_out[8]),
        .WCLK(dividedClock_BUFG),
        .WE(1'b0));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h0000006A)) 
    ram_16_reg_0_7_9_9
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(1'b1),
        .O(p_1_out[9]),
        .WCLK(dividedClock_BUFG),
        .WE(1'b0));
endmodule

module reg16_8
   (O_dataA,
    O_dataB,
    E,
    dividedClock_BUFG,
    p_0_in,
    I_dataD,
    O_selB,
    \O_selD_reg[2] ,
    O_imm);
  output [15:0]O_dataA;
  output [15:0]O_dataB;
  input [0:0]E;
  input dividedClock_BUFG;
  input p_0_in;
  input [15:0]I_dataD;
  input [2:0]O_selB;
  input [2:0]\O_selD_reg[2] ;
  input [2:0]O_imm;

  wire [0:0]E;
  wire [15:0]I_dataD;
  wire [15:0]O_dataA;
  wire [15:0]O_dataA0;
  wire [15:0]O_dataB;
  wire [15:0]O_dataB0;
  wire [2:0]O_imm;
  wire [2:0]O_selB;
  wire [2:0]\O_selD_reg[2] ;
  wire dividedClock_BUFG;
  wire p_0_in;
  wire [1:0]NLW_regs_reg_r1_0_7_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r1_0_7_12_15_DOC_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r1_0_7_12_15_DOD_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r1_0_7_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r2_0_7_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r2_0_7_12_15_DOC_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r2_0_7_12_15_DOD_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r2_0_7_6_11_DOD_UNCONNECTED;

  FDRE #(
    .INIT(1'b0)) 
    \O_dataA_reg[0] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(O_dataA0[0]),
        .Q(O_dataA[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_dataA_reg[10] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(O_dataA0[10]),
        .Q(O_dataA[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_dataA_reg[11] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(O_dataA0[11]),
        .Q(O_dataA[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_dataA_reg[12] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(O_dataA0[12]),
        .Q(O_dataA[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_dataA_reg[13] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(O_dataA0[13]),
        .Q(O_dataA[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_dataA_reg[14] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(O_dataA0[14]),
        .Q(O_dataA[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_dataA_reg[15] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(O_dataA0[15]),
        .Q(O_dataA[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_dataA_reg[1] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(O_dataA0[1]),
        .Q(O_dataA[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_dataA_reg[2] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(O_dataA0[2]),
        .Q(O_dataA[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_dataA_reg[3] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(O_dataA0[3]),
        .Q(O_dataA[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_dataA_reg[4] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(O_dataA0[4]),
        .Q(O_dataA[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_dataA_reg[5] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(O_dataA0[5]),
        .Q(O_dataA[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_dataA_reg[6] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(O_dataA0[6]),
        .Q(O_dataA[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_dataA_reg[7] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(O_dataA0[7]),
        .Q(O_dataA[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_dataA_reg[8] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(O_dataA0[8]),
        .Q(O_dataA[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_dataA_reg[9] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(O_dataA0[9]),
        .Q(O_dataA[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_dataB_reg[0] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(O_dataB0[0]),
        .Q(O_dataB[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_dataB_reg[10] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(O_dataB0[10]),
        .Q(O_dataB[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_dataB_reg[11] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(O_dataB0[11]),
        .Q(O_dataB[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_dataB_reg[12] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(O_dataB0[12]),
        .Q(O_dataB[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_dataB_reg[13] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(O_dataB0[13]),
        .Q(O_dataB[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_dataB_reg[14] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(O_dataB0[14]),
        .Q(O_dataB[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_dataB_reg[15] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(O_dataB0[15]),
        .Q(O_dataB[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_dataB_reg[1] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(O_dataB0[1]),
        .Q(O_dataB[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_dataB_reg[2] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(O_dataB0[2]),
        .Q(O_dataB[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_dataB_reg[3] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(O_dataB0[3]),
        .Q(O_dataB[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_dataB_reg[4] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(O_dataB0[4]),
        .Q(O_dataB[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_dataB_reg[5] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(O_dataB0[5]),
        .Q(O_dataB[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_dataB_reg[6] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(O_dataB0[6]),
        .Q(O_dataB[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_dataB_reg[7] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(O_dataB0[7]),
        .Q(O_dataB[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_dataB_reg[8] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(O_dataB0[8]),
        .Q(O_dataB[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \O_dataB_reg[9] 
       (.C(dividedClock_BUFG),
        .CE(E),
        .D(O_dataB0[9]),
        .Q(O_dataB[9]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    regs_reg_r1_0_7_0_5
       (.ADDRA({1'b0,1'b0,O_selB}),
        .ADDRB({1'b0,1'b0,O_selB}),
        .ADDRC({1'b0,1'b0,O_selB}),
        .ADDRD({1'b0,1'b0,\O_selD_reg[2] }),
        .DIA(I_dataD[1:0]),
        .DIB(I_dataD[3:2]),
        .DIC(I_dataD[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(O_dataB0[1:0]),
        .DOB(O_dataB0[3:2]),
        .DOC(O_dataB0[5:4]),
        .DOD(NLW_regs_reg_r1_0_7_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(dividedClock_BUFG),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    regs_reg_r1_0_7_12_15
       (.ADDRA({1'b0,1'b0,O_selB}),
        .ADDRB({1'b0,1'b0,O_selB}),
        .ADDRC({1'b0,1'b0,O_selB}),
        .ADDRD({1'b0,1'b0,\O_selD_reg[2] }),
        .DIA(I_dataD[13:12]),
        .DIB(I_dataD[15:14]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(O_dataB0[13:12]),
        .DOB(O_dataB0[15:14]),
        .DOC(NLW_regs_reg_r1_0_7_12_15_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_regs_reg_r1_0_7_12_15_DOD_UNCONNECTED[1:0]),
        .WCLK(dividedClock_BUFG),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    regs_reg_r1_0_7_6_11
       (.ADDRA({1'b0,1'b0,O_selB}),
        .ADDRB({1'b0,1'b0,O_selB}),
        .ADDRC({1'b0,1'b0,O_selB}),
        .ADDRD({1'b0,1'b0,\O_selD_reg[2] }),
        .DIA(I_dataD[7:6]),
        .DIB(I_dataD[9:8]),
        .DIC(I_dataD[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(O_dataB0[7:6]),
        .DOB(O_dataB0[9:8]),
        .DOC(O_dataB0[11:10]),
        .DOD(NLW_regs_reg_r1_0_7_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(dividedClock_BUFG),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    regs_reg_r2_0_7_0_5
       (.ADDRA({1'b0,1'b0,O_imm}),
        .ADDRB({1'b0,1'b0,O_imm}),
        .ADDRC({1'b0,1'b0,O_imm}),
        .ADDRD({1'b0,1'b0,\O_selD_reg[2] }),
        .DIA(I_dataD[1:0]),
        .DIB(I_dataD[3:2]),
        .DIC(I_dataD[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(O_dataA0[1:0]),
        .DOB(O_dataA0[3:2]),
        .DOC(O_dataA0[5:4]),
        .DOD(NLW_regs_reg_r2_0_7_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(dividedClock_BUFG),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    regs_reg_r2_0_7_12_15
       (.ADDRA({1'b0,1'b0,O_imm}),
        .ADDRB({1'b0,1'b0,O_imm}),
        .ADDRC({1'b0,1'b0,O_imm}),
        .ADDRD({1'b0,1'b0,\O_selD_reg[2] }),
        .DIA(I_dataD[13:12]),
        .DIB(I_dataD[15:14]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(O_dataA0[13:12]),
        .DOB(O_dataA0[15:14]),
        .DOC(NLW_regs_reg_r2_0_7_12_15_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_regs_reg_r2_0_7_12_15_DOD_UNCONNECTED[1:0]),
        .WCLK(dividedClock_BUFG),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    regs_reg_r2_0_7_6_11
       (.ADDRA({1'b0,1'b0,O_imm}),
        .ADDRB({1'b0,1'b0,O_imm}),
        .ADDRC({1'b0,1'b0,O_imm}),
        .ADDRD({1'b0,1'b0,\O_selD_reg[2] }),
        .DIA(I_dataD[7:6]),
        .DIB(I_dataD[9:8]),
        .DIC(I_dataD[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(O_dataA0[7:6]),
        .DOB(O_dataA0[9:8]),
        .DOC(O_dataA0[11:10]),
        .DOD(NLW_regs_reg_r2_0_7_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(dividedClock_BUFG),
        .WE(p_0_in));
endmodule

(* ECO_CHECKSUM = "23e3e709" *) 
(* NotValidForBitStream *)
module topmodule
   (I_clk,
    I_switch,
    O_leds);
  input I_clk;
  input [3:0]I_switch;
  output [7:0]O_leds;

  wire I_clk;
  wire I_clk_IBUF;
  wire I_clk_IBUF_BUFG;
  wire [15:0]I_dataA;
  wire [15:0]I_dataB;
  wire I_en;
  wire [0:0]\^I_switch ;
  wire \I_switch[1] ;
  wire \I_switch[1]_IBUF ;
  wire \I_switch[2] ;
  wire \I_switch[2]_IBUF ;
  wire \I_switch[3] ;
  wire \I_switch[3]_IBUF ;
  wire [9:5]O_imm;
  wire [7:0]O_leds;
  wire [7:0]O_leds_OBUF;
  wire [2:0]O_pc;
  wire O_regDwe;
  wire [2:0]O_selB;
  wire [2:0]O_selD;
  wire O_shouldBranch;
  wire [15:0]dataReadRam;
  wire dec_n_10;
  wire dec_n_11;
  wire dec_n_12;
  wire dec_n_13;
  wire dec_n_14;
  wire dec_n_15;
  wire dec_n_16;
  wire dec_n_17;
  wire dec_n_18;
  wire dec_n_19;
  wire dec_n_20;
  wire dec_n_21;
  wire dec_n_22;
  wire dec_n_23;
  wire dec_n_24;
  wire dec_n_25;
  wire dec_n_26;
  wire dec_n_27;
  wire dec_n_28;
  wire dec_n_9;
  wire dividedClock;
  wire dividedClock_BUFG;
  wire [15:0]pcIn;
  wire [15:1]plusOp;
  wire [4:0]state;
  wire uut_alu_n_1;
  wire uut_alu_n_10;
  wire uut_alu_n_11;
  wire uut_alu_n_12;
  wire uut_alu_n_13;
  wire uut_alu_n_14;
  wire uut_alu_n_15;
  wire uut_alu_n_16;
  wire uut_alu_n_2;
  wire uut_alu_n_3;
  wire uut_alu_n_33;
  wire uut_alu_n_34;
  wire uut_alu_n_35;
  wire uut_alu_n_36;
  wire uut_alu_n_37;
  wire uut_alu_n_38;
  wire uut_alu_n_39;
  wire uut_alu_n_4;
  wire uut_alu_n_40;
  wire uut_alu_n_41;
  wire uut_alu_n_42;
  wire uut_alu_n_43;
  wire uut_alu_n_44;
  wire uut_alu_n_45;
  wire uut_alu_n_46;
  wire uut_alu_n_47;
  wire uut_alu_n_48;
  wire uut_alu_n_49;
  wire uut_alu_n_5;
  wire uut_alu_n_6;
  wire uut_alu_n_7;
  wire uut_alu_n_8;
  wire uut_alu_n_9;
  wire uut_controlunit_n_5;
  wire uut_pc_n_0;
  wire uut_pc_n_1;
  wire uut_pc_n_10;
  wire uut_pc_n_11;
  wire uut_pc_n_12;
  wire uut_pc_n_13;
  wire uut_pc_n_14;
  wire uut_pc_n_15;
  wire uut_pc_n_16;
  wire uut_pc_n_17;
  wire uut_pc_n_18;
  wire uut_pc_n_19;
  wire uut_pc_n_2;
  wire uut_pc_n_3;
  wire uut_pc_n_4;
  wire uut_pc_n_8;
  wire uut_pc_n_9;
  wire uut_ram16_n_0;

  assign \I_switch[1]  = I_switch[1];
  assign \I_switch[2]  = I_switch[2];
  assign \I_switch[3]  = I_switch[3];
  assign \^I_switch [0] = I_switch[0];
  BUFG I_clk_IBUF_BUFG_inst
       (.I(I_clk_IBUF),
        .O(I_clk_IBUF_BUFG));
  IBUF I_clk_IBUF_inst
       (.I(I_clk),
        .O(I_clk_IBUF));
  (* OPT_INSERTED *) 
  IBUF \I_switch[1]_IBUF_inst 
       (.I(\I_switch[1] ),
        .O(\I_switch[1]_IBUF ));
  (* OPT_INSERTED *) 
  IBUF \I_switch[2]_IBUF_inst 
       (.I(\I_switch[2] ),
        .O(\I_switch[2]_IBUF ));
  (* OPT_INSERTED *) 
  IBUF \I_switch[3]_IBUF_inst 
       (.I(\I_switch[3] ),
        .O(\I_switch[3]_IBUF ));
  IBUF \I_switch_IBUF[0]_inst 
       (.I(\^I_switch ),
        .O(O_leds_OBUF[0]));
  OBUF \O_leds_OBUF[0]_inst 
       (.I(O_leds_OBUF[0]),
        .O(O_leds[0]));
  OBUF \O_leds_OBUF[1]_inst 
       (.I(O_leds_OBUF[1]),
        .O(O_leds[1]));
  OBUF \O_leds_OBUF[2]_inst 
       (.I(O_leds_OBUF[2]),
        .O(O_leds[2]));
  OBUF \O_leds_OBUF[3]_inst 
       (.I(O_leds_OBUF[3]),
        .O(O_leds[3]));
  OBUF \O_leds_OBUF[4]_inst 
       (.I(O_leds_OBUF[4]),
        .O(O_leds[4]));
  OBUF \O_leds_OBUF[5]_inst 
       (.I(O_leds_OBUF[5]),
        .O(O_leds[5]));
  OBUF \O_leds_OBUF[6]_inst 
       (.I(O_leds_OBUF[6]),
        .O(O_leds[6]));
  OBUF \O_leds_OBUF[7]_inst 
       (.I(O_leds_OBUF[7]),
        .O(O_leds[7]));
  decoder dec
       (.D({dec_n_9,dec_n_10,dec_n_11,dec_n_12,dec_n_13,dec_n_14,dec_n_15,dec_n_16,dec_n_17,dec_n_18,dec_n_19,dec_n_20,dec_n_21,dec_n_22,dec_n_23,dec_n_24}),
        .DI(dec_n_25),
        .O({uut_pc_n_0,uut_pc_n_1,uut_pc_n_2}),
        .\O_dataA_reg[13] (O_selD),
        .\O_dataA_reg[15] (I_dataA),
        .\O_dataB_reg[15] (I_dataB),
        .\O_data_reg[15] (uut_ram16_n_0),
        .\O_data_reg[15]_0 (dataReadRam),
        .O_imm(O_imm),
        .O_regDwe(O_regDwe),
        .O_selB(O_selB),
        .\O_selB_reg[0]_0 ({uut_pc_n_12,uut_pc_n_13,uut_pc_n_14,uut_pc_n_15}),
        .O_shouldBranch(O_shouldBranch),
        .Q({state[2],state[0]}),
        .S(dec_n_26),
        .dividedClock_BUFG(dividedClock_BUFG),
        .\pc_actuel_reg[12] ({uut_pc_n_3,uut_pc_n_4,O_pc[0]}),
        .\pc_actuel_reg[13] ({uut_pc_n_16,uut_pc_n_17,uut_pc_n_18,uut_pc_n_19}),
        .\pc_actuel_reg[7] ({uut_pc_n_8,uut_pc_n_9,uut_pc_n_10,uut_pc_n_11}),
        .s_result({uut_alu_n_34,uut_alu_n_35,uut_alu_n_36,uut_alu_n_37,uut_alu_n_38,uut_alu_n_39,uut_alu_n_40,uut_alu_n_41,uut_alu_n_42,uut_alu_n_43,uut_alu_n_44,uut_alu_n_45,uut_alu_n_46,uut_alu_n_47,uut_alu_n_48,uut_alu_n_49}),
        .\s_result_reg[15] (dec_n_28),
        .s_shouldBranch_reg(dec_n_27));
  BUFG dividedClock_BUFG_inst
       (.I(dividedClock),
        .O(dividedClock_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \leds_reg[1] 
       (.C(dividedClock_BUFG),
        .CE(1'b1),
        .D(I_dataB[9]),
        .Q(O_leds_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \leds_reg[2] 
       (.C(dividedClock_BUFG),
        .CE(1'b1),
        .D(I_dataB[10]),
        .Q(O_leds_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \leds_reg[3] 
       (.C(dividedClock_BUFG),
        .CE(1'b1),
        .D(I_dataB[11]),
        .Q(O_leds_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \leds_reg[4] 
       (.C(dividedClock_BUFG),
        .CE(1'b1),
        .D(I_dataB[12]),
        .Q(O_leds_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \leds_reg[5] 
       (.C(dividedClock_BUFG),
        .CE(1'b1),
        .D(I_dataB[13]),
        .Q(O_leds_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \leds_reg[6] 
       (.C(dividedClock_BUFG),
        .CE(1'b1),
        .D(I_dataB[14]),
        .Q(O_leds_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \leds_reg[7] 
       (.C(dividedClock_BUFG),
        .CE(1'b1),
        .D(I_dataB[15]),
        .Q(O_leds_OBUF[7]),
        .R(1'b0));
  alu uut_alu
       (.D({uut_alu_n_1,uut_alu_n_2,uut_alu_n_3,uut_alu_n_4,uut_alu_n_5,uut_alu_n_6,uut_alu_n_7,uut_alu_n_8,uut_alu_n_9,uut_alu_n_10,uut_alu_n_11,uut_alu_n_12,uut_alu_n_13,uut_alu_n_14,uut_alu_n_15,uut_alu_n_16}),
        .\O_aluop_reg[1] (dec_n_27),
        .\O_aluop_reg[3] ({dec_n_9,dec_n_10,dec_n_11,dec_n_12,dec_n_13,dec_n_14,dec_n_15,dec_n_16,dec_n_17,dec_n_18,dec_n_19,dec_n_20,dec_n_21,dec_n_22,dec_n_23,dec_n_24}),
        .\O_dataA_reg[15] (I_dataA),
        .\O_dataB_reg[15] (I_dataB),
        .O_leds_OBUF(O_leds_OBUF[0]),
        .O_regDwe(O_regDwe),
        .O_shouldBranch(O_shouldBranch),
        .Q(state[4:2]),
        .dividedClock_BUFG(dividedClock_BUFG),
        .p_0_in(uut_alu_n_33),
        .\pc_actuel_reg[0] (O_pc[0]),
        .\pc_actuel_reg[15] (pcIn),
        .plusOp(plusOp),
        .s_result({uut_alu_n_34,uut_alu_n_35,uut_alu_n_36,uut_alu_n_37,uut_alu_n_38,uut_alu_n_39,uut_alu_n_40,uut_alu_n_41,uut_alu_n_42,uut_alu_n_43,uut_alu_n_44,uut_alu_n_45,uut_alu_n_46,uut_alu_n_47,uut_alu_n_48,uut_alu_n_49}));
  ClockingModule uut_clockingmodule
       (.CLK(I_clk_IBUF_BUFG),
        .O_leds_OBUF(O_leds_OBUF[0]),
        .dividedClock(dividedClock));
  controlunit uut_controlunit
       (.E(I_en),
        .O_leds_OBUF(O_leds_OBUF[0]),
        .Q({state[4:2],state[0]}),
        .dividedClock_BUFG(dividedClock_BUFG),
        .\pc_actuel_reg[15] (uut_controlunit_n_5));
  program_counter uut_pc
       (.D({uut_alu_n_1,uut_alu_n_2,uut_alu_n_3,uut_alu_n_4,uut_alu_n_5,uut_alu_n_6,uut_alu_n_7,uut_alu_n_8,uut_alu_n_9,uut_alu_n_10,uut_alu_n_11,uut_alu_n_12,uut_alu_n_13,uut_alu_n_14,uut_alu_n_15,uut_alu_n_16}),
        .DI(dec_n_25),
        .E(uut_controlunit_n_5),
        .O({uut_pc_n_0,uut_pc_n_1,uut_pc_n_2}),
        .O_imm(O_imm),
        .O_selB(O_selB),
        .\O_selB_reg[0] (dec_n_28),
        .Q({uut_pc_n_3,uut_pc_n_4,O_pc}),
        .S(dec_n_26),
        .dividedClock_BUFG(dividedClock_BUFG),
        .plusOp(plusOp),
        .\s_result_reg[11] ({uut_pc_n_12,uut_pc_n_13,uut_pc_n_14,uut_pc_n_15}),
        .\s_result_reg[15] ({uut_pc_n_16,uut_pc_n_17,uut_pc_n_18,uut_pc_n_19}),
        .\s_result_reg[7] ({uut_pc_n_8,uut_pc_n_9,uut_pc_n_10,uut_pc_n_11}));
  reg16_8 uut_ram
       (.E(I_en),
        .I_dataD(pcIn),
        .O_dataA(I_dataA),
        .O_dataB(I_dataB),
        .O_imm(O_imm[7:5]),
        .O_selB(O_selB),
        .\O_selD_reg[2] (O_selD),
        .dividedClock_BUFG(dividedClock_BUFG),
        .p_0_in(uut_alu_n_33));
  ram16 uut_ram16
       (.O_data(dataReadRam),
        .O_regDwe_reg(uut_ram16_n_0),
        .Q(O_pc),
        .dividedClock_BUFG(dividedClock_BUFG));
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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
