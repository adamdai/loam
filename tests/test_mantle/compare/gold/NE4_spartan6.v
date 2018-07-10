module NE4 (input [3:0] I0, input [3:0] I1, output  O);
wire  inst0_O5;
wire  inst0_O6;
wire  inst1_O;
wire  inst2_O5;
wire  inst2_O6;
wire  inst3_O;
LUT6_2 #(.INIT(64'h6FF66FF600000000)) inst0 (.I0(I0[0]), .I1(I1[0]), .I2(I0[1]), .I3(I1[1]), .I4(1'b0), .I5(1'b1), .O5(inst0_O5), .O6(inst0_O6));
MUXCY inst1 (.DI(inst0_O5), .CI(1'b1), .S(inst0_O6), .O(inst1_O));
LUT6_2 #(.INIT(64'h6FF66FF600000000)) inst2 (.I0(I0[2]), .I1(I1[2]), .I2(I0[3]), .I3(I1[3]), .I4(1'b0), .I5(1'b1), .O5(inst2_O5), .O6(inst2_O6));
MUXCY inst3 (.DI(inst2_O5), .CI(inst1_O), .S(inst2_O6), .O(inst3_O));
assign O = inst3_O;
endmodule

module main (output  LED, input [7:0] SWITCH);
wire  inst0_O;
NE4 inst0 (.I0({SWITCH[3],SWITCH[2],SWITCH[1],SWITCH[0]}), .I1({SWITCH[7],SWITCH[6],SWITCH[5],SWITCH[4]}), .O(inst0_O));
assign LED = inst0_O;
endmodule

