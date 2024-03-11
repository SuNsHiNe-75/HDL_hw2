/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06
// Date      : Sun Oct 16 10:25:25 2022
/////////////////////////////////////////////////////////////


module pipe1_DW01_sub_0 ( A, B, DIFF );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [7:1] carry;

  ADDF_X1M_A9TR U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .S(DIFF[7]) );
  ADDF_X1M_A9TR U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(
        DIFF[6]) );
  ADDF_X1M_A9TR U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(
        DIFF[5]) );
  ADDF_X1M_A9TR U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(
        DIFF[4]) );
  ADDF_X1M_A9TR U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(
        DIFF[3]) );
  ADDF_X1M_A9TR U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(
        DIFF[2]) );
  ADDF_X1M_A9TR U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(
        DIFF[1]) );
  INV_X1M_A9TR U1 ( .A(B[2]), .Y(n7) );
  INV_X1M_A9TR U2 ( .A(B[3]), .Y(n6) );
  INV_X1M_A9TR U3 ( .A(B[4]), .Y(n5) );
  INV_X1M_A9TR U4 ( .A(B[5]), .Y(n4) );
  INV_X1M_A9TR U5 ( .A(B[6]), .Y(n3) );
  INV_X1M_A9TR U6 ( .A(B[1]), .Y(n8) );
  NAND2_X1A_A9TR U7 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INV_X1M_A9TR U8 ( .A(A[0]), .Y(n1) );
  INV_X1M_A9TR U9 ( .A(B[0]), .Y(n9) );
  INV_X1M_A9TR U10 ( .A(B[7]), .Y(n2) );
  XNOR2_X0P7M_A9TR U11 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
endmodule


module pipe1_DW01_add_0 ( A, B, SUM );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  wire   n1;
  wire   [7:2] carry;

  ADDF_X1M_A9TR U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .S(SUM[7]) );
  ADDF_X1M_A9TR U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(
        SUM[6]) );
  ADDF_X1M_A9TR U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(
        SUM[5]) );
  ADDF_X1M_A9TR U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(
        SUM[4]) );
  ADDF_X1M_A9TR U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(
        SUM[3]) );
  ADDF_X1M_A9TR U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(
        SUM[2]) );
  ADDF_X1M_A9TR U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1])
         );
  XOR2_X0P7M_A9TR U1 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  AND2_X1B_A9TR U2 ( .A(B[0]), .B(A[0]), .Y(n1) );
endmodule


