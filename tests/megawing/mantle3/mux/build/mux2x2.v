module Mux2x2 (input [1:0] I0, input [1:0] I1, input  S, output [1:0] O);
wire  inst0_O;
wire  inst1_O;
LUT3 #(.INIT(8'hCA)) inst0 (.I0(I0[0]), .I1(I1[0]), .I2(S), .O(inst0_O));
LUT3 #(.INIT(8'hCA)) inst1 (.I0(I0[1]), .I1(I1[1]), .I2(S), .O(inst1_O));
assign O = {inst1_O,inst0_O};
endmodule

module main (output [1:0] LED, input [4:0] SWITCH);
wire [1:0] inst0_O;
Mux2x2 inst0 (.I0({SWITCH[1],SWITCH[0]}), .I1({SWITCH[3],SWITCH[2]}), .S(SWITCH[4]), .O(inst0_O));
assign LED = inst0_O;
endmodule

