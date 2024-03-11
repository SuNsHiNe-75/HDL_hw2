/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06
// Date      : Wed Oct 12 16:35:48 2022
/////////////////////////////////////////////////////////////


module hw2_nonpipe_DW01_sub_0 ( DIFF, \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , 
        \A[2] , \A[1] , \A[0] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , 
        \B[1] , \B[0]  );
  output [8:0] DIFF;
  input \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[7] ,
         \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] ;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [7:0] A;
  wire   [7:0] B;
  wire   [8:1] carry;
  assign A[7] = \A[7] ;
  assign A[6] = \A[6] ;
  assign A[5] = \A[5] ;
  assign A[4] = \A[4] ;
  assign A[3] = \A[3] ;
  assign A[2] = \A[2] ;
  assign A[1] = \A[1] ;
  assign A[0] = \A[0] ;
  assign B[7] = \B[7] ;
  assign B[6] = \B[6] ;
  assign B[5] = \B[5] ;
  assign B[4] = \B[4] ;
  assign B[3] = \B[3] ;
  assign B[2] = \B[2] ;
  assign B[1] = \B[1] ;
  assign B[0] = \B[0] ;

  ADDF_X1M_A9TR U2_7 ( .A(A[7]), .B(n3), .CI(carry[7]), .CO(carry[8]), .S(
        DIFF[7]) );
  ADDF_X1M_A9TR U2_6 ( .A(A[6]), .B(n4), .CI(carry[6]), .CO(carry[7]), .S(
        DIFF[6]) );
  ADDF_X1M_A9TR U2_5 ( .A(A[5]), .B(n5), .CI(carry[5]), .CO(carry[6]), .S(
        DIFF[5]) );
  ADDF_X1M_A9TR U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(
        DIFF[4]) );
  ADDF_X1M_A9TR U2_3 ( .A(A[3]), .B(n7), .CI(carry[3]), .CO(carry[4]), .S(
        DIFF[3]) );
  ADDF_X1M_A9TR U2_2 ( .A(A[2]), .B(n8), .CI(carry[2]), .CO(carry[3]), .S(
        DIFF[2]) );
  ADDF_X1M_A9TR U2_1 ( .A(A[1]), .B(n9), .CI(carry[1]), .CO(carry[2]), .S(
        DIFF[1]) );
  INV_X1M_A9TR U1 ( .A(carry[8]), .Y(DIFF[8]) );
  INV_X1M_A9TR U2 ( .A(B[7]), .Y(n3) );
  INV_X1M_A9TR U3 ( .A(B[2]), .Y(n8) );
  INV_X1M_A9TR U4 ( .A(B[3]), .Y(n7) );
  INV_X1M_A9TR U5 ( .A(B[4]), .Y(n6) );
  INV_X1M_A9TR U6 ( .A(B[5]), .Y(n5) );
  INV_X1M_A9TR U7 ( .A(B[6]), .Y(n4) );
  INV_X1M_A9TR U8 ( .A(B[1]), .Y(n9) );
  NAND2_X1A_A9TR U9 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INV_X1M_A9TR U10 ( .A(A[0]), .Y(n1) );
  INV_X1M_A9TR U11 ( .A(B[0]), .Y(n10) );
  XNOR2_X0P7M_A9TR U12 ( .A(n10), .B(A[0]), .Y(DIFF[0]) );
endmodule


