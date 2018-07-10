module Sub8_cin1 (input [7:0] I0, input [7:0] I1, output [7:0] O);
wire  inst0_O;
wire  inst1_O;
wire  inst2_O;
wire  inst3_O;
wire  inst4_O;
wire  inst5_O;
wire  inst6_O;
wire  inst7_O;
wire  inst8_O;
wire  inst9_O;
wire  inst10_O;
wire  inst11_O;
wire  inst12_O;
wire  inst13_O;
wire  inst14_O;
wire  inst15_O;
wire  inst16_O;
wire  inst17_O;
wire  inst18_O;
wire  inst19_O;
wire  inst20_O;
wire  inst21_O;
wire  inst22_O;
wire  inst23_O;
LUT2 #(.INIT(4'h9)) inst0 (.I0(I0[0]), .I1(I1[0]), .O(inst0_O));
MUXCY inst1 (.DI(I0[0]), .CI(1'b1), .S(inst0_O), .O(inst1_O));
XORCY inst2 (.LI(inst0_O), .CI(1'b1), .O(inst2_O));
LUT2 #(.INIT(4'h9)) inst3 (.I0(I0[1]), .I1(I1[1]), .O(inst3_O));
MUXCY inst4 (.DI(I0[1]), .CI(inst1_O), .S(inst3_O), .O(inst4_O));
XORCY inst5 (.LI(inst3_O), .CI(inst1_O), .O(inst5_O));
LUT2 #(.INIT(4'h9)) inst6 (.I0(I0[2]), .I1(I1[2]), .O(inst6_O));
MUXCY inst7 (.DI(I0[2]), .CI(inst4_O), .S(inst6_O), .O(inst7_O));
XORCY inst8 (.LI(inst6_O), .CI(inst4_O), .O(inst8_O));
LUT2 #(.INIT(4'h9)) inst9 (.I0(I0[3]), .I1(I1[3]), .O(inst9_O));
MUXCY inst10 (.DI(I0[3]), .CI(inst7_O), .S(inst9_O), .O(inst10_O));
XORCY inst11 (.LI(inst9_O), .CI(inst7_O), .O(inst11_O));
LUT2 #(.INIT(4'h9)) inst12 (.I0(I0[4]), .I1(I1[4]), .O(inst12_O));
MUXCY inst13 (.DI(I0[4]), .CI(inst10_O), .S(inst12_O), .O(inst13_O));
XORCY inst14 (.LI(inst12_O), .CI(inst10_O), .O(inst14_O));
LUT2 #(.INIT(4'h9)) inst15 (.I0(I0[5]), .I1(I1[5]), .O(inst15_O));
MUXCY inst16 (.DI(I0[5]), .CI(inst13_O), .S(inst15_O), .O(inst16_O));
XORCY inst17 (.LI(inst15_O), .CI(inst13_O), .O(inst17_O));
LUT2 #(.INIT(4'h9)) inst18 (.I0(I0[6]), .I1(I1[6]), .O(inst18_O));
MUXCY inst19 (.DI(I0[6]), .CI(inst16_O), .S(inst18_O), .O(inst19_O));
XORCY inst20 (.LI(inst18_O), .CI(inst16_O), .O(inst20_O));
LUT2 #(.INIT(4'h9)) inst21 (.I0(I0[7]), .I1(I1[7]), .O(inst21_O));
MUXCY inst22 (.DI(I0[7]), .CI(inst19_O), .S(inst21_O), .O(inst22_O));
XORCY inst23 (.LI(inst21_O), .CI(inst19_O), .O(inst23_O));
assign O = {inst23_O,inst20_O,inst17_O,inst14_O,inst11_O,inst8_O,inst5_O,inst2_O};
endmodule

module Negate8 (input [7:0] I, output [7:0] O);
wire [7:0] inst0_O;
Sub8_cin1 inst0 (.I0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}), .I1(I), .O(inst0_O));
assign O = inst0_O;
endmodule

module main (input [7:0] SWITCH, output [7:0] LED);
wire [7:0] inst0_O;
Negate8 inst0 (.I(SWITCH), .O(inst0_O));
assign LED = inst0_O;
endmodule

