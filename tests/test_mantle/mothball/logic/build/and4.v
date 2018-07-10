module And4 (input [3:0] I, output  O);
wire  inst0_O;
LUT4 #(.INIT(16'h8000)) inst0 (.I0(I[0]), .I1(I[1]), .I2(I[2]), .I3(I[3]), .O(inst0_O));
assign O = inst0_O;
endmodule

module main (output  LED, input [3:0] SWITCH);
wire  inst0_O;
And4 inst0 (.I(SWITCH), .O(inst0_O));
assign LED = inst0_O;
endmodule