module hw2_nonpipe_DW_mult_uns_1 ( b, \a[8] , \a[7] , \a[6] , \a[5] , \a[4] , 
        \a[3] , \a[2] , \a[1] , \a[0] , \product[15] , \product[14] , 
        \product[13] , \product[12] , \product[11] , \product[10] , 
        \product[9] , \product[8] , \product[7] , \product[6] , \product[5] , 
        \product[4] , \product[3] , \product[2] , \product[1] , \product[0] 
 );
  input [7:0] b;
  input \a[8] , \a[7] , \a[6] , \a[5] , \a[4] , \a[3] , \a[2] , \a[1] , \a[0] ;
  output \product[15] , \product[14] , \product[13] , \product[12] ,
         \product[11] , \product[10] , \product[9] , \product[8] ,
         \product[7] , \product[6] , \product[5] , \product[4] , \product[3] ,
         \product[2] , \product[1] , \product[0] ;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256;
  wire   [15:0] product;
  wire   [8:0] a;
  assign \product[15]  = product[15];
  assign \product[14]  = product[14];
  assign \product[13]  = product[13];
  assign \product[12]  = product[12];
  assign \product[11]  = product[11];
  assign \product[10]  = product[10];
  assign \product[9]  = product[9];
  assign \product[8]  = product[8];
  assign \product[7]  = product[7];
  assign \product[6]  = product[6];
  assign \product[5]  = product[5];
  assign \product[4]  = product[4];
  assign \product[3]  = product[3];
  assign \product[2]  = product[2];
  assign \product[1]  = product[1];
  assign \product[0]  = product[0];
  assign a[8] = \a[8] ;
  assign a[7] = \a[7] ;
  assign a[6] = \a[6] ;
  assign a[5] = \a[5] ;
  assign a[4] = \a[4] ;
  assign a[3] = \a[3] ;
  assign a[2] = \a[2] ;
  assign a[1] = \a[1] ;
  assign a[0] = \a[0] ;

  ADDF_X1M_A9TR U3 ( .A(n18), .B(n17), .CI(n3), .CO(n2), .S(product[14]) );
  ADDF_X1M_A9TR U4 ( .A(n22), .B(n19), .CI(n4), .CO(n3), .S(product[13]) );
  ADDF_X1M_A9TR U5 ( .A(n23), .B(n28), .CI(n5), .CO(n4), .S(product[12]) );
  ADDF_X1M_A9TR U6 ( .A(n29), .B(n36), .CI(n6), .CO(n5), .S(product[11]) );
  ADDF_X1M_A9TR U7 ( .A(n37), .B(n46), .CI(n7), .CO(n6), .S(product[10]) );
  ADDF_X1M_A9TR U8 ( .A(n47), .B(n58), .CI(n8), .CO(n7), .S(product[9]) );
  ADDF_X1M_A9TR U9 ( .A(n59), .B(n72), .CI(n9), .CO(n8), .S(product[8]) );
  ADDF_X1M_A9TR U10 ( .A(n73), .B(n84), .CI(n10), .CO(n9), .S(product[7]) );
  ADDF_X1M_A9TR U11 ( .A(n85), .B(n94), .CI(n11), .CO(n10), .S(product[6]) );
  ADDF_X1M_A9TR U12 ( .A(n95), .B(n102), .CI(n12), .CO(n11), .S(product[5]) );
  ADDF_X1M_A9TR U13 ( .A(n103), .B(n108), .CI(n13), .CO(n12), .S(product[4])
         );
  ADDF_X1M_A9TR U14 ( .A(n109), .B(n111), .CI(n14), .CO(n13), .S(product[3])
         );
  ADDF_X1M_A9TR U15 ( .A(n15), .B(n166), .CI(n113), .CO(n14), .S(product[2])
         );
  ADDH_X1M_A9TR U16 ( .A(n183), .B(n175), .CO(n15), .S(product[1]) );
  ADDF_X1M_A9TR U17 ( .A(n123), .B(n115), .CI(n20), .CO(n16), .S(n17) );
  ADDF_X1M_A9TR U18 ( .A(n21), .B(n26), .CI(n24), .CO(n18), .S(n19) );
  ADDF_X1M_A9TR U19 ( .A(n116), .B(n124), .CI(n131), .CO(n20), .S(n21) );
  ADDF_X1M_A9TR U20 ( .A(n25), .B(n32), .CI(n30), .CO(n22), .S(n23) );
  ADDF_X1M_A9TR U21 ( .A(n34), .B(n140), .CI(n27), .CO(n24), .S(n25) );
  ADDF_X1M_A9TR U22 ( .A(n117), .B(n132), .CI(n125), .CO(n26), .S(n27) );
  ADDF_X1M_A9TR U23 ( .A(n38), .B(n33), .CI(n31), .CO(n28), .S(n29) );
  ADDF_X1M_A9TR U24 ( .A(n35), .B(n42), .CI(n40), .CO(n30), .S(n31) );
  ADDF_X1M_A9TR U25 ( .A(n149), .B(n141), .CI(n44), .CO(n32), .S(n33) );
  ADDF_X1M_A9TR U26 ( .A(n118), .B(n133), .CI(n126), .CO(n34), .S(n35) );
  ADDF_X1M_A9TR U27 ( .A(n48), .B(n41), .CI(n39), .CO(n36), .S(n37) );
  ADDF_X1M_A9TR U28 ( .A(n52), .B(n43), .CI(n50), .CO(n38), .S(n39) );
  ADDF_X1M_A9TR U29 ( .A(n54), .B(n56), .CI(n45), .CO(n40), .S(n41) );
  ADDF_X1M_A9TR U30 ( .A(n150), .B(n134), .CI(n158), .CO(n42), .S(n43) );
  ADDF_X1M_A9TR U31 ( .A(n127), .B(n142), .CI(n119), .CO(n44), .S(n45) );
  ADDF_X1M_A9TR U32 ( .A(n60), .B(n51), .CI(n49), .CO(n46), .S(n47) );
  ADDF_X1M_A9TR U33 ( .A(n62), .B(n64), .CI(n53), .CO(n48), .S(n49) );
  ADDF_X1M_A9TR U34 ( .A(n55), .B(n66), .CI(n57), .CO(n50), .S(n51) );
  ADDF_X1M_A9TR U35 ( .A(n167), .B(n143), .CI(n68), .CO(n52), .S(n53) );
  ADDF_X1M_A9TR U36 ( .A(n135), .B(n151), .CI(n159), .CO(n54), .S(n55) );
  ADDF_X1M_A9TR U37 ( .A(n243), .B(n120), .CI(n128), .CO(n56), .S(n57) );
  ADDF_X1M_A9TR U38 ( .A(n63), .B(n74), .CI(n61), .CO(n58), .S(n59) );
  ADDF_X1M_A9TR U39 ( .A(n65), .B(n69), .CI(n76), .CO(n60), .S(n61) );
  ADDF_X1M_A9TR U40 ( .A(n78), .B(n80), .CI(n67), .CO(n62), .S(n63) );
  ADDF_X1M_A9TR U41 ( .A(n71), .B(n176), .CI(n82), .CO(n64), .S(n65) );
  ADDF_X1M_A9TR U42 ( .A(n168), .B(n160), .CI(n144), .CO(n66), .S(n67) );
  ADDF_X1M_A9TR U43 ( .A(n121), .B(n152), .CI(n136), .CO(n68), .S(n69) );
  ADDF_X1M_A9TR U45 ( .A(n77), .B(n86), .CI(n75), .CO(n72), .S(n73) );
  ADDF_X1M_A9TR U46 ( .A(n81), .B(n79), .CI(n88), .CO(n74), .S(n75) );
  ADDF_X1M_A9TR U47 ( .A(n83), .B(n92), .CI(n90), .CO(n76), .S(n77) );
  ADDF_X1M_A9TR U48 ( .A(n145), .B(n161), .CI(n153), .CO(n78), .S(n79) );
  ADDF_X1M_A9TR U49 ( .A(n137), .B(n177), .CI(n169), .CO(n80), .S(n81) );
  ADDH_X1M_A9TR U50 ( .A(n122), .B(n129), .CO(n82), .S(n83) );
  ADDF_X1M_A9TR U51 ( .A(n96), .B(n89), .CI(n87), .CO(n84), .S(n85) );
  ADDF_X1M_A9TR U52 ( .A(n98), .B(n93), .CI(n91), .CO(n86), .S(n87) );
  ADDF_X1M_A9TR U53 ( .A(n154), .B(n162), .CI(n100), .CO(n88), .S(n89) );
  ADDF_X1M_A9TR U54 ( .A(n146), .B(n178), .CI(n170), .CO(n90), .S(n91) );
  ADDH_X1M_A9TR U55 ( .A(n130), .B(n138), .CO(n92), .S(n93) );
  ADDF_X1M_A9TR U56 ( .A(n99), .B(n104), .CI(n97), .CO(n94), .S(n95) );
  ADDF_X1M_A9TR U57 ( .A(n106), .B(n171), .CI(n101), .CO(n96), .S(n97) );
  ADDF_X1M_A9TR U58 ( .A(n155), .B(n179), .CI(n163), .CO(n98), .S(n99) );
  ADDH_X1M_A9TR U59 ( .A(n139), .B(n147), .CO(n100), .S(n101) );
  ADDF_X1M_A9TR U60 ( .A(n107), .B(n110), .CI(n105), .CO(n102), .S(n103) );
  ADDF_X1M_A9TR U61 ( .A(n164), .B(n180), .CI(n172), .CO(n104), .S(n105) );
  ADDH_X1M_A9TR U62 ( .A(n148), .B(n156), .CO(n106), .S(n107) );
  ADDF_X1M_A9TR U63 ( .A(n173), .B(n181), .CI(n112), .CO(n108), .S(n109) );
  ADDH_X1M_A9TR U64 ( .A(n157), .B(n165), .CO(n110), .S(n111) );
  ADDH_X1M_A9TR U65 ( .A(n174), .B(n182), .CO(n112), .S(n113) );
  INV_X1M_A9TR U157 ( .A(a[7]), .Y(n238) );
  INV_X1M_A9TR U158 ( .A(a[6]), .Y(n239) );
  INV_X1M_A9TR U159 ( .A(n71), .Y(n243) );
  INV_X1M_A9TR U160 ( .A(a[2]), .Y(n244) );
  INV_X1M_A9TR U161 ( .A(a[1]), .Y(n245) );
  INV_X1M_A9TR U162 ( .A(a[3]), .Y(n242) );
  INV_X1M_A9TR U163 ( .A(a[4]), .Y(n241) );
  INV_X1M_A9TR U164 ( .A(a[5]), .Y(n240) );
  INV_X1M_A9TR U165 ( .A(a[0]), .Y(n246) );
  INV_X1M_A9TR U166 ( .A(b[7]), .Y(n247) );
  INV_X1M_A9TR U167 ( .A(b[0]), .Y(n254) );
  INV_X1M_A9TR U168 ( .A(b[1]), .Y(n253) );
  INV_X1M_A9TR U169 ( .A(b[2]), .Y(n252) );
  INV_X1M_A9TR U170 ( .A(b[3]), .Y(n251) );
  INV_X1M_A9TR U171 ( .A(b[4]), .Y(n250) );
  INV_X1M_A9TR U172 ( .A(b[5]), .Y(n249) );
  INV_X1M_A9TR U173 ( .A(b[6]), .Y(n248) );
  XOR2_X0P5M_A9TR U174 ( .A(n255), .B(n256), .Y(product[15]) );
  XOR2_X0P5M_A9TR U175 ( .A(n2), .B(n16), .Y(n256) );
  NAND2_X0P5A_A9TR U176 ( .A(b[7]), .B(a[8]), .Y(n255) );
  NOR2_X0P5A_A9TR U177 ( .A(n246), .B(n254), .Y(product[0]) );
  NAND2_X0P5A_A9TR U178 ( .A(b[6]), .B(a[2]), .Y(n71) );
  NOR2_X0P5A_A9TR U179 ( .A(n254), .B(n245), .Y(n183) );
  NOR2_X0P5A_A9TR U180 ( .A(n254), .B(n244), .Y(n182) );
  NOR2_X0P5A_A9TR U181 ( .A(n254), .B(n242), .Y(n181) );
  NOR2_X0P5A_A9TR U182 ( .A(n254), .B(n241), .Y(n180) );
  NOR2_X0P5A_A9TR U183 ( .A(n254), .B(n240), .Y(n179) );
  NOR2_X0P5A_A9TR U184 ( .A(n254), .B(n239), .Y(n178) );
  NOR2_X0P5A_A9TR U185 ( .A(n254), .B(n238), .Y(n177) );
  NAND2_X0P5A_A9TR U186 ( .A(b[0]), .B(a[8]), .Y(n176) );
  NOR2_X0P5A_A9TR U187 ( .A(n246), .B(n253), .Y(n175) );
  NOR2_X0P5A_A9TR U188 ( .A(n245), .B(n253), .Y(n174) );
  NOR2_X0P5A_A9TR U189 ( .A(n244), .B(n253), .Y(n173) );
  NOR2_X0P5A_A9TR U190 ( .A(n242), .B(n253), .Y(n172) );
  NOR2_X0P5A_A9TR U191 ( .A(n241), .B(n253), .Y(n171) );
  NOR2_X0P5A_A9TR U192 ( .A(n240), .B(n253), .Y(n170) );
  NOR2_X0P5A_A9TR U193 ( .A(n239), .B(n253), .Y(n169) );
  NOR2_X0P5A_A9TR U194 ( .A(n238), .B(n253), .Y(n168) );
  NAND2_X0P5A_A9TR U195 ( .A(b[1]), .B(a[8]), .Y(n167) );
  NOR2_X0P5A_A9TR U196 ( .A(n246), .B(n252), .Y(n166) );
  NOR2_X0P5A_A9TR U197 ( .A(n245), .B(n252), .Y(n165) );
  NOR2_X0P5A_A9TR U198 ( .A(n244), .B(n252), .Y(n164) );
  NOR2_X0P5A_A9TR U199 ( .A(n242), .B(n252), .Y(n163) );
  NOR2_X0P5A_A9TR U200 ( .A(n241), .B(n252), .Y(n162) );
  NOR2_X0P5A_A9TR U201 ( .A(n240), .B(n252), .Y(n161) );
  NOR2_X0P5A_A9TR U202 ( .A(n239), .B(n252), .Y(n160) );
  NOR2_X0P5A_A9TR U203 ( .A(n238), .B(n252), .Y(n159) );
  NAND2_X0P5A_A9TR U204 ( .A(b[2]), .B(a[8]), .Y(n158) );
  NOR2_X0P5A_A9TR U205 ( .A(n246), .B(n251), .Y(n157) );
  NOR2_X0P5A_A9TR U206 ( .A(n245), .B(n251), .Y(n156) );
  NOR2_X0P5A_A9TR U207 ( .A(n244), .B(n251), .Y(n155) );
  NOR2_X0P5A_A9TR U208 ( .A(n242), .B(n251), .Y(n154) );
  NOR2_X0P5A_A9TR U209 ( .A(n241), .B(n251), .Y(n153) );
  NOR2_X0P5A_A9TR U210 ( .A(n240), .B(n251), .Y(n152) );
  NOR2_X0P5A_A9TR U211 ( .A(n239), .B(n251), .Y(n151) );
  NOR2_X0P5A_A9TR U212 ( .A(n238), .B(n251), .Y(n150) );
  NAND2_X0P5A_A9TR U213 ( .A(b[3]), .B(a[8]), .Y(n149) );
  NOR2_X0P5A_A9TR U214 ( .A(n246), .B(n250), .Y(n148) );
  NOR2_X0P5A_A9TR U215 ( .A(n245), .B(n250), .Y(n147) );
  NOR2_X0P5A_A9TR U216 ( .A(n244), .B(n250), .Y(n146) );
  NOR2_X0P5A_A9TR U217 ( .A(n242), .B(n250), .Y(n145) );
  NOR2_X0P5A_A9TR U218 ( .A(n241), .B(n250), .Y(n144) );
  NOR2_X0P5A_A9TR U219 ( .A(n240), .B(n250), .Y(n143) );
  NOR2_X0P5A_A9TR U220 ( .A(n239), .B(n250), .Y(n142) );
  NOR2_X0P5A_A9TR U221 ( .A(n238), .B(n250), .Y(n141) );
  NAND2_X0P5A_A9TR U222 ( .A(b[4]), .B(a[8]), .Y(n140) );
  NOR2_X0P5A_A9TR U223 ( .A(n246), .B(n249), .Y(n139) );
  NOR2_X0P5A_A9TR U224 ( .A(n245), .B(n249), .Y(n138) );
  NOR2_X0P5A_A9TR U225 ( .A(n244), .B(n249), .Y(n137) );
  NOR2_X0P5A_A9TR U226 ( .A(n242), .B(n249), .Y(n136) );
  NOR2_X0P5A_A9TR U227 ( .A(n241), .B(n249), .Y(n135) );
  NOR2_X0P5A_A9TR U228 ( .A(n240), .B(n249), .Y(n134) );
  NOR2_X0P5A_A9TR U229 ( .A(n239), .B(n249), .Y(n133) );
  NOR2_X0P5A_A9TR U230 ( .A(n238), .B(n249), .Y(n132) );
  NAND2_X0P5A_A9TR U231 ( .A(b[5]), .B(a[8]), .Y(n131) );
  NOR2_X0P5A_A9TR U232 ( .A(n246), .B(n248), .Y(n130) );
  NOR2_X0P5A_A9TR U233 ( .A(n248), .B(n245), .Y(n129) );
  NOR2_X0P5A_A9TR U234 ( .A(n248), .B(n242), .Y(n128) );
  NOR2_X0P5A_A9TR U235 ( .A(n248), .B(n241), .Y(n127) );
  NOR2_X0P5A_A9TR U236 ( .A(n248), .B(n240), .Y(n126) );
  NOR2_X0P5A_A9TR U237 ( .A(n248), .B(n239), .Y(n125) );
  NOR2_X0P5A_A9TR U238 ( .A(n248), .B(n238), .Y(n124) );
  NAND2_X0P5A_A9TR U239 ( .A(b[6]), .B(a[8]), .Y(n123) );
  NOR2_X0P5A_A9TR U240 ( .A(n247), .B(n246), .Y(n122) );
  NOR2_X0P5A_A9TR U241 ( .A(n247), .B(n245), .Y(n121) );
  NOR2_X0P5A_A9TR U242 ( .A(n247), .B(n244), .Y(n120) );
  NOR2_X0P5A_A9TR U243 ( .A(n247), .B(n242), .Y(n119) );
  NOR2_X0P5A_A9TR U244 ( .A(n247), .B(n241), .Y(n118) );
  NOR2_X0P5A_A9TR U245 ( .A(n247), .B(n240), .Y(n117) );
  NOR2_X0P5A_A9TR U246 ( .A(n247), .B(n239), .Y(n116) );
  NOR2_X0P5A_A9TR U247 ( .A(n247), .B(n238), .Y(n115) );