module pipe1 ( a, b, c, s, reset, clk, reg_c1, reg_alu );
  input [7:0] a;
  input [7:0] b;
  input [7:0] c;
  output [7:0] reg_c1;
  output [7:0] reg_alu;
  input s, reset, clk;
  wire   N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17,
         N18, n2, n1, n30, n40, n50;
  wire   [7:0] w1;

  DFFRPQ_X2M_A9TR reg_alu_reg_7_ ( .D(w1[7]), .CK(clk), .R(n1), .Q(reg_alu[7])
         );
  DFFRPQ_X2M_A9TR reg_alu_reg_6_ ( .D(w1[6]), .CK(clk), .R(n1), .Q(reg_alu[6])
         );
  DFFRPQ_X2M_A9TR reg_alu_reg_5_ ( .D(w1[5]), .CK(clk), .R(n1), .Q(reg_alu[5])
         );
  DFFRPQ_X2M_A9TR reg_alu_reg_4_ ( .D(w1[4]), .CK(clk), .R(n1), .Q(reg_alu[4])
         );
  DFFRPQ_X2M_A9TR reg_alu_reg_3_ ( .D(w1[3]), .CK(clk), .R(n1), .Q(reg_alu[3])
         );
  DFFRPQ_X2M_A9TR reg_alu_reg_2_ ( .D(w1[2]), .CK(clk), .R(n1), .Q(reg_alu[2])
         );
  DFFRPQ_X2M_A9TR reg_alu_reg_1_ ( .D(w1[1]), .CK(clk), .R(n1), .Q(reg_alu[1])
         );
  DFFRPQ_X2M_A9TR reg_alu_reg_0_ ( .D(w1[0]), .CK(clk), .R(n1), .Q(reg_alu[0])
         );
  DFFRPQ_X2M_A9TR reg_c1_reg_7_ ( .D(c[7]), .CK(clk), .R(n1), .Q(reg_c1[7]) );
  DFFRPQ_X2M_A9TR reg_c1_reg_6_ ( .D(c[6]), .CK(clk), .R(n1), .Q(reg_c1[6]) );
  DFFRPQ_X2M_A9TR reg_c1_reg_5_ ( .D(c[5]), .CK(clk), .R(n1), .Q(reg_c1[5]) );
  DFFRPQ_X2M_A9TR reg_c1_reg_4_ ( .D(c[4]), .CK(clk), .R(n1), .Q(reg_c1[4]) );
  DFFRPQ_X2M_A9TR reg_c1_reg_3_ ( .D(c[3]), .CK(clk), .R(n1), .Q(reg_c1[3]) );
  DFFRPQ_X2M_A9TR reg_c1_reg_2_ ( .D(c[2]), .CK(clk), .R(n30), .Q(reg_c1[2])
         );
  DFFRPQ_X2M_A9TR reg_c1_reg_1_ ( .D(c[1]), .CK(clk), .R(n30), .Q(reg_c1[1])
         );
  DFFRPQ_X2M_A9TR reg_c1_reg_0_ ( .D(c[0]), .CK(clk), .R(n30), .Q(reg_c1[0])
         );
  pipe1_DW01_sub_0 sub_16 ( .A(a), .B(b), .DIFF({N18, N17, N16, N15, N14, N13, 
        N12, N11}) );
  pipe1_DW01_add_0 add_16 ( .A(a), .B(b), .SUM({N10, N9, N8, N7, N6, N5, N4, 
        N3}) );
  BUFH_X1M_A9TR U3 ( .A(n40), .Y(n1) );
  BUFH_X1M_A9TR U4 ( .A(n40), .Y(n30) );
  INV_X1M_A9TR U5 ( .A(s), .Y(n50) );
  AO22_X1M_A9TR U6 ( .A0(N4), .A1(s), .B0(N12), .B1(n50), .Y(w1[1]) );
  AO22_X1M_A9TR U7 ( .A0(N5), .A1(s), .B0(N13), .B1(n50), .Y(w1[2]) );
  AO22_X1M_A9TR U8 ( .A0(N6), .A1(s), .B0(N14), .B1(n50), .Y(w1[3]) );
  AO22_X1M_A9TR U9 ( .A0(N7), .A1(s), .B0(N15), .B1(n50), .Y(w1[4]) );
  AO22_X1M_A9TR U10 ( .A0(N8), .A1(s), .B0(N16), .B1(n50), .Y(w1[5]) );
  AO22_X1M_A9TR U11 ( .A0(N9), .A1(s), .B0(N17), .B1(n50), .Y(w1[6]) );
  AO22_X1M_A9TR U12 ( .A0(N18), .A1(n50), .B0(s), .B1(N10), .Y(w1[7]) );
  AO22_X1M_A9TR U13 ( .A0(N3), .A1(s), .B0(N11), .B1(n50), .Y(w1[0]) );
  BUFH_X1M_A9TR U14 ( .A(reset), .Y(n40) );
  TIELO_X1M_A9TR U15 ( .Y(n2) );
endmodule


