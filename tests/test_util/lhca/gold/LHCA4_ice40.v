module Register4_0001 (input [3:0] I, output [3:0] O, input  CLK);
wire  inst0_Q;
wire  inst1_O;
wire  inst2_O;
wire  inst3_Q;
wire  inst4_Q;
wire  inst5_Q;
SB_DFF inst0 (.C(CLK), .D(inst1_O), .Q(inst0_Q));
SB_LUT4 #(.LUT_INIT(16'h5555)) inst1 (.I0(I[0]), .I1(1'b0), .I2(1'b0), .I3(1'b0), .O(inst1_O));
SB_LUT4 #(.LUT_INIT(16'h5555)) inst2 (.I0(inst0_Q), .I1(1'b0), .I2(1'b0), .I3(1'b0), .O(inst2_O));
SB_DFF inst3 (.C(CLK), .D(I[1]), .Q(inst3_Q));
SB_DFF inst4 (.C(CLK), .D(I[2]), .Q(inst4_Q));
SB_DFF inst5 (.C(CLK), .D(I[3]), .Q(inst5_Q));
assign O = {inst5_Q,inst4_Q,inst3_Q,inst2_O};
endmodule

module main (output [3:0] J3);
wire [3:0] inst0_O;
wire  inst1_O;
wire  inst2_O;
wire  inst3_O;
wire  inst4_O;
Register4_0001 inst0 (.I({inst4_O,inst3_O,inst2_O,inst1_O}), .O(inst0_O));
SB_LUT4 #(.LUT_INIT(16'h6666)) inst1 (.I0(inst0_O[0]), .I1(inst0_O[1]), .I2(1'b0), .I3(1'b0), .O(inst1_O));
SB_LUT4 #(.LUT_INIT(16'h6666)) inst2 (.I0(inst0_O[0]), .I1(inst0_O[2]), .I2(1'b0), .I3(1'b0), .O(inst2_O));
SB_LUT4 #(.LUT_INIT(16'h9696)) inst3 (.I0(inst0_O[1]), .I1(inst0_O[2]), .I2(inst0_O[3]), .I3(1'b0), .O(inst3_O));
SB_LUT4 #(.LUT_INIT(16'hAAAA)) inst4 (.I0(inst0_O[2]), .I1(1'b0), .I2(1'b0), .I3(1'b0), .O(inst4_O));
assign J3 = inst0_O;
endmodule

