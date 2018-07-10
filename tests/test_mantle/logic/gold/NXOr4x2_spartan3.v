module NXOr4 (input [3:0] I, output  O);
wire  inst0_O;
LUT4 #(.INIT(16'h9669)) inst0 (.I0(I[0]), .I1(I[1]), .I2(I[2]), .I3(I[3]), .O(inst0_O));
assign O = inst0_O;
endmodule

module NXOr4x2 (input [1:0] I0, input [1:0] I1, input [1:0] I2, input [1:0] I3, output [1:0] O);
wire  inst0_O;
wire  inst1_O;
NXOr4 inst0 (.I({I3[0],I2[0],I1[0],I0[0]}), .O(inst0_O));
NXOr4 inst1 (.I({I3[1],I2[1],I1[1],I0[1]}), .O(inst1_O));
assign O = {inst1_O,inst0_O};
endmodule

module main (input [7:0] SWITCH, output [1:0] LED);
wire [1:0] inst0_O;
NXOr4x2 inst0 (.I0({SWITCH[1],SWITCH[0]}), .I1({SWITCH[3],SWITCH[2]}), .I2({SWITCH[5],SWITCH[4]}), .I3({SWITCH[7],SWITCH[6]}), .O(inst0_O));
assign LED = inst0_O;
endmodule