module pipe2_DW_mult_uns_0 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229;

  ADDF_X1M_A9TR U2 ( .A(n15), .B(n99), .CI(n2), .CO(product[15]), .S(
        product[14]) );
  ADDF_X1M_A9TR U3 ( .A(n17), .B(n16), .CI(n3), .CO(n2), .S(product[13]) );
  ADDF_X1M_A9TR U4 ( .A(n21), .B(n18), .CI(n4), .CO(n3), .S(product[12]) );
  ADDF_X1M_A9TR U5 ( .A(n22), .B(n27), .CI(n5), .CO(n4), .S(product[11]) );
  ADDF_X1M_A9TR U6 ( .A(n28), .B(n35), .CI(n6), .CO(n5), .S(product[10]) );
  ADDF_X1M_A9TR U7 ( .A(n36), .B(n45), .CI(n7), .CO(n6), .S(product[9]) );
  ADDF_X1M_A9TR U8 ( .A(n46), .B(n57), .CI(n8), .CO(n7), .S(product[8]) );
  ADDF_X1M_A9TR U9 ( .A(n58), .B(n69), .CI(n9), .CO(n8), .S(product[7]) );
  ADDF_X1M_A9TR U10 ( .A(n70), .B(n79), .CI(n10), .CO(n9), .S(product[6]) );
  ADDF_X1M_A9TR U11 ( .A(n80), .B(n87), .CI(n11), .CO(n10), .S(product[5]) );
  ADDF_X1M_A9TR U12 ( .A(n88), .B(n93), .CI(n12), .CO(n11), .S(product[4]) );
  ADDF_X1M_A9TR U13 ( .A(n94), .B(n96), .CI(n13), .CO(n12), .S(product[3]) );
  ADDF_X1M_A9TR U14 ( .A(n14), .B(n146), .CI(n98), .CO(n13), .S(product[2]) );
  ADDH_X1M_A9TR U15 ( .A(n161), .B(n154), .CO(n14), .S(product[1]) );
  ADDF_X1M_A9TR U16 ( .A(n100), .B(n107), .CI(n19), .CO(n15), .S(n16) );
  ADDF_X1M_A9TR U17 ( .A(n20), .B(n25), .CI(n23), .CO(n17), .S(n18) );
  ADDF_X1M_A9TR U18 ( .A(n101), .B(n115), .CI(n108), .CO(n19), .S(n20) );
  ADDF_X1M_A9TR U19 ( .A(n24), .B(n31), .CI(n29), .CO(n21), .S(n22) );
  ADDF_X1M_A9TR U20 ( .A(n33), .B(n116), .CI(n26), .CO(n23), .S(n24) );
  ADDF_X1M_A9TR U21 ( .A(n102), .B(n123), .CI(n109), .CO(n25), .S(n26) );
  ADDF_X1M_A9TR U22 ( .A(n37), .B(n32), .CI(n30), .CO(n27), .S(n28) );
  ADDF_X1M_A9TR U23 ( .A(n34), .B(n41), .CI(n39), .CO(n29), .S(n30) );
  ADDF_X1M_A9TR U24 ( .A(n117), .B(n124), .CI(n43), .CO(n31), .S(n32) );
  ADDF_X1M_A9TR U25 ( .A(n103), .B(n131), .CI(n110), .CO(n33), .S(n34) );
  ADDF_X1M_A9TR U26 ( .A(n47), .B(n40), .CI(n38), .CO(n35), .S(n36) );
  ADDF_X1M_A9TR U27 ( .A(n51), .B(n44), .CI(n49), .CO(n37), .S(n38) );
  ADDF_X1M_A9TR U28 ( .A(n53), .B(n55), .CI(n42), .CO(n39), .S(n40) );
  ADDF_X1M_A9TR U29 ( .A(n125), .B(n118), .CI(n132), .CO(n41), .S(n42) );
  ADDF_X1M_A9TR U30 ( .A(n104), .B(n139), .CI(n111), .CO(n43), .S(n44) );
  ADDF_X1M_A9TR U31 ( .A(n59), .B(n50), .CI(n48), .CO(n45), .S(n46) );
  ADDF_X1M_A9TR U32 ( .A(n52), .B(n54), .CI(n61), .CO(n47), .S(n48) );
  ADDF_X1M_A9TR U33 ( .A(n65), .B(n56), .CI(n63), .CO(n49), .S(n50) );
  ADDF_X1M_A9TR U34 ( .A(n133), .B(n140), .CI(n67), .CO(n51), .S(n52) );
  ADDF_X1M_A9TR U35 ( .A(n119), .B(n126), .CI(n147), .CO(n53), .S(n54) );
  ADDH_X1M_A9TR U36 ( .A(n105), .B(n112), .CO(n55), .S(n56) );
  ADDF_X1M_A9TR U37 ( .A(n62), .B(n71), .CI(n60), .CO(n57), .S(n58) );
  ADDF_X1M_A9TR U38 ( .A(n66), .B(n64), .CI(n73), .CO(n59), .S(n60) );
  ADDF_X1M_A9TR U39 ( .A(n68), .B(n77), .CI(n75), .CO(n61), .S(n62) );
  ADDF_X1M_A9TR U40 ( .A(n127), .B(n141), .CI(n134), .CO(n63), .S(n64) );
  ADDF_X1M_A9TR U41 ( .A(n120), .B(n155), .CI(n148), .CO(n65), .S(n66) );
  ADDH_X1M_A9TR U42 ( .A(n106), .B(n113), .CO(n67), .S(n68) );
  ADDF_X1M_A9TR U43 ( .A(n81), .B(n74), .CI(n72), .CO(n69), .S(n70) );
  ADDF_X1M_A9TR U44 ( .A(n83), .B(n78), .CI(n76), .CO(n71), .S(n72) );
  ADDF_X1M_A9TR U45 ( .A(n135), .B(n142), .CI(n85), .CO(n73), .S(n74) );
  ADDF_X1M_A9TR U46 ( .A(n128), .B(n156), .CI(n149), .CO(n75), .S(n76) );
  ADDH_X1M_A9TR U47 ( .A(n114), .B(n121), .CO(n77), .S(n78) );
  ADDF_X1M_A9TR U48 ( .A(n84), .B(n89), .CI(n82), .CO(n79), .S(n80) );
  ADDF_X1M_A9TR U49 ( .A(n91), .B(n150), .CI(n86), .CO(n81), .S(n82) );
  ADDF_X1M_A9TR U50 ( .A(n136), .B(n157), .CI(n143), .CO(n83), .S(n84) );
  ADDH_X1M_A9TR U51 ( .A(n122), .B(n129), .CO(n85), .S(n86) );
  ADDF_X1M_A9TR U52 ( .A(n92), .B(n95), .CI(n90), .CO(n87), .S(n88) );
  ADDF_X1M_A9TR U53 ( .A(n144), .B(n158), .CI(n151), .CO(n89), .S(n90) );
  ADDH_X1M_A9TR U54 ( .A(n130), .B(n137), .CO(n91), .S(n92) );
  ADDF_X1M_A9TR U55 ( .A(n152), .B(n159), .CI(n97), .CO(n93), .S(n94) );
  ADDH_X1M_A9TR U56 ( .A(n138), .B(n145), .CO(n95), .S(n96) );
  ADDH_X1M_A9TR U57 ( .A(n153), .B(n160), .CO(n97), .S(n98) );
  INV_X1M_A9TR U140 ( .A(a[0]), .Y(n229) );
  INV_X1M_A9TR U141 ( .A(a[7]), .Y(n222) );
  INV_X1M_A9TR U142 ( .A(b[0]), .Y(n221) );
  INV_X1M_A9TR U143 ( .A(b[1]), .Y(n220) );
  INV_X1M_A9TR U144 ( .A(b[4]), .Y(n217) );
  INV_X1M_A9TR U145 ( .A(b[5]), .Y(n216) );
  INV_X1M_A9TR U146 ( .A(b[6]), .Y(n215) );
  INV_X1M_A9TR U147 ( .A(b[2]), .Y(n219) );
  INV_X1M_A9TR U148 ( .A(b[3]), .Y(n218) );
  INV_X1M_A9TR U149 ( .A(b[7]), .Y(n214) );
  INV_X1M_A9TR U150 ( .A(a[4]), .Y(n225) );
  INV_X1M_A9TR U151 ( .A(a[3]), .Y(n226) );
  INV_X1M_A9TR U152 ( .A(a[2]), .Y(n227) );
  INV_X1M_A9TR U153 ( .A(a[5]), .Y(n224) );
  INV_X1M_A9TR U154 ( .A(a[6]), .Y(n223) );
  INV_X1M_A9TR U155 ( .A(a[1]), .Y(n228) );
  NOR2_X0P5A_A9TR U156 ( .A(n229), .B(n221), .Y(product[0]) );
  NOR2_X0P5A_A9TR U157 ( .A(n222), .B(n214), .Y(n99) );
  NOR2_X0P5A_A9TR U158 ( .A(n229), .B(n220), .Y(n161) );
  NOR2_X0P5A_A9TR U159 ( .A(n229), .B(n219), .Y(n160) );
  NOR2_X0P5A_A9TR U160 ( .A(n229), .B(n218), .Y(n159) );
  NOR2_X0P5A_A9TR U161 ( .A(n229), .B(n217), .Y(n158) );
  NOR2_X0P5A_A9TR U162 ( .A(n229), .B(n216), .Y(n157) );
  NOR2_X0P5A_A9TR U163 ( .A(n229), .B(n215), .Y(n156) );
  NOR2_X0P5A_A9TR U164 ( .A(n229), .B(n214), .Y(n155) );
  NOR2_X0P5A_A9TR U165 ( .A(n221), .B(n228), .Y(n154) );
  NOR2_X0P5A_A9TR U166 ( .A(n220), .B(n228), .Y(n153) );
  NOR2_X0P5A_A9TR U167 ( .A(n219), .B(n228), .Y(n152) );
  NOR2_X0P5A_A9TR U168 ( .A(n218), .B(n228), .Y(n151) );
  NOR2_X0P5A_A9TR U169 ( .A(n217), .B(n228), .Y(n150) );
  NOR2_X0P5A_A9TR U170 ( .A(n216), .B(n228), .Y(n149) );
  NOR2_X0P5A_A9TR U171 ( .A(n215), .B(n228), .Y(n148) );
  NOR2_X0P5A_A9TR U172 ( .A(n214), .B(n228), .Y(n147) );
  NOR2_X0P5A_A9TR U173 ( .A(n221), .B(n227), .Y(n146) );
  NOR2_X0P5A_A9TR U174 ( .A(n220), .B(n227), .Y(n145) );
  NOR2_X0P5A_A9TR U175 ( .A(n219), .B(n227), .Y(n144) );
  NOR2_X0P5A_A9TR U176 ( .A(n218), .B(n227), .Y(n143) );
  NOR2_X0P5A_A9TR U177 ( .A(n217), .B(n227), .Y(n142) );
  NOR2_X0P5A_A9TR U178 ( .A(n216), .B(n227), .Y(n141) );
  NOR2_X0P5A_A9TR U179 ( .A(n215), .B(n227), .Y(n140) );
  NOR2_X0P5A_A9TR U180 ( .A(n214), .B(n227), .Y(n139) );
  NOR2_X0P5A_A9TR U181 ( .A(n221), .B(n226), .Y(n138) );
  NOR2_X0P5A_A9TR U182 ( .A(n220), .B(n226), .Y(n137) );
  NOR2_X0P5A_A9TR U183 ( .A(n219), .B(n226), .Y(n136) );
  NOR2_X0P5A_A9TR U184 ( .A(n218), .B(n226), .Y(n135) );
  NOR2_X0P5A_A9TR U185 ( .A(n217), .B(n226), .Y(n134) );
  NOR2_X0P5A_A9TR U186 ( .A(n216), .B(n226), .Y(n133) );
  NOR2_X0P5A_A9TR U187 ( .A(n215), .B(n226), .Y(n132) );
  NOR2_X0P5A_A9TR U188 ( .A(n214), .B(n226), .Y(n131) );
  NOR2_X0P5A_A9TR U189 ( .A(n221), .B(n225), .Y(n130) );
  NOR2_X0P5A_A9TR U190 ( .A(n220), .B(n225), .Y(n129) );
  NOR2_X0P5A_A9TR U191 ( .A(n219), .B(n225), .Y(n128) );
  NOR2_X0P5A_A9TR U192 ( .A(n218), .B(n225), .Y(n127) );
  NOR2_X0P5A_A9TR U193 ( .A(n217), .B(n225), .Y(n126) );
  NOR2_X0P5A_A9TR U194 ( .A(n216), .B(n225), .Y(n125) );
  NOR2_X0P5A_A9TR U195 ( .A(n215), .B(n225), .Y(n124) );
  NOR2_X0P5A_A9TR U196 ( .A(n214), .B(n225), .Y(n123) );
  NOR2_X0P5A_A9TR U197 ( .A(n221), .B(n224), .Y(n122) );
  NOR2_X0P5A_A9TR U198 ( .A(n220), .B(n224), .Y(n121) );
  NOR2_X0P5A_A9TR U199 ( .A(n219), .B(n224), .Y(n120) );
  NOR2_X0P5A_A9TR U200 ( .A(n218), .B(n224), .Y(n119) );
  NOR2_X0P5A_A9TR U201 ( .A(n217), .B(n224), .Y(n118) );
  NOR2_X0P5A_A9TR U202 ( .A(n216), .B(n224), .Y(n117) );
  NOR2_X0P5A_A9TR U203 ( .A(n215), .B(n224), .Y(n116) );
  NOR2_X0P5A_A9TR U204 ( .A(n214), .B(n224), .Y(n115) );
  NOR2_X0P5A_A9TR U205 ( .A(n221), .B(n223), .Y(n114) );
  NOR2_X0P5A_A9TR U206 ( .A(n220), .B(n223), .Y(n113) );
  NOR2_X0P5A_A9TR U207 ( .A(n219), .B(n223), .Y(n112) );
  NOR2_X0P5A_A9TR U208 ( .A(n218), .B(n223), .Y(n111) );
  NOR2_X0P5A_A9TR U209 ( .A(n217), .B(n223), .Y(n110) );
  NOR2_X0P5A_A9TR U210 ( .A(n216), .B(n223), .Y(n109) );
  NOR2_X0P5A_A9TR U211 ( .A(n215), .B(n223), .Y(n108) );
  NOR2_X0P5A_A9TR U212 ( .A(n214), .B(n223), .Y(n107) );
  NOR2_X0P5A_A9TR U213 ( .A(n221), .B(n222), .Y(n106) );
  NOR2_X0P5A_A9TR U214 ( .A(n222), .B(n220), .Y(n105) );
  NOR2_X0P5A_A9TR U215 ( .A(n222), .B(n219), .Y(n104) );
  NOR2_X0P5A_A9TR U216 ( .A(n222), .B(n218), .Y(n103) );
  NOR2_X0P5A_A9TR U217 ( .A(n222), .B(n217), .Y(n102) );
  NOR2_X0P5A_A9TR U218 ( .A(n222), .B(n216), .Y(n101) );
  NOR2_X0P5A_A9TR U219 ( .A(n222), .B(n215), .Y(n100) );