endmodule


module hw2_nonpipe_DW01_add_0 ( SUM, \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , 
        \A[2] , \A[1] , \A[0] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , 
        \B[1] , \B[0]  );
  output [8:0] SUM;
  input \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[7] ,
         \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] , \B[0] ;
  wire   n1;
  wire   [7:0] A;
  wire   [7:0] B;
  wire   [7:2] carry;
  assign A[7] = \A[7] ;
  assign A[6] = \A[6] ;
  assign A[5] = \A[5] ;
  assign A[4] = \A[4] ;
  assign A[3] = \A[3] ;
  assign A[2] = \A[2] ;
  assign A[1] = \A[1] ;
  assign A[0] = \A[0] ;
  assign B[7] = \B[7] ;
  assign B[6] = \B[6] ;
  assign B[5] = \B[5] ;
  assign B[4] = \B[4] ;
  assign B[3] = \B[3] ;
  assign B[2] = \B[2] ;
  assign B[1] = \B[1] ;
  assign B[0] = \B[0] ;

  ADDF_X1M_A9TR U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(
        SUM[7]) );
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
  AND2_X1B_A9TR U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2_X0P7M_A9TR U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module hw2_nonpipe_DW_mult_uns_0 ( a, b, \product[15] , \product[14] , 
        \product[13] , \product[12] , \product[11] , \product[10] , 
        \product[9] , \product[8] , \product[7] , \product[6] , \product[5] , 
        \product[4] , \product[3] , \product[2] , \product[1] , \product[0] 
 );
  input [8:0] a;
  input [7:0] b;
  output \product[15] , \product[14] , \product[13] , \product[12] ,
         \product[11] , \product[10] , \product[9] , \product[8] ,
         \product[7] , \product[6] , \product[5] , \product[4] , \product[3] ,
         \product[2] , \product[1] , \product[0] ;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255;
  wire   [15:0] product;
  assign \product[15]  = product[15];
  assign \product[14]  = product[14];
  assign \product[13]  = product[13];
  assign \product[12]  = product[12];
  assign \product[11]  = product[11];
  assign \product[10]  = product[10];
  assign \product[9]  = product[9];
  assign \product[8]  = product[8];
  assign \product[7]  = product[7];
  assign \product[6]  = product[6];
  assign \product[5]  = product[5];
  assign \product[4]  = product[4];
  assign \product[3]  = product[3];
  assign \product[2]  = product[2];
  assign \product[1]  = product[1];
  assign \product[0]  = product[0];

  ADDF_X1M_A9TR U3 ( .A(n18), .B(n17), .CI(n3), .CO(n2), .S(product[14]) );
  ADDF_X1M_A9TR U4 ( .A(n22), .B(n19), .CI(n4), .CO(n3), .S(product[13]) );
  ADDF_X1M_A9TR U5 ( .A(n23), .B(n28), .CI(n5), .CO(n4), .S(product[12]) );
  ADDF_X1M_A9TR U6 ( .A(n29), .B(n36), .CI(n6), .CO(n5), .S(product[11]) );
  ADDF_X1M_A9TR U7 ( .A(n37), .B(n46), .CI(n7), .CO(n6), .S(product[10]) );
  ADDF_X1M_A9TR U8 ( .A(n47), .B(n58), .CI(n8), .CO(n7), .S(product[9]) );
  ADDF_X1M_A9TR U9 ( .A(n59), .B(n70), .CI(n9), .CO(n8), .S(product[8]) );
  ADDF_X1M_A9TR U10 ( .A(n71), .B(n82), .CI(n10), .CO(n9), .S(product[7]) );
  ADDF_X1M_A9TR U11 ( .A(n83), .B(n92), .CI(n11), .CO(n10), .S(product[6]) );
  ADDF_X1M_A9TR U12 ( .A(n93), .B(n100), .CI(n12), .CO(n11), .S(product[5]) );
  ADDF_X1M_A9TR U13 ( .A(n101), .B(n106), .CI(n13), .CO(n12), .S(product[4])
         );
  ADDF_X1M_A9TR U14 ( .A(n107), .B(n109), .CI(n14), .CO(n13), .S(product[3])
         );
  ADDF_X1M_A9TR U15 ( .A(n15), .B(n165), .CI(n111), .CO(n14), .S(product[2])
         );
  ADDH_X1M_A9TR U16 ( .A(n182), .B(n174), .CO(n15), .S(product[1]) );
  ADDF_X1M_A9TR U17 ( .A(n113), .B(n121), .CI(n20), .CO(n16), .S(n17) );
  ADDF_X1M_A9TR U18 ( .A(n21), .B(n26), .CI(n24), .CO(n18), .S(n19) );
  ADDF_X1M_A9TR U19 ( .A(n114), .B(n130), .CI(n122), .CO(n20), .S(n21) );
  ADDF_X1M_A9TR U20 ( .A(n25), .B(n32), .CI(n30), .CO(n22), .S(n23) );
  ADDF_X1M_A9TR U21 ( .A(n34), .B(n131), .CI(n27), .CO(n24), .S(n25) );
  ADDF_X1M_A9TR U22 ( .A(n115), .B(n139), .CI(n123), .CO(n26), .S(n27) );
  ADDF_X1M_A9TR U23 ( .A(n38), .B(n33), .CI(n31), .CO(n28), .S(n29) );
  ADDF_X1M_A9TR U24 ( .A(n35), .B(n42), .CI(n40), .CO(n30), .S(n31) );
  ADDF_X1M_A9TR U25 ( .A(n132), .B(n140), .CI(n44), .CO(n32), .S(n33) );
  ADDF_X1M_A9TR U26 ( .A(n116), .B(n148), .CI(n124), .CO(n34), .S(n35) );
  ADDF_X1M_A9TR U27 ( .A(n48), .B(n41), .CI(n39), .CO(n36), .S(n37) );
  ADDF_X1M_A9TR U28 ( .A(n52), .B(n45), .CI(n50), .CO(n38), .S(n39) );
  ADDF_X1M_A9TR U29 ( .A(n54), .B(n56), .CI(n43), .CO(n40), .S(n41) );
  ADDF_X1M_A9TR U30 ( .A(n141), .B(n133), .CI(n149), .CO(n42), .S(n43) );
  ADDF_X1M_A9TR U31 ( .A(n117), .B(n157), .CI(n125), .CO(n44), .S(n45) );
  ADDF_X1M_A9TR U32 ( .A(n60), .B(n51), .CI(n49), .CO(n46), .S(n47) );
  ADDF_X1M_A9TR U33 ( .A(n53), .B(n64), .CI(n62), .CO(n48), .S(n49) );
  ADDF_X1M_A9TR U34 ( .A(n66), .B(n68), .CI(n55), .CO(n50), .S(n51) );
  ADDF_X1M_A9TR U35 ( .A(n134), .B(n142), .CI(n57), .CO(n52), .S(n53) );
  ADDF_X1M_A9TR U36 ( .A(n166), .B(n150), .CI(n158), .CO(n54), .S(n55) );
  ADDH_X1M_A9TR U37 ( .A(n118), .B(n126), .CO(n56), .S(n57) );
  ADDF_X1M_A9TR U38 ( .A(n63), .B(n72), .CI(n61), .CO(n58), .S(n59) );
  ADDF_X1M_A9TR U39 ( .A(n65), .B(n69), .CI(n74), .CO(n60), .S(n61) );
  ADDF_X1M_A9TR U40 ( .A(n76), .B(n78), .CI(n67), .CO(n62), .S(n63) );
  ADDF_X1M_A9TR U41 ( .A(n159), .B(n167), .CI(n80), .CO(n64), .S(n65) );
  ADDF_X1M_A9TR U42 ( .A(n143), .B(n175), .CI(n151), .CO(n66), .S(n67) );
  ADDF_X1M_A9TR U43 ( .A(n119), .B(n127), .CI(n135), .CO(n68), .S(n69) );
  ADDF_X1M_A9TR U44 ( .A(n75), .B(n84), .CI(n73), .CO(n70), .S(n71) );
  ADDF_X1M_A9TR U45 ( .A(n79), .B(n77), .CI(n86), .CO(n72), .S(n73) );
  ADDF_X1M_A9TR U46 ( .A(n81), .B(n90), .CI(n88), .CO(n74), .S(n75) );
  ADDF_X1M_A9TR U47 ( .A(n144), .B(n160), .CI(n152), .CO(n76), .S(n77) );
  ADDF_X1M_A9TR U48 ( .A(n136), .B(n176), .CI(n168), .CO(n78), .S(n79) );
  ADDH_X1M_A9TR U49 ( .A(n120), .B(n128), .CO(n80), .S(n81) );
  ADDF_X1M_A9TR U50 ( .A(n94), .B(n87), .CI(n85), .CO(n82), .S(n83) );
  ADDF_X1M_A9TR U51 ( .A(n96), .B(n91), .CI(n89), .CO(n84), .S(n85) );
  ADDF_X1M_A9TR U52 ( .A(n153), .B(n161), .CI(n98), .CO(n86), .S(n87) );
  ADDF_X1M_A9TR U53 ( .A(n145), .B(n177), .CI(n169), .CO(n88), .S(n89) );
  ADDH_X1M_A9TR U54 ( .A(n129), .B(n137), .CO(n90), .S(n91) );
  ADDF_X1M_A9TR U55 ( .A(n97), .B(n102), .CI(n95), .CO(n92), .S(n93) );
  ADDF_X1M_A9TR U56 ( .A(n104), .B(n170), .CI(n99), .CO(n94), .S(n95) );
  ADDF_X1M_A9TR U57 ( .A(n154), .B(n178), .CI(n162), .CO(n96), .S(n97) );
  ADDH_X1M_A9TR U58 ( .A(n138), .B(n146), .CO(n98), .S(n99) );
  ADDF_X1M_A9TR U59 ( .A(n105), .B(n108), .CI(n103), .CO(n100), .S(n101) );
  ADDF_X1M_A9TR U60 ( .A(n163), .B(n179), .CI(n171), .CO(n102), .S(n103) );
  ADDH_X1M_A9TR U61 ( .A(n147), .B(n155), .CO(n104), .S(n105) );
  ADDF_X1M_A9TR U62 ( .A(n172), .B(n180), .CI(n110), .CO(n106), .S(n107) );
  ADDH_X1M_A9TR U63 ( .A(n156), .B(n164), .CO(n108), .S(n109) );
  ADDH_X1M_A9TR U64 ( .A(n173), .B(n181), .CO(n110), .S(n111) );
  INV_X1M_A9TR U156 ( .A(a[7]), .Y(n238) );
  INV_X1M_A9TR U157 ( .A(a[6]), .Y(n239) );
  INV_X1M_A9TR U158 ( .A(a[8]), .Y(n237) );
  INV_X1M_A9TR U159 ( .A(a[1]), .Y(n244) );
  INV_X1M_A9TR U160 ( .A(a[2]), .Y(n243) );
  INV_X1M_A9TR U161 ( .A(a[3]), .Y(n242) );
  INV_X1M_A9TR U162 ( .A(a[4]), .Y(n241) );
  INV_X1M_A9TR U163 ( .A(a[5]), .Y(n240) );
  INV_X1M_A9TR U164 ( .A(a[0]), .Y(n245) );
  INV_X1M_A9TR U165 ( .A(b[7]), .Y(n246) );
  INV_X1M_A9TR U166 ( .A(b[0]), .Y(n253) );
  INV_X1M_A9TR U167 ( .A(b[1]), .Y(n252) );
  INV_X1M_A9TR U168 ( .A(b[2]), .Y(n251) );
  INV_X1M_A9TR U169 ( .A(b[3]), .Y(n250) );
  INV_X1M_A9TR U170 ( .A(b[4]), .Y(n249) );
  INV_X1M_A9TR U171 ( .A(b[5]), .Y(n248) );
  INV_X1M_A9TR U172 ( .A(b[6]), .Y(n247) );
  XOR2_X0P5M_A9TR U173 ( .A(n254), .B(n255), .Y(product[15]) );
  XNOR2_X0P5M_A9TR U174 ( .A(n2), .B(n16), .Y(n255) );
  NAND2_X0P5A_A9TR U175 ( .A(b[7]), .B(a[8]), .Y(n254) );
  NOR2_X0P5A_A9TR U176 ( .A(n245), .B(n253), .Y(product[0]) );
  NOR2_X0P5A_A9TR U177 ( .A(n253), .B(n244), .Y(n182) );
  NOR2_X0P5A_A9TR U178 ( .A(n253), .B(n243), .Y(n181) );
  NOR2_X0P5A_A9TR U179 ( .A(n253), .B(n242), .Y(n180) );
  NOR2_X0P5A_A9TR U180 ( .A(n253), .B(n241), .Y(n179) );
  NOR2_X0P5A_A9TR U181 ( .A(n253), .B(n240), .Y(n178) );
  NOR2_X0P5A_A9TR U182 ( .A(n253), .B(n239), .Y(n177) );
  NOR2_X0P5A_A9TR U183 ( .A(n253), .B(n238), .Y(n176) );
  NOR2_X0P5A_A9TR U184 ( .A(n237), .B(n253), .Y(n175) );
  NOR2_X0P5A_A9TR U185 ( .A(n245), .B(n252), .Y(n174) );
  NOR2_X0P5A_A9TR U186 ( .A(n244), .B(n252), .Y(n173) );
  NOR2_X0P5A_A9TR U187 ( .A(n243), .B(n252), .Y(n172) );
  NOR2_X0P5A_A9TR U188 ( .A(n242), .B(n252), .Y(n171) );
  NOR2_X0P5A_A9TR U189 ( .A(n241), .B(n252), .Y(n170) );
  NOR2_X0P5A_A9TR U190 ( .A(n240), .B(n252), .Y(n169) );
  NOR2_X0P5A_A9TR U191 ( .A(n239), .B(n252), .Y(n168) );
  NOR2_X0P5A_A9TR U192 ( .A(n238), .B(n252), .Y(n167) );
  NOR2_X0P5A_A9TR U193 ( .A(n237), .B(n252), .Y(n166) );
  NOR2_X0P5A_A9TR U194 ( .A(n245), .B(n251), .Y(n165) );
  NOR2_X0P5A_A9TR U195 ( .A(n244), .B(n251), .Y(n164) );
  NOR2_X0P5A_A9TR U196 ( .A(n243), .B(n251), .Y(n163) );
  NOR2_X0P5A_A9TR U197 ( .A(n242), .B(n251), .Y(n162) );
  NOR2_X0P5A_A9TR U198 ( .A(n241), .B(n251), .Y(n161) );
  NOR2_X0P5A_A9TR U199 ( .A(n240), .B(n251), .Y(n160) );
  NOR2_X0P5A_A9TR U200 ( .A(n239), .B(n251), .Y(n159) );
  NOR2_X0P5A_A9TR U201 ( .A(n238), .B(n251), .Y(n158) );
  NOR2_X0P5A_A9TR U202 ( .A(n237), .B(n251), .Y(n157) );
  NOR2_X0P5A_A9TR U203 ( .A(n245), .B(n250), .Y(n156) );
  NOR2_X0P5A_A9TR U204 ( .A(n244), .B(n250), .Y(n155) );
  NOR2_X0P5A_A9TR U205 ( .A(n243), .B(n250), .Y(n154) );
  NOR2_X0P5A_A9TR U206 ( .A(n242), .B(n250), .Y(n153) );
  NOR2_X0P5A_A9TR U207 ( .A(n241), .B(n250), .Y(n152) );
  NOR2_X0P5A_A9TR U208 ( .A(n240), .B(n250), .Y(n151) );
  NOR2_X0P5A_A9TR U209 ( .A(n239), .B(n250), .Y(n150) );
  NOR2_X0P5A_A9TR U210 ( .A(n238), .B(n250), .Y(n149) );
  NOR2_X0P5A_A9TR U211 ( .A(n237), .B(n250), .Y(n148) );
  NOR2_X0P5A_A9TR U212 ( .A(n245), .B(n249), .Y(n147) );
  NOR2_X0P5A_A9TR U213 ( .A(n244), .B(n249), .Y(n146) );
  NOR2_X0P5A_A9TR U214 ( .A(n243), .B(n249), .Y(n145) );
  NOR2_X0P5A_A9TR U215 ( .A(n242), .B(n249), .Y(n144) );
  NOR2_X0P5A_A9TR U216 ( .A(n241), .B(n249), .Y(n143) );
  NOR2_X0P5A_A9TR U217 ( .A(n240), .B(n249), .Y(n142) );
  NOR2_X0P5A_A9TR U218 ( .A(n239), .B(n249), .Y(n141) );
  NOR2_X0P5A_A9TR U219 ( .A(n238), .B(n249), .Y(n140) );
  NOR2_X0P5A_A9TR U220 ( .A(n237), .B(n249), .Y(n139) );
  NOR2_X0P5A_A9TR U221 ( .A(n245), .B(n248), .Y(n138) );
  NOR2_X0P5A_A9TR U222 ( .A(n244), .B(n248), .Y(n137) );
  NOR2_X0P5A_A9TR U223 ( .A(n243), .B(n248), .Y(n136) );
  NOR2_X0P5A_A9TR U224 ( .A(n242), .B(n248), .Y(n135) );
  NOR2_X0P5A_A9TR U225 ( .A(n241), .B(n248), .Y(n134) );
  NOR2_X0P5A_A9TR U226 ( .A(n240), .B(n248), .Y(n133) );
  NOR2_X0P5A_A9TR U227 ( .A(n239), .B(n248), .Y(n132) );
  NOR2_X0P5A_A9TR U228 ( .A(n238), .B(n248), .Y(n131) );
  NOR2_X0P5A_A9TR U229 ( .A(n237), .B(n248), .Y(n130) );
  NOR2_X0P5A_A9TR U230 ( .A(n245), .B(n247), .Y(n129) );
  NOR2_X0P5A_A9TR U231 ( .A(n244), .B(n247), .Y(n128) );
  NOR2_X0P5A_A9TR U232 ( .A(n243), .B(n247), .Y(n127) );
  NOR2_X0P5A_A9TR U233 ( .A(n242), .B(n247), .Y(n126) );
  NOR2_X0P5A_A9TR U234 ( .A(n241), .B(n247), .Y(n125) );
  NOR2_X0P5A_A9TR U235 ( .A(n240), .B(n247), .Y(n124) );
  NOR2_X0P5A_A9TR U236 ( .A(n239), .B(n247), .Y(n123) );
  NOR2_X0P5A_A9TR U237 ( .A(n238), .B(n247), .Y(n122) );
  NOR2_X0P5A_A9TR U238 ( .A(n237), .B(n247), .Y(n121) );
  NOR2_X0P5A_A9TR U239 ( .A(n246), .B(n245), .Y(n120) );
  NOR2_X0P5A_A9TR U240 ( .A(n246), .B(n244), .Y(n119) );
  NOR2_X0P5A_A9TR U241 ( .A(n246), .B(n243), .Y(n118) );
  NOR2_X0P5A_A9TR U242 ( .A(n246), .B(n242), .Y(n117) );
  NOR2_X0P5A_A9TR U243 ( .A(n246), .B(n241), .Y(n116) );
  NOR2_X0P5A_A9TR U244 ( .A(n246), .B(n240), .Y(n115) );
  NOR2_X0P5A_A9TR U245 ( .A(n246), .B(n239), .Y(n114) );
  NOR2_X0P5A_A9TR U246 ( .A(n246), .B(n238), .Y(n113) );
