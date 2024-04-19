`ifndef __DATAARY__
`define __DATAARY__
module data_array_wrapper (
    input CK,
    input CS,
    input OE,
    input [15:0] WEB,
    input [5:0] A,
    input [127:0] DI,
    output [127:0] DO
);

  data_array i_data_array (
      .A0   (A[0]),
      .A1   (A[1]),
      .A2   (A[2]),
      .A3   (A[3]),
      .A4   (A[4]),
      .A5   (A[5]),
      .DO0  (DO[0]),
      .DO1  (DO[1]),
      .DO2  (DO[2]),
      .DO3  (DO[3]),
      .DO4  (DO[4]),
      .DO5  (DO[5]),
      .DO6  (DO[6]),
      .DO7  (DO[7]),
      .DO8  (DO[8]),
      .DO9  (DO[9]),
      .DO10 (DO[10]),
      .DO11 (DO[11]),
      .DO12 (DO[12]),
      .DO13 (DO[13]),
      .DO14 (DO[14]),
      .DO15 (DO[15]),
      .DO16 (DO[16]),
      .DO17 (DO[17]),
      .DO18 (DO[18]),
      .DO19 (DO[19]),
      .DO20 (DO[20]),
      .DO21 (DO[21]),
      .DO22 (DO[22]),
      .DO23 (DO[23]),
      .DO24 (DO[24]),
      .DO25 (DO[25]),
      .DO26 (DO[26]),
      .DO27 (DO[27]),
      .DO28 (DO[28]),
      .DO29 (DO[29]),
      .DO30 (DO[30]),
      .DO31 (DO[31]),
      .DO32 (DO[32]),
      .DO33 (DO[33]),
      .DO34 (DO[34]),
      .DO35 (DO[35]),
      .DO36 (DO[36]),
      .DO37 (DO[37]),
      .DO38 (DO[38]),
      .DO39 (DO[39]),
      .DO40 (DO[40]),
      .DO41 (DO[41]),
      .DO42 (DO[42]),
      .DO43 (DO[43]),
      .DO44 (DO[44]),
      .DO45 (DO[45]),
      .DO46 (DO[46]),
      .DO47 (DO[47]),
      .DO48 (DO[48]),
      .DO49 (DO[49]),
      .DO50 (DO[50]),
      .DO51 (DO[51]),
      .DO52 (DO[52]),
      .DO53 (DO[53]),
      .DO54 (DO[54]),
      .DO55 (DO[55]),
      .DO56 (DO[56]),
      .DO57 (DO[57]),
      .DO58 (DO[58]),
      .DO59 (DO[59]),
      .DO60 (DO[60]),
      .DO61 (DO[61]),
      .DO62 (DO[62]),
      .DO63 (DO[63]),
      .DO64 (DO[64]),
      .DO65 (DO[65]),
      .DO66 (DO[66]),
      .DO67 (DO[67]),
      .DO68 (DO[68]),
      .DO69 (DO[69]),
      .DO70 (DO[70]),
      .DO71 (DO[71]),
      .DO72 (DO[72]),
      .DO73 (DO[73]),
      .DO74 (DO[74]),
      .DO75 (DO[75]),
      .DO76 (DO[76]),
      .DO77 (DO[77]),
      .DO78 (DO[78]),
      .DO79 (DO[79]),
      .DO80 (DO[80]),
      .DO81 (DO[81]),
      .DO82 (DO[82]),
      .DO83 (DO[83]),
      .DO84 (DO[84]),
      .DO85 (DO[85]),
      .DO86 (DO[86]),
      .DO87 (DO[87]),
      .DO88 (DO[88]),
      .DO89 (DO[89]),
      .DO90 (DO[90]),
      .DO91 (DO[91]),
      .DO92 (DO[92]),
      .DO93 (DO[93]),
      .DO94 (DO[94]),
      .DO95 (DO[95]),
      .DO96 (DO[96]),
      .DO97 (DO[97]),
      .DO98 (DO[98]),
      .DO99 (DO[99]),
      .DO100(DO[100]),
      .DO102(DO[102]),
      .DO101(DO[101]),
      .DO103(DO[103]),
      .DO104(DO[104]),
      .DO105(DO[105]),
      .DO106(DO[106]),
      .DO107(DO[107]),
      .DO108(DO[108]),
      .DO109(DO[109]),
      .DO110(DO[110]),
      .DO112(DO[112]),
      .DO111(DO[111]),
      .DO113(DO[113]),
      .DO114(DO[114]),
      .DO115(DO[115]),
      .DO116(DO[116]),
      .DO117(DO[117]),
      .DO118(DO[118]),
      .DO119(DO[119]),
      .DO120(DO[120]),
      .DO121(DO[121]),
      .DO122(DO[122]),
      .DO123(DO[123]),
      .DO124(DO[124]),
      .DO125(DO[125]),
      .DO126(DO[126]),
      .DO127(DO[127]),
      .DI0  (DI[0]),
      .DI1  (DI[1]),
      .DI2  (DI[2]),
      .DI3  (DI[3]),
      .DI4  (DI[4]),
      .DI5  (DI[5]),
      .DI6  (DI[6]),
      .DI7  (DI[7]),
      .DI8  (DI[8]),
      .DI9  (DI[9]),
      .DI10 (DI[10]),
      .DI11 (DI[11]),
      .DI12 (DI[12]),
      .DI13 (DI[13]),
      .DI14 (DI[14]),
      .DI15 (DI[15]),
      .DI16 (DI[16]),
      .DI17 (DI[17]),
      .DI18 (DI[18]),
      .DI19 (DI[19]),
      .DI20 (DI[20]),
      .DI21 (DI[21]),
      .DI22 (DI[22]),
      .DI23 (DI[23]),
      .DI24 (DI[24]),
      .DI25 (DI[25]),
      .DI26 (DI[26]),
      .DI27 (DI[27]),
      .DI28 (DI[28]),
      .DI29 (DI[29]),
      .DI30 (DI[30]),
      .DI31 (DI[31]),
      .DI32 (DI[32]),
      .DI33 (DI[33]),
      .DI34 (DI[34]),
      .DI35 (DI[35]),
      .DI36 (DI[36]),
      .DI37 (DI[37]),
      .DI38 (DI[38]),
      .DI39 (DI[39]),
      .DI40 (DI[40]),
      .DI41 (DI[41]),
      .DI42 (DI[42]),
      .DI43 (DI[43]),
      .DI44 (DI[44]),
      .DI45 (DI[45]),
      .DI46 (DI[46]),
      .DI47 (DI[47]),
      .DI48 (DI[48]),
      .DI49 (DI[49]),
      .DI50 (DI[50]),
      .DI51 (DI[51]),
      .DI52 (DI[52]),
      .DI53 (DI[53]),
      .DI54 (DI[54]),
      .DI55 (DI[55]),
      .DI56 (DI[56]),
      .DI57 (DI[57]),
      .DI58 (DI[58]),
      .DI59 (DI[59]),
      .DI60 (DI[60]),
      .DI61 (DI[61]),
      .DI62 (DI[62]),
      .DI63 (DI[63]),
      .DI64 (DI[64]),
      .DI65 (DI[65]),
      .DI66 (DI[66]),
      .DI67 (DI[67]),
      .DI68 (DI[68]),
      .DI69 (DI[69]),
      .DI70 (DI[70]),
      .DI71 (DI[71]),
      .DI72 (DI[72]),
      .DI73 (DI[73]),
      .DI74 (DI[74]),
      .DI75 (DI[75]),
      .DI76 (DI[76]),
      .DI77 (DI[77]),
      .DI78 (DI[78]),
      .DI79 (DI[79]),
      .DI80 (DI[80]),
      .DI81 (DI[81]),
      .DI82 (DI[82]),
      .DI83 (DI[83]),
      .DI84 (DI[84]),
      .DI85 (DI[85]),
      .DI86 (DI[86]),
      .DI87 (DI[87]),
      .DI88 (DI[88]),
      .DI89 (DI[89]),
      .DI90 (DI[90]),
      .DI91 (DI[91]),
      .DI92 (DI[92]),
      .DI93 (DI[93]),
      .DI94 (DI[94]),
      .DI95 (DI[95]),
      .DI96 (DI[96]),
      .DI97 (DI[97]),
      .DI98 (DI[98]),
      .DI99 (DI[99]),
      .DI100(DI[100]),
      .DI102(DI[102]),
      .DI101(DI[101]),
      .DI103(DI[103]),
      .DI104(DI[104]),
      .DI105(DI[105]),
      .DI106(DI[106]),
      .DI107(DI[107]),
      .DI108(DI[108]),
      .DI109(DI[109]),
      .DI110(DI[110]),
      .DI112(DI[112]),
      .DI111(DI[111]),
      .DI113(DI[113]),
      .DI114(DI[114]),
      .DI115(DI[115]),
      .DI116(DI[116]),
      .DI117(DI[117]),
      .DI118(DI[118]),
      .DI119(DI[119]),
      .DI120(DI[120]),
      .DI121(DI[121]),
      .DI122(DI[122]),
      .DI123(DI[123]),
      .DI124(DI[124]),
      .DI125(DI[125]),
      .DI126(DI[126]),
      .DI127(DI[127]),
      .CK   (CK),
      .WEB0 (WEB[0]),
      .WEB1 (WEB[1]),
      .WEB2 (WEB[2]),
      .WEB3 (WEB[3]),
      .WEB4 (WEB[4]),
      .WEB5 (WEB[5]),
      .WEB6 (WEB[6]),
      .WEB7 (WEB[7]),
      .WEB8 (WEB[8]),
      .WEB9 (WEB[9]),
      .WEB10(WEB[10]),
      .WEB11(WEB[11]),
      .WEB12(WEB[12]),
      .WEB13(WEB[13]),
      .WEB14(WEB[14]),
      .WEB15(WEB[15]),
      .OE   (OE),
      .CS   (CS)
  );

endmodule
`endif