endmodule


module pipe2 ( regc, regalu, reset, clk, d );
  input [7:0] regc;
  input [7:0] regalu;
  output [15:0] d;
  input reset, clk;
  wire   n1, n2, n3;
  wire   [15:0] mul;

  DFFRPQ_X2M_A9TR reg_out_reg_15_ ( .D(mul[15]), .CK(clk), .R(n1), .Q(d[15])
         );
  DFFRPQ_X2M_A9TR reg_out_reg_14_ ( .D(mul[14]), .CK(clk), .R(n1), .Q(d[14])
         );
  DFFRPQ_X2M_A9TR reg_out_reg_13_ ( .D(mul[13]), .CK(clk), .R(n1), .Q(d[13])
         );
  DFFRPQ_X2M_A9TR reg_out_reg_12_ ( .D(mul[12]), .CK(clk), .R(n1), .Q(d[12])
         );
  DFFRPQ_X2M_A9TR reg_out_reg_11_ ( .D(mul[11]), .CK(clk), .R(n1), .Q(d[11])
         );
  DFFRPQ_X2M_A9TR reg_out_reg_10_ ( .D(mul[10]), .CK(clk), .R(n1), .Q(d[10])
         );
  DFFRPQ_X2M_A9TR reg_out_reg_9_ ( .D(mul[9]), .CK(clk), .R(n1), .Q(d[9]) );
  DFFRPQ_X2M_A9TR reg_out_reg_8_ ( .D(mul[8]), .CK(clk), .R(n1), .Q(d[8]) );
  DFFRPQ_X2M_A9TR reg_out_reg_7_ ( .D(mul[7]), .CK(clk), .R(n1), .Q(d[7]) );
  DFFRPQ_X2M_A9TR reg_out_reg_6_ ( .D(mul[6]), .CK(clk), .R(n1), .Q(d[6]) );
  DFFRPQ_X2M_A9TR reg_out_reg_5_ ( .D(mul[5]), .CK(clk), .R(n1), .Q(d[5]) );
  DFFRPQ_X2M_A9TR reg_out_reg_4_ ( .D(mul[4]), .CK(clk), .R(n1), .Q(d[4]) );
  DFFRPQ_X2M_A9TR reg_out_reg_3_ ( .D(mul[3]), .CK(clk), .R(n1), .Q(d[3]) );
  DFFRPQ_X2M_A9TR reg_out_reg_2_ ( .D(mul[2]), .CK(clk), .R(n2), .Q(d[2]) );
  DFFRPQ_X2M_A9TR reg_out_reg_1_ ( .D(mul[1]), .CK(clk), .R(n2), .Q(d[1]) );
  DFFRPQ_X2M_A9TR reg_out_reg_0_ ( .D(mul[0]), .CK(clk), .R(n2), .Q(d[0]) );
  pipe2_DW_mult_uns_0 mult_36 ( .a(regc), .b(regalu), .product(mul) );
  BUFH_X1M_A9TR U3 ( .A(n3), .Y(n1) );
  BUFH_X1M_A9TR U4 ( .A(n3), .Y(n2) );
  BUFH_X1M_A9TR U5 ( .A(reset), .Y(n3) );
