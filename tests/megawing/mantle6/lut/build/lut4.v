module main (output  LED, input [3:0] SWITCH);
wire  inst0_O;
LUT4 #(.INIT(16'hAAAA)) inst0 (.I0(SWITCH[0]), .I1(SWITCH[1]), .I2(SWITCH[2]), .I3(SWITCH[3]), .O(inst0_O));
assign LED = inst0_O;
endmodule

