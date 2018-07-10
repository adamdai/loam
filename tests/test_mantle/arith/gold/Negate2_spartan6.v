module Sub2_cin1 (input [1:0] I0, input [1:0] I1, output [1:0] O);
wire  inst0_O5;
wire  inst0_O6;
wire  inst1_O;
wire  inst2_O;
wire  inst3_O5;
wire  inst3_O6;
wire  inst4_O;
wire  inst5_O;
LUT6_2 #(.INIT(64'h99999999AAAAAAAA)) inst0 (.I0(I0[0]), .I1(I1[0]), .I2(1'b0), .I3(1'b0), .I4(1'b0), .I5(1'b1), .O5(inst0_O5), .O6(inst0_O6));
MUXCY inst1 (.DI(inst0_O5), .CI(1'b1), .S(inst0_O6), .O(inst1_O));
XORCY inst2 (.LI(inst0_O6), .CI(1'b1), .O(inst2_O));
LUT6_2 #(.INIT(64'h99999999AAAAAAAA)) inst3 (.I0(I0[1]), .I1(I1[1]), .I2(1'b0), .I3(1'b0), .I4(1'b0), .I5(1'b1), .O5(inst3_O5), .O6(inst3_O6));
MUXCY inst4 (.DI(inst3_O5), .CI(inst1_O), .S(inst3_O6), .O(inst4_O));
XORCY inst5 (.LI(inst3_O6), .CI(inst1_O), .O(inst5_O));
assign O = {inst5_O,inst2_O};
endmodule

module Negate2 (input [1:0] I, output [1:0] O);
wire [1:0] inst0_O;
Sub2_cin1 inst0 (.I0({1'b0,1'b0}), .I1(I), .O(inst0_O));
assign O = inst0_O;
endmodule

module main (output [1:0] LED, input [1:0] SWITCH);
wire [1:0] inst0_O;
Negate2 inst0 (.I(SWITCH), .O(inst0_O));
assign LED = inst0_O;
endmodule

