module main (input  J1, output  D0);
wire  inst0_O;
SB_LUT4 #(.LUT_INIT(16'h0002)) inst0 (.I0(J1), .I1(1'b0), .I2(1'b0), .I3(1'b0), .O(inst0_O));
assign D0 = inst0_O;
endmodule