endmodule


module hw2_nonpipe ( a, b, c, s, d );
  input [7:0] a;
  input [7:0] b;
  input [7:0] c;
  output [15:0] d;
  input s;
  wire   N12, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24, N25,
         N26, N27, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N48,
         N49, N50, N51, N52, N36, N35, N34, N33, N32, N31, N30, N29, N28, N9,
         N8, N7, N6, N5, N4, N3, N11, N10, n410, n53, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5,
         SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7,
         SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9;

  hw2_nonpipe_DW01_sub_0 sub_10 ( .DIFF({N36, N35, N34, N33, N32, N31, N30, 
        N29, N28}), .\A[7] (a[7]), .\A[6] (a[6]), .\A[5] (a[5]), .\A[4] (a[4]), 
        .\A[3] (a[3]), .\A[2] (a[2]), .\A[1] (a[1]), .\A[0] (a[0]), .\B[7] (
        b[7]), .\B[6] (b[6]), .\B[5] (b[5]), .\B[4] (b[4]), .\B[3] (b[3]), 
        .\B[2] (b[2]), .\B[1] (b[1]), .\B[0] (b[0]) );
  hw2_nonpipe_DW_mult_uns_1 mult_10 ( .b(c), .\a[8] (N36), .\a[7] (N35), 
        .\a[6] (N34), .\a[5] (N33), .\a[4] (N32), .\a[3] (N31), .\a[2] (N30), 
        .\a[1] (N29), .\a[0] (N28), .\product[15] (N52), .\product[14] (N51), 
        .\product[13] (N50), .\product[12] (N49), .\product[11] (N48), 
        .\product[10] (N47), .\product[9] (N46), .\product[8] (N45), 
        .\product[7] (N44), .\product[6] (N43), .\product[5] (N42), 
        .\product[4] (N41), .\product[3] (N40), .\product[2] (N39), 
        .\product[1] (N38), .\product[0] (N37) );
  hw2_nonpipe_DW01_add_0 add_8 ( .SUM({N11, N10, N9, N8, N7, N6, N5, N4, N3}), 
        .\A[7] (a[7]), .\A[6] (a[6]), .\A[5] (a[5]), .\A[4] (a[4]), .\A[3] (
        a[3]), .\A[2] (a[2]), .\A[1] (a[1]), .\A[0] (a[0]), .\B[7] (b[7]), 
        .\B[6] (b[6]), .\B[5] (b[5]), .\B[4] (b[4]), .\B[3] (b[3]), .\B[2] (
        b[2]), .\B[1] (b[1]), .\B[0] (b[0]) );
  hw2_nonpipe_DW_mult_uns_0 mult_8 ( .a({N11, N10, N9, N8, N7, N6, N5, N4, N3}), .b(c), .\product[15] (N27), .\product[14] (N26), .\product[13] (N25), 
        .\product[12] (N24), .\product[11] (N23), .\product[10] (N22), 
        .\product[9] (N21), .\product[8] (N20), .\product[7] (N19), 
        .\product[6] (N18), .\product[5] (N17), .\product[4] (N16), 
        .\product[3] (N15), .\product[2] (N14), .\product[1] (N13), 
        .\product[0] (N12) );
  AO22_X1M_A9TR U18 ( .A0(N52), .A1(n410), .B0(N27), .B1(s), .Y(d[15]) );
  AO22_X1M_A9TR U19 ( .A0(N42), .A1(n410), .B0(N17), .B1(s), .Y(d[5]) );
  AO22_X1M_A9TR U20 ( .A0(N43), .A1(n410), .B0(N18), .B1(s), .Y(d[6]) );
  AO22_X1M_A9TR U21 ( .A0(N44), .A1(n410), .B0(N19), .B1(s), .Y(d[7]) );
  AO22_X1M_A9TR U22 ( .A0(N45), .A1(n410), .B0(N20), .B1(s), .Y(d[8]) );
  AO22_X1M_A9TR U23 ( .A0(N46), .A1(n410), .B0(s), .B1(N21), .Y(d[9]) );
  AO22_X1M_A9TR U24 ( .A0(N47), .A1(n410), .B0(N22), .B1(s), .Y(d[10]) );
  AO22_X1M_A9TR U25 ( .A0(N48), .A1(n410), .B0(N23), .B1(s), .Y(d[11]) );
  AO22_X1M_A9TR U26 ( .A0(N49), .A1(n410), .B0(N24), .B1(s), .Y(d[12]) );
  AO22_X1M_A9TR U27 ( .A0(N50), .A1(n410), .B0(N25), .B1(s), .Y(d[13]) );
  AO22_X1M_A9TR U28 ( .A0(N51), .A1(n410), .B0(N26), .B1(s), .Y(d[14]) );
  INV_X1M_A9TR U29 ( .A(s), .Y(n410) );
  AO22_X1M_A9TR U30 ( .A0(N37), .A1(n410), .B0(N12), .B1(s), .Y(d[0]) );
  AO22_X1M_A9TR U31 ( .A0(N39), .A1(n410), .B0(N14), .B1(s), .Y(d[2]) );
  AO22_X1M_A9TR U32 ( .A0(N40), .A1(n410), .B0(N15), .B1(s), .Y(d[3]) );
  AO22_X1M_A9TR U33 ( .A0(N41), .A1(n410), .B0(N16), .B1(s), .Y(d[4]) );
  AO22_X1M_A9TR U34 ( .A0(N38), .A1(n410), .B0(N13), .B1(s), .Y(d[1]) );
  TIELO_X1M_A9TR U35 ( .Y(n53) );
endmodule