endmodule


module hw2_pipe ( a, b, c, s, reset, clk, d );
  input [7:0] a;
  input [7:0] b;
  input [7:0] c;
  output [15:0] d;
  input s, reset, clk;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [7:0] c1;
  wire   [7:0] alu;

  pipe1 p1 ( .a(a), .b(b), .c({n8, n7, n6, n5, n4, n3, n2, n1}), .s(s), 
        .reset(reset), .clk(clk), .reg_c1(c1), .reg_alu(alu) );
  pipe2 p2 ( .regc(c1), .regalu(alu), .reset(reset), .clk(clk), .d(d) );
  BUFH_X1M_A9TR U1 ( .A(c[0]), .Y(n1) );
  BUFH_X1M_A9TR U2 ( .A(c[1]), .Y(n2) );
  BUFH_X1M_A9TR U3 ( .A(c[2]), .Y(n3) );
  BUFH_X1M_A9TR U4 ( .A(c[3]), .Y(n4) );
  BUFH_X1M_A9TR U5 ( .A(c[4]), .Y(n5) );
  BUFH_X1M_A9TR U6 ( .A(c[5]), .Y(n6) );
  BUFH_X1M_A9TR U7 ( .A(c[6]), .Y(n7) );
  BUFH_X1M_A9TR U8 ( .A(c[7]), .Y(n8) );
endmodule

