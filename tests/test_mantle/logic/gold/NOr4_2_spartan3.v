module NOr2 (input [1:0] I, output  O);
wire  inst0_O;
LUT2 #(.INIT(4'h1)) inst0 (.I0(I[0]), .I1(I[1]), .O(inst0_O));
assign O = inst0_O;
endmodule

module NOr2x2 (input [1:0] I0, input [1:0] I1, output [1:0] O);
wire  inst0_O;
wire  inst1_O;
NOr2 inst0 (.I({I1[0],I0[0]}), .O(inst0_O));
NOr2 inst1 (.I({I1[1],I0[1]}), .O(inst1_O));
assign O = {inst1_O,inst0_O};
endmodule

module main (output [1:0] LED, input [3:0] SWITCH);
wire [1:0] inst0_O;
NOr2x2 inst0 (.I0({SWITCH[1],SWITCH[0]}), .I1({SWITCH[3],SWITCH[2]}), .O(inst0_O));
assign LED = inst0_O;
endmodule

