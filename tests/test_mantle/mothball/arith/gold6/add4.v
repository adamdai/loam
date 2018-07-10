module Adders4x2_6_8_cinNone_coutNone (input [3:0] I0, input [3:0] I1, output [3:0] O);
wire  inst0_O5;
wire  inst0_O6;
wire  inst1_O;
wire  inst2_O;
wire  inst3_O5;
wire  inst3_O6;
wire  inst4_O;
wire  inst5_O;
wire  inst6_O5;
wire  inst6_O6;
wire  inst7_O;
wire  inst8_O;
wire  inst9_O5;
wire  inst9_O6;
wire  inst10_O;
wire  inst11_O;
LUT6_2 #(.INIT(64'h6666666688888888)) inst0 (.I0(I0[0]), .I1(I1[0]), .I2(1'b1), .I3(1'b1), .I4(1'b1), .I5(1'b1), .O5(inst0_O5), .O6(inst0_O6));
MUXCY inst1 (.DI(inst0_O5), .CI(1'b0), .S(inst0_O6), .O(inst1_O));
XORCY inst2 (.LI(inst0_O6), .CI(1'b0), .O(inst2_O));
LUT6_2 #(.INIT(64'h6666666688888888)) inst3 (.I0(I0[1]), .I1(I1[1]), .I2(1'b1), .I3(1'b1), .I4(1'b1), .I5(1'b1), .O5(inst3_O5), .O6(inst3_O6));
MUXCY inst4 (.DI(inst3_O5), .CI(inst1_O), .S(inst3_O6), .O(inst4_O));
XORCY inst5 (.LI(inst3_O6), .CI(inst1_O), .O(inst5_O));
LUT6_2 #(.INIT(64'h6666666688888888)) inst6 (.I0(I0[2]), .I1(I1[2]), .I2(1'b1), .I3(1'b1), .I4(1'b1), .I5(1'b1), .O5(inst6_O5), .O6(inst6_O6));
MUXCY inst7 (.DI(inst6_O5), .CI(inst4_O), .S(inst6_O6), .O(inst7_O));
XORCY inst8 (.LI(inst6_O6), .CI(inst4_O), .O(inst8_O));
LUT6_2 #(.INIT(64'h6666666688888888)) inst9 (.I0(I0[3]), .I1(I1[3]), .I2(1'b1), .I3(1'b1), .I4(1'b1), .I5(1'b1), .O5(inst9_O5), .O6(inst9_O6));
MUXCY inst10 (.DI(inst9_O5), .CI(inst7_O), .S(inst9_O6), .O(inst10_O));
XORCY inst11 (.LI(inst9_O6), .CI(inst7_O), .O(inst11_O));
assign O = {inst11_O,inst8_O,inst5_O,inst2_O};
endmodule

module main (output [3:0] LED, input [7:0] SWITCH);
wire [3:0] inst0_O;
Adders4x2_6_8_cinNone_coutNone inst0 (.I0({SWITCH[3],SWITCH[2],SWITCH[1],SWITCH[0]}), .I1({SWITCH[7],SWITCH[6],SWITCH[5],SWITCH[4]}), .O(inst0_O));
assign LED = inst0_O;
endmodule

