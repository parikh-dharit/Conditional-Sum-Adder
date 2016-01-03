module condSumAdder16(Sum, Cout, x, y, Cin);
	input Cin;
	input [15:0] x;
	input [15:0] y;
	output wire [15:0] Sum;
	output wire Cout;
	
	wire S00010; //Naming [ 'S'um or 'C'arryout][ Number( 00, 01,..., 15)][ Block width( 01, 02, 04, 08, 16)][ Carry In( 0, 1)]
	wire S01010;
	wire S02010;
	wire S03010;
	wire S04010;
	wire S05010;
	wire S06010;
	wire S07010;
	wire S08010;
	wire S09010;
	wire S10010;
	wire S11010;
	wire S12010;
	wire S13010;
	wire S14010;
	wire S15010;
	
	wire C00010; // carry
	wire C01010;
	wire C02010;
	wire C03010;
	wire C04010;
	wire C05010;
	wire C06010;
	wire C07010;
	wire C08010;
	wire C09010;
	wire C10010;
	wire C11010;
	wire C12010;
	wire C13010;
	wire C14010;
	wire C15010;
	
	
	wire S00011; //block width 1 and carry in 1
	wire S01011;
	wire S02011;
	wire S03011;
	wire S04011;
	wire S05011;
	wire S06011;
	wire S07011;
	wire S08011;
	wire S09011;
	wire S10011;
	wire S11011;
	wire S12011;
	wire S13011;
	wire S14011;
	wire S15011;
	
	wire C00011;// carry
	wire C01011;
	wire C02011;
	wire C03011;
	wire C04011;
	wire C05011;
	wire C06011;
	wire C07011;
	wire C08011;
	wire C09011;
	wire C10011;
	wire C11011;
	wire C12011;
	wire C13011;
	wire C14011;
	wire C15011;
	
	
	wire [1:0] S00020; //block width 2 and carry in 0
	wire [1:0] S01020;
	wire [1:0] S02020;
	wire [1:0] S03020;
	wire [1:0] S04020;
	wire [1:0] S05020;
	wire [1:0] S06020;
	wire [1:0] S07020;
	
	wire C00020; // carry
	wire C01020;
	wire C02020;
	wire C03020;
	wire C04020;
	wire C05020;
	wire C06020;
	wire C07020;
	
	
	wire [1:0] S00021; //block width 2 and carry in 1
	wire [1:0] S01021;
	wire [1:0] S02021;
	wire [1:0] S03021;
	wire [1:0] S04021;
	wire [1:0] S05021;
	wire [1:0] S06021;
	wire [1:0] S07021;
	
	wire C00021;// carry
	wire C01021;
	wire C02021;
	wire C03021;
	wire C04021;
	wire C05021;
	wire C06021;
	wire C07021;
	
	
	wire [3:0] S00040; //block width 4 and carry in 0
	wire [3:0] S01040;
	wire [3:0] S02040;
	wire [3:0] S03040;
	
	wire C00040; // carry
	wire C01040;
	wire C02040;
	wire C03040;
	
	
	wire [3:0] S00041; //block width 4 and carry in 1
	wire [3:0] S01041;
	wire [3:0] S02041;
	wire [3:0] S03041;
	
	wire C00041;// carry
	wire C01041;
	wire C02041;
	wire C03041;
	
	
	wire [7:0] S00080; //block width 8 and carry in 0
	wire [7:0] S01080;
	
	wire C00080; // carry
	wire C01080;
	
	
	wire [7:0] S00081; //block width 8 and carry in 1
	wire [7:0] S01081;
	
	wire C00081;// carry
	wire C01081;
	
	
	wire [15:0] S00160; //block width 16 and carry in 0
	
	wire C00160; // carry
	
	
	wire [15:0] S00161; //block width 16 and carry in 1
	
	wire C00161;// carry

	
	wire tempC01;
	wire tempC02;
	wire tempC03;
	wire tempC04;
	wire tempC05;
	wire tempC06;
	wire tempC07;
	wire tempC08;
	wire tempC09;
	wire tempC10;
	wire tempC11;
	wire tempC12;
	wire tempC13;
	wire tempC14;
	wire tempC15;
	wire tempC16;
	wire tempC17;
	wire tempC18;
	wire tempC19;
	wire tempC20;
	wire tempC21;
	wire tempC22;
	wire tempC23;
	wire tempC24;
	wire tempC25;
	wire tempC26;
	wire tempC27;
	wire tempC28;
	wire tempC29;
	wire tempC30;
	

	//full adder for cin 0 
	fullAdder1 inst01(S00010, C00010, x[0], y[0], 1'b0);
	fullAdder1 inst02(S01010, C01010, x[1], y[1], 1'b0);
	fullAdder1 inst03(S02010, C02010, x[2], y[2], 1'b0);
	fullAdder1 inst04(S03010, C03010, x[3], y[3], 1'b0);
	fullAdder1 inst05(S04010, C04010, x[4], y[4], 1'b0);
	fullAdder1 inst06(S05010, C05010, x[5], y[5], 1'b0);
	fullAdder1 inst07(S06010, C06010, x[6], y[6], 1'b0);
	fullAdder1 inst08(S07010, C07010, x[7], y[7], 1'b0);
	fullAdder1 inst09(S08010, C08010, x[8], y[8], 1'b0);
	fullAdder1 inst10(S09010, C09010, x[9], y[9], 1'b0);
	fullAdder1 inst11(S10010, C10010, x[10], y[10], 1'b0);
	fullAdder1 inst12(S11010, C11010, x[11], y[11], 1'b0);
	fullAdder1 inst13(S12010, C12010, x[12], y[12], 1'b0);
	fullAdder1 inst14(S13010, C13010, x[13], y[13], 1'b0);
	fullAdder1 inst15(S14010, C14010, x[14], y[14], 1'b0);
	fullAdder1 inst16(S15010, C15010, x[15], y[15], 1'b0);
	
	//full adder for cin 1 
	fullAdder1 inst17(S00011, C00011, x[0], y[0], 1'b1);
	fullAdder1 inst18(S01011, C01011, x[1], y[1], 1'b1);
	fullAdder1 inst19(S02011, C02011, x[2], y[2], 1'b1);
	fullAdder1 inst20(S03011, C03011, x[3], y[3], 1'b1);
	fullAdder1 inst21(S04011, C04011, x[4], y[4], 1'b1);
	fullAdder1 inst22(S05011, C05011, x[5], y[5], 1'b1);
	fullAdder1 inst23(S06011, C06011, x[6], y[6], 1'b1);
	fullAdder1 inst24(S07011, C07011, x[7], y[7], 1'b1);
	fullAdder1 inst25(S08011, C08011, x[8], y[8], 1'b1);
	fullAdder1 inst26(S09011, C09011, x[9], y[9], 1'b1);
	fullAdder1 inst27(S10011, C10011, x[10], y[10], 1'b1);
	fullAdder1 inst28(S11011, C11011, x[11], y[11], 1'b1);
	fullAdder1 inst29(S12011, C12011, x[12], y[12], 1'b1);
	fullAdder1 inst30(S13011, C13011, x[13], y[13], 1'b1);
	fullAdder1 inst31(S14011, C14011, x[14], y[14], 1'b1);
	fullAdder1 inst32(S15011, C15011, x[15], y[15], 1'b1);

		
	//mux for block width 2 carry in 0
	multiplexer01 inst33( {tempC01,S00020[0]}, {C00010,S00010}, {C00011,S00011}, 1'b0);
	multiplexer01 inst34( {C00020,S00020[1]}, {C01010,S01010}, {C01011,S01011}, tempC01);
	multiplexer01 inst35( {tempC02,S01020[0]}, {C02010,S02010}, {C02011,S02011}, 1'b0);
	multiplexer01 inst36( {C01020,S01020[1]}, {C03010,S03010}, {C03011,S03011}, tempC02);
	multiplexer01 inst37( {tempC03,S02020[0]}, {C04010,S04010}, {C04011,S04011}, 1'b0);
	multiplexer01 inst38( {C02020,S02020[1]}, {C05010,S05010}, {C05011,S05011}, tempC03);
	multiplexer01 inst39( {tempC04,S03020[0]}, {C06010,S06010}, {C06011,S06011}, 1'b0);
	multiplexer01 inst40( {C03020,S03020[1]}, {C07010,S07010}, {C07011,S07011}, tempC04);
	multiplexer01 inst41( {tempC05,S04020[0]}, {C08010,S08010}, {C08011,S08011}, 1'b0);
	multiplexer01 inst42( {C04020,S04020[1]}, {C09010,S09010}, {C09011,S09011}, tempC05);
	multiplexer01 inst43( {tempC06,S05020[0]}, {C10010,S10010}, {C10011,S10011}, 1'b0);
	multiplexer01 inst44( {C05020,S05020[1]}, {C11010,S11010}, {C11011,S11011}, tempC06);
	multiplexer01 inst45( {tempC07,S06020[0]}, {C12010,S12010}, {C12011,S12011}, 1'b0);
	multiplexer01 inst46( {C06020,S06020[1]}, {C13010,S13010}, {C13011,S13011}, tempC07);
	multiplexer01 inst47( {tempC08,S07020[0]}, {C14010,S14010}, {C14011,S14011}, 1'b0);
	multiplexer01 inst48( {C07020,S07020[1]}, {C15010,S15010}, {C15011,S15011}, tempC08);

	//mux for block width 2 carry in 1
	multiplexer01 inst49( {tempC09,S00021[0]}, {C00010,S00010}, {C00011,S00011}, 1'b1);
	multiplexer01 inst50( {C00021,S00021[1]}, {C01010,S01010}, {C01011,S01011}, tempC09);
	multiplexer01 inst51( {tempC10,S01021[0]}, {C02010,S02010}, {C02011,S02011}, 1'b1);
	multiplexer01 inst52( {C01021,S01021[1]}, {C03010,S03010}, {C03011,S03011}, tempC10);
	multiplexer01 inst53( {tempC11,S02021[0]}, {C04010,S04010}, {C04011,S04011}, 1'b1);
	multiplexer01 inst54( {C02021,S02021[1]}, {C05010,S05010}, {C05011,S05011}, tempC11);
	multiplexer01 inst55( {tempC12,S03021[0]}, {C06010,S06010}, {C06011,S06011}, 1'b1);
	multiplexer01 inst56( {C03021,S03021[1]}, {C07010,S07010}, {C07011,S07011}, tempC12);
	multiplexer01 inst57( {tempC13,S04021[0]}, {C08010,S08010}, {C08011,S08011}, 1'b1);
	multiplexer01 inst58( {C04021,S04021[1]}, {C09010,S09010}, {C09011,S09011}, tempC13);
	multiplexer01 inst59( {tempC14,S05021[0]}, {C10010,S10010}, {C10011,S10011}, 1'b1);
	multiplexer01 inst60( {C05021,S05021[1]}, {C11010,S11010}, {C11011,S11011}, tempC14);
	multiplexer01 inst61( {tempC15,S06021[0]}, {C12010,S12010}, {C12011,S12011}, 1'b1);
	multiplexer01 inst62( {C06021,S06021[1]}, {C13010,S13010}, {C13011,S13011}, tempC15);
	multiplexer01 inst63( {tempC16,S07021[0]}, {C14010,S14010}, {C14011,S14011}, 1'b1);
	multiplexer01 inst64( {C07021,S07021[1]}, {C15010,S15010}, {C15011,S15011}, tempC16);
	
	
	//mux for block width 2 carry in 0
	multiplexer02 inst65( {tempC17,S00040[1:0]}, {C00020,S00020[1:0]}, {C00021,S00021[1:0]}, 1'b0);
	multiplexer02 inst66( {C00040,S00040[3:2]}, {C01020,S01020[1:0]}, {C01021,S01021[1:0]}, tempC17);
	multiplexer02 inst67( {tempC18,S01040[1:0]}, {C02020,S02020[1:0]}, {C02021,S02021[1:0]}, 1'b0);
	multiplexer02 inst68( {C01040,S01040[3:2]}, {C03020,S03020[1:0]}, {C03021,S03021[1:0]}, tempC18);
	multiplexer02 inst69( {tempC19,S02040[1:0]}, {C04020,S04020[1:0]}, {C04021,S04021[1:0]}, 1'b0);
	multiplexer02 inst70( {C02040,S02040[3:2]}, {C05020,S05020[1:0]}, {C05021,S05021[1:0]}, tempC19);
	multiplexer02 inst71( {tempC20,S03040[1:0]}, {C06020,S06020[1:0]}, {C06021,S06021[1:0]}, 1'b0);
	multiplexer02 inst72( {C03040,S03040[3:2]}, {C07020,S07020[1:0]}, {C07021,S07021[1:0]}, tempC20);

	//mux for block width 2 carry in 1
	multiplexer02 inst73( {tempC21,S00041[1:0]}, {C00020,S00020[1:0]}, {C00021,S00021[1:0]}, 1'b1);
	multiplexer02 inst74( {C00041,S00041[3:2]}, {C01020,S01020[1:0]}, {C01021,S01021[1:0]}, tempC21);
	multiplexer02 inst75( {tempC22,S01041[1:0]}, {C02020,S02020[1:0]}, {C02021,S02021[1:0]}, 1'b1);
	multiplexer02 inst76( {C01041,S01041[3:2]}, {C03020,S03020[1:0]}, {C03021,S03021[1:0]}, tempC22);
	multiplexer02 inst77( {tempC23,S02041[1:0]}, {C04020,S04020[1:0]}, {C04021,S04021[1:0]}, 1'b1);
	multiplexer02 inst78( {C02041,S02041[3:2]}, {C05020,S05020[1:0]}, {C05021,S05021[1:0]}, tempC23);
	multiplexer02 inst79( {tempC24,S03041[1:0]}, {C06020,S06020[1:0]}, {C06021,S06021[1:0]}, 1'b1);
	multiplexer02 inst80( {C03041,S03041[3:2]}, {C07020,S07020[1:0]}, {C07021,S07021[1:0]}, tempC24);

	
	//mux for block width 4 carry in 0
	multiplexer04 inst81( {tempC25,S00080[3:0]}, {C00040,S00040[3:0]}, {C00041,S00041[3:0]}, 1'b0);
	multiplexer04 inst82( {C00080,S00080[7:4]}, {C01040,S01040[3:0]}, {C01041,S01041[3:0]}, tempC25);
	multiplexer04 inst83( {tempC26,S01080[3:0]}, {C02040,S02040[3:0]}, {C02041,S02041[3:0]}, 1'b0);
	multiplexer04 inst84( {C01080,S01080[7:4]}, {C03040,S03040[3:0]}, {C03041,S03041[3:0]}, tempC26);
	
	//mux for block width 4 carry in 1
	multiplexer04 inst85( {tempC27,S00081[3:0]}, {C00040,S00040[3:0]}, {C00041,S00041[3:0]}, 1'b1);
	multiplexer04 inst86( {C00081,S00081[7:4]}, {C01040,S01040[3:0]}, {C01041,S01041[3:0]}, tempC27);
	multiplexer04 inst87( {tempC28,S01081[3:0]}, {C02040,S02040[3:0]}, {C02041,S02041[3:0]}, 1'b1);
	multiplexer04 inst88( {C01081,S01081[7:4]}, {C03040,S03040[3:0]}, {C03041,S03041[3:0]}, tempC28);

	
	//mux for block width 8 carry in 0
	multiplexer08 inst89( {tempC29,S00160[7:0]}, {C00080,S00080[7:0]}, {C00081,S00081[7:0]}, 1'b0);
	multiplexer08 inst90( {C00160,S00160[15:8]}, {C01080,S01080[7:0]}, {C01081,S01081[7:0]}, tempC29);

	//mux for block width 8 carry in 1
	multiplexer08 inst91( {tempC30,S00161[7:0]}, {C00080,S00080[7:0]}, {C00081,S00081[7:0]}, 1'b1);
	multiplexer08 inst92( {C00161,S00161[15:8]}, {C01080,S01080[7:0]}, {C01081,S01081[7:0]}, tempC30);

	
	//mux for block width 16 carry in Cin
	multiplexer16 inst93( {Cout,Sum[15:0]}, {C00160,S00160[15:0]}, {C00161,S00161[15:0]}, Cin);

	
endmodule

module fullAdder1(sum, cout, op1, op2, cin);
	input cin, op1, op2;
	output cout, sum;
		
	assign sum = cin^(op1^op2);
	assign cout = ((op1^op2)&cin) | (op1&op2);	
	
endmodule

module multiplexer01(f, inp1, inp2, sel);//to choose from block width 1
	input sel;
	input [1:0] inp1;
	input [1:0] inp2;
	output wire [1:0] f;
	
	assign f = sel ? inp2 : inp1;
endmodule

module multiplexer02(f, inp1, inp2, sel);//to choose from block width 2
	input sel;
	input [2:0] inp1;
	input [2:0] inp2;
	output wire [2:0] f;
	
	assign f = sel ? inp2 : inp1;
endmodule

module multiplexer04(f, inp1, inp2, sel);//to choose from block width 4
	input sel;
	input [4:0] inp1;
	input [4:0] inp2;
	output wire [4:0] f;
	
	assign f = sel ? inp2 : inp1;
endmodule

module multiplexer08(f, inp1, inp2, sel);//to choose from block width 8
	input sel;
	input [8:0] inp1;
	input [8:0] inp2;
	output wire [8:0] f;
	
	assign f = sel ? inp2 : inp1;
endmodule

module multiplexer16(f, inp1, inp2, sel);//to choose from block width 16
	input sel;
	input [16:0] inp1;
	input [16:0] inp2;
	output wire [16:0] f;
	
	assign f = sel ? inp2 : inp1;
endmodule
