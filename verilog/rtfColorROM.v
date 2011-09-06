// ============================================================================
//	2006-2011  Robert Finch
//	robfinch@<remove>sympatico.ca
//
//	rtfColorROM.v
//		Color lookup ROM for TextController.
//		Converts a 5-bit color code to a 24 bit RGB value.
//
//
//  This source code is available for evaluation and validation purposes
//  only. This copyright statement and disclaimer must remain present in
//  the file.
//
//
//	NO WARRANTY.
//  THIS Work, IS PROVIDEDED "AS IS" WITH NO WARRANTIES OF ANY KIND, WHETHER
//  EXPRESS OR IMPLIED. The user must assume the entire risk of using the
//  Work.
//
//  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE FOR ANY
//  INCIDENTAL, CONSEQUENTIAL, OR PUNITIVE DAMAGES WHATSOEVER RELATING TO
//  THE USE OF THIS WORK, OR YOUR RELATIONSHIP WITH THE AUTHOR.
//
//  IN ADDITION, IN NO EVENT DOES THE AUTHOR AUTHORIZE YOU TO USE THE WORK
//  IN APPLICATIONS OR SYSTEMS WHERE THE WORK'S FAILURE TO PERFORM CAN
//  REASONABLY BE EXPECTED TO RESULT IN A SIGNIFICANT PHYSICAL INJURY, OR IN
//  LOSS OF LIFE. ANY SUCH USE BY YOU IS ENTIRELY AT YOUR OWN RISK, AND YOU
//  AGREE TO HOLD THE AUTHOR AND CONTRIBUTORS HARMLESS FROM ANY CLAIMS OR
//  LOSSES RELATING TO SUCH UNAUTHORIZED USE.
//
//
//	Webpack 9.1i xc3s1000-4ft256
//	LUTs / slices / MHz
//	block rams
//
// ============================================================================


// TC64 color codes
`define TC64_BLACK			5'd0
`define TC64_WHITE			5'd1
`define TC64_RED			5'd2
`define TC64_CYAN			5'd3
`define TC64_PURPLE			5'd4
`define TC64_GREEN			5'd5
`define TC64_BLUE			5'd6
`define TC64_YELLOW			5'd7
`define TC64_ORANGE			5'd8
`define TC64_BROWN			5'd9
`define TC64_PINK			5'd10
`define TC64_DARK_GREY		5'd11
`define TC64_MEDIUM_GREY	5'd12
`define TC64_LIGHT_GREEN	5'd13
`define TC64_LIGHT_BLUE		5'd14
`define TC64_LIGHT_GREY		5'd15

`define TC64_BLACKa			5'd16
`define TC64_WHITEa			5'd17
`define TC64_REDa			5'd18
`define TC64_CYANa			5'd19
`define TC64_PURPLEa		5'd20
`define TC64_GREENa			5'd21
`define TC64_BLUEa			5'd22
`define TC64_YELLOWa		5'd23
`define TC64_ORANGEa		5'd24
`define TC64_BROWNa			5'd25
`define TC64_PINKa			5'd26
`define TC64_DARK_GREYa		5'd27
`define TC64_GREY3			5'd28
`define TC64_LIGHT_GREENa	5'd29
`define TC64_LIGHT_BLUEa	5'd30
`define TC64_GREY5			5'd31

module rtfColorROM(clk, ce, code, color);
input clk;
input ce;
input [4:0] code;
output [23:0] color;
reg [23:0] color;

always @(posedge clk)
	if (ce) begin
		case (code)
		`TC64_BLACK:	 	color = 24'h10_10_10;
		`TC64_WHITE:	 	color = 24'hFF_FF_FF;
		`TC64_RED:    		color = 24'hE0_40_40;
		`TC64_CYAN:   		color = 24'h60_FF_FF;
		`TC64_PURPLE: 		color = 24'hE0_60_E0;
		`TC64_GREEN:	 	color = 24'h40_E0_40;
		`TC64_BLUE:   		color = 24'h40_40_E0;
		`TC64_YELLOW: 		color = 24'hFF_FF_40;
		`TC64_ORANGE: 		color = 24'hE0_A0_40;
		`TC64_BROWN:  		color = 24'h9C_74_48;
		`TC64_PINK:   		color = 24'hFF_A0_A0;
		`TC64_DARK_GREY:   	color = 24'h54_54_54;
		`TC64_MEDIUM_GREY: 	color = 24'h88_88_88;
		`TC64_LIGHT_GREEN: 	color = 24'hA0_FF_A0;
		`TC64_LIGHT_BLUE:  	color = 24'hA0_A0_FF;
		`TC64_LIGHT_GREY:  	color = 24'hC0_C0_C0;

		`TC64_BLACKa:	 	color = 24'h10_10_10;
		`TC64_WHITEa:	 	color = 24'hFF_FF_FF;
		`TC64_REDa:    		color = 24'hE0_40_40;
		`TC64_CYANa:   		color = 24'h60_FF_FF;
		`TC64_PURPLEa: 		color = 24'hE0_60_E0;
		`TC64_GREENa:	 	color = 24'h40_E0_40;
		`TC64_BLUEa:   		color = 24'h40_40_E0;
		`TC64_YELLOWa: 		color = 24'hFF_FF_40;
		`TC64_ORANGEa: 		color = 24'hE0_A0_40;
		`TC64_BROWNa:  		color = 24'h9C_74_48;
		`TC64_PINKa:   		color = 24'hFF_A0_A0;
		`TC64_DARK_GREYa:   color = 24'h54_54_54;
		`TC64_GREY3: 		color = 24'h30_30_30;
		`TC64_LIGHT_GREENa: color = 24'hA0_FF_A0;
		`TC64_LIGHT_BLUEa:  color = 24'hA0_A0_FF;
		`TC64_GREY5:  		color = 24'h50_50_50;

		endcase
	end

endmodule


