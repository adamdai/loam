module NXOr8 (input [7:0] I, output  O);
wire  inst0_O;
wire  inst1_O;
wire  inst2_O;
wire  inst3_O;
wire  inst4_O;
wire  inst5_O;
wire  inst6_O;
wire  inst7_O;
LUT2 #(.INIT(4'h9)) inst0 (.I0(1'b1), .I1(I[0]), .O(inst0_O));
LUT2 #(.INIT(4'h9)) inst1 (.I0(inst0_O), .I1(I[1]), .O(inst1_O));
LUT2 #(.INIT(4'h9)) inst2 (.I0(inst1_O), .I1(I[2]), .O(inst2_O));
LUT2 #(.INIT(4'h9)) inst3 (.I0(inst2_O), .I1(I[3]), .O(inst3_O));
LUT2 #(.INIT(4'h9)) inst4 (.I0(inst3_O), .I1(I[4]), .O(inst4_O));
LUT2 #(.INIT(4'h9)) inst5 (.I0(inst4_O), .I1(I[5]), .O(inst5_O));
LUT2 #(.INIT(4'h9)) inst6 (.I0(inst5_O), .I1(I[6]), .O(inst6_O));
LUT2 #(.INIT(4'h9)) inst7 (.I0(inst6_O), .I1(I[7]), .O(inst7_O));
assign O = inst7_O;
endmodule

module main (output  LED, input [7:0] SWITCH);
wire  inst0_O;
NXOr8 inst0 (.I(SWITCH), .O(inst0_O));
assign LED = inst0_O;
endmodule

