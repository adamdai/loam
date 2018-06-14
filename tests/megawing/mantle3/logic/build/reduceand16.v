module And16 (input [15:0] I, output  O);
wire  inst0_O;
wire  inst1_O;
wire  inst2_O;
wire  inst3_O;
wire  inst4_O;
wire  inst5_O;
wire  inst6_O;
wire  inst7_O;
LUT4 #(.INIT(16'h8000)) inst0 (.I0(I[0]), .I1(I[1]), .I2(I[2]), .I3(I[3]), .O(inst0_O));
MUXCY inst1 (.DI(1'b1), .CI(1'b0), .S(inst0_O), .O(inst1_O));
LUT4 #(.INIT(16'h8000)) inst2 (.I0(I[4]), .I1(I[5]), .I2(I[6]), .I3(I[7]), .O(inst2_O));
MUXCY inst3 (.DI(1'b1), .CI(inst1_O), .S(inst2_O), .O(inst3_O));
LUT4 #(.INIT(16'h8000)) inst4 (.I0(I[8]), .I1(I[9]), .I2(I[10]), .I3(I[11]), .O(inst4_O));
MUXCY inst5 (.DI(1'b1), .CI(inst3_O), .S(inst4_O), .O(inst5_O));
LUT4 #(.INIT(16'h8000)) inst6 (.I0(I[12]), .I1(I[13]), .I2(I[14]), .I3(I[15]), .O(inst6_O));
MUXCY inst7 (.DI(1'b1), .CI(inst5_O), .S(inst6_O), .O(inst7_O));
assign O = inst7_O;
endmodule

module main (input [7:0] SWITCH, output  LED);
wire  inst0_O;
And16 inst0 (.I({SWITCH[7],SWITCH[6],SWITCH[5],SWITCH[4],SWITCH[3],SWITCH[2],SWITCH[1],SWITCH[0],SWITCH[7],SWITCH[6],SWITCH[5],SWITCH[4],SWITCH[3],SWITCH[2],SWITCH[1],SWITCH[0]}), .O(inst0_O));
assign LED = inst0_O;
endmodule

