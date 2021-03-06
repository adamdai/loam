module XOr3 (input [2:0] I, output  O);
wire  inst0_O;
SB_LUT4 #(.LUT_INIT(16'h9696)) inst0 (.I0(I[0]), .I1(I[1]), .I2(I[2]), .I3(1'b0), .O(inst0_O));
assign O = inst0_O;
endmodule

module XOr3x2 (input [1:0] I0, input [1:0] I1, input [1:0] I2, output [1:0] O);
wire  inst0_O;
wire  inst1_O;
XOr3 inst0 (.I({I2[0],I1[0],I0[0]}), .O(inst0_O));
XOr3 inst1 (.I({I2[1],I1[1],I0[1]}), .O(inst1_O));
assign O = {inst1_O,inst0_O};
endmodule

module main (input [5:0] J1, output [1:0] J3);
wire [1:0] inst0_O;
XOr3x2 inst0 (.I0({J1[1],J1[0]}), .I1({J1[3],J1[2]}), .I2({J1[5],J1[4]}), .O(inst0_O));
assign J3 = inst0_O;
endmodule

