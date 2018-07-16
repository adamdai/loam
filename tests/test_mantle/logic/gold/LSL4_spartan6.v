module Mux2 (input [1:0] I, input  S, output  O);
wire  inst0_O;
LUT3 #(.INIT(8'hCA)) inst0 (.I0(I[0]), .I1(I[1]), .I2(S), .O(inst0_O));
assign O = inst0_O;
endmodule

module LSL4_1 (input [3:0] I, input  S, output [3:0] O);
wire  inst0_O;
wire  inst1_O;
wire  inst2_O;
wire  inst3_O;
Mux2 inst0 (.I({1'b0,I[0]}), .S(S), .O(inst0_O));
Mux2 inst1 (.I({I[0],I[1]}), .S(S), .O(inst1_O));
Mux2 inst2 (.I({I[1],I[2]}), .S(S), .O(inst2_O));
Mux2 inst3 (.I({I[2],I[3]}), .S(S), .O(inst3_O));
assign O = {inst3_O,inst2_O,inst1_O,inst0_O};
endmodule

module LSL4_2 (input [3:0] I, input  S, output [3:0] O);
wire  inst0_O;
wire  inst1_O;
wire  inst2_O;
wire  inst3_O;
Mux2 inst0 (.I({1'b0,I[0]}), .S(S), .O(inst0_O));
Mux2 inst1 (.I({1'b0,I[1]}), .S(S), .O(inst1_O));
Mux2 inst2 (.I({I[0],I[2]}), .S(S), .O(inst2_O));
Mux2 inst3 (.I({I[1],I[3]}), .S(S), .O(inst3_O));
assign O = {inst3_O,inst2_O,inst1_O,inst0_O};
endmodule

module LSL4 (input [3:0] I, input [1:0] S, output [3:0] O);
wire [3:0] inst0_O;
wire [3:0] inst1_O;
LSL4_1 inst0 (.I(I), .S(S[0]), .O(inst0_O));
LSL4_2 inst1 (.I(inst0_O), .S(S[1]), .O(inst1_O));
assign O = inst1_O;
endmodule

module main (output [3:0] LED, input [5:0] SWITCH);
wire [3:0] inst0_O;
LSL4 inst0 (.I({SWITCH[3],SWITCH[2],SWITCH[1],SWITCH[0]}), .S({SWITCH[5],SWITCH[4]}), .O(inst0_O));
assign LED = inst0_O;
endmodule

