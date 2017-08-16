module HalfAdder (input  I0, input  I1, output  O, output  COUT);
wire  inst0_O;
wire  inst1_CO;
SB_LUT4 #(.LUT_INIT(16'h6666)) inst0 (.I0(I0), .I1(I1), .I2(1'b0), .I3(1'b0), .O(inst0_O));
SB_CARRY inst1 (.I0(I0), .I1(I1), .CI(1'b0), .CO(inst1_CO));
assign O = inst0_O;
assign COUT = inst1_CO;
endmodule

module main (input  A, input  B, output  D2, output  D1, input  CLKIN);
wire  inst0_O;
wire  inst0_COUT;
HalfAdder inst0 (.I0(A), .I1(B), .O(inst0_O), .COUT(inst0_COUT));
assign D2 = inst0_COUT;
assign D1 = inst0_O;
endmodule

