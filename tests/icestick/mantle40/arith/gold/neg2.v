module Invert2 (input [1:0] I, output [1:0] O);
wire  inst0_O;
wire  inst1_O;
SB_LUT4 #(.LUT_INIT(16'h5555)) inst0 (.I0(I[0]), .I1(1'b0), .I2(1'b0), .I3(1'b0), .O(inst0_O));
SB_LUT4 #(.LUT_INIT(16'h5555)) inst1 (.I0(I[1]), .I1(1'b0), .I2(1'b0), .I3(1'b0), .O(inst1_O));
assign O = {inst1_O,inst0_O};
endmodule

module FullAdder (input  I0, input  I1, input  CIN, output  O, output  COUT);
wire  inst0_O;
wire  inst1_CO;
SB_LUT4 #(.LUT_INIT(16'h9696)) inst0 (.I0(I0), .I1(I1), .I2(CIN), .I3(1'b0), .O(inst0_O));
SB_CARRY inst1 (.I0(I0), .I1(I1), .CI(CIN), .CO(inst1_CO));
assign O = inst0_O;
assign COUT = inst1_CO;
endmodule

module Add2 (input [1:0] I0, input [1:0] I1, output [1:0] O);
wire  inst0_O;
wire  inst0_COUT;
wire  inst1_O;
wire  inst1_COUT;
FullAdder inst0 (.I0(I0[0]), .I1(I1[0]), .CIN(1'b0), .O(inst0_O), .COUT(inst0_COUT));
FullAdder inst1 (.I0(I0[1]), .I1(I1[1]), .CIN(inst0_COUT), .O(inst1_O), .COUT(inst1_COUT));
assign O = {inst1_O,inst0_O};
endmodule

module Negate2 (input [1:0] I, output [1:0] O);
wire [1:0] inst0_O;
wire [1:0] inst1_O;
Invert2 inst0 (.I(I), .O(inst0_O));
Add2 inst1 (.I0(inst0_O), .I1({1'b0,1'b1}), .O(inst1_O));
assign O = inst1_O;
endmodule

module main (input  I0, input  I1, output  D2, output  D1);
wire [1:0] inst0_O;
Negate2 inst0 (.I({I1,I0}), .O(inst0_O));
assign D2 = inst0_O[1];
assign D1 = inst0_O[0];
endmodule

