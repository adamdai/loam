module main (input [7:0] J1, output  J3);
wire  inst0_O;
wire  inst1_O;
wire  inst2_O;
wire  inst3_O;
wire  inst4_O;
wire  inst5_O;
wire  inst6_O;
wire  inst7_O;
wire  inst8_O;
wire  inst9_O;
wire  inst10_O;
wire  inst11_O;
wire  inst12_O;
wire  inst13_O;
wire  inst14_O;
wire  inst15_O;
wire  inst16_O;
wire  inst17_O;
wire  inst18_O;
wire  inst19_O;
wire  inst20_O;
wire  inst21_O;
wire  inst22_O;
wire  inst23_O;
wire  inst24_O;
wire  inst25_O;
wire  inst26_O;
wire  inst27_O;
wire  inst28_O;
wire  inst29_O;
wire  inst30_O;
SB_LUT4 #(.LUT_INIT(16'hAAAA)) inst0 (.I0(J1[0]), .I1(J1[1]), .I2(J1[2]), .I3(J1[3]), .O(inst0_O));
SB_LUT4 #(.LUT_INIT(16'hAAAA)) inst1 (.I0(J1[0]), .I1(J1[1]), .I2(J1[2]), .I3(J1[3]), .O(inst1_O));
SB_LUT4 #(.LUT_INIT(16'hCACA)) inst2 (.I0(inst0_O), .I1(inst1_O), .I2(J1[4]), .I3(1'b0), .O(inst2_O));
SB_LUT4 #(.LUT_INIT(16'hAAAA)) inst3 (.I0(J1[0]), .I1(J1[1]), .I2(J1[2]), .I3(J1[3]), .O(inst3_O));
SB_LUT4 #(.LUT_INIT(16'hAAAA)) inst4 (.I0(J1[0]), .I1(J1[1]), .I2(J1[2]), .I3(J1[3]), .O(inst4_O));
SB_LUT4 #(.LUT_INIT(16'hCACA)) inst5 (.I0(inst3_O), .I1(inst4_O), .I2(J1[4]), .I3(1'b0), .O(inst5_O));
SB_LUT4 #(.LUT_INIT(16'hCACA)) inst6 (.I0(inst2_O), .I1(inst5_O), .I2(J1[5]), .I3(1'b0), .O(inst6_O));
SB_LUT4 #(.LUT_INIT(16'hAAAA)) inst7 (.I0(J1[0]), .I1(J1[1]), .I2(J1[2]), .I3(J1[3]), .O(inst7_O));
SB_LUT4 #(.LUT_INIT(16'hAAAA)) inst8 (.I0(J1[0]), .I1(J1[1]), .I2(J1[2]), .I3(J1[3]), .O(inst8_O));
SB_LUT4 #(.LUT_INIT(16'hCACA)) inst9 (.I0(inst7_O), .I1(inst8_O), .I2(J1[4]), .I3(1'b0), .O(inst9_O));
SB_LUT4 #(.LUT_INIT(16'hAAAA)) inst10 (.I0(J1[0]), .I1(J1[1]), .I2(J1[2]), .I3(J1[3]), .O(inst10_O));
SB_LUT4 #(.LUT_INIT(16'hAAAA)) inst11 (.I0(J1[0]), .I1(J1[1]), .I2(J1[2]), .I3(J1[3]), .O(inst11_O));
SB_LUT4 #(.LUT_INIT(16'hCACA)) inst12 (.I0(inst10_O), .I1(inst11_O), .I2(J1[4]), .I3(1'b0), .O(inst12_O));
SB_LUT4 #(.LUT_INIT(16'hCACA)) inst13 (.I0(inst9_O), .I1(inst12_O), .I2(J1[5]), .I3(1'b0), .O(inst13_O));
SB_LUT4 #(.LUT_INIT(16'hCACA)) inst14 (.I0(inst6_O), .I1(inst13_O), .I2(J1[6]), .I3(1'b0), .O(inst14_O));
SB_LUT4 #(.LUT_INIT(16'hAAAA)) inst15 (.I0(J1[0]), .I1(J1[1]), .I2(J1[2]), .I3(J1[3]), .O(inst15_O));
SB_LUT4 #(.LUT_INIT(16'hAAAA)) inst16 (.I0(J1[0]), .I1(J1[1]), .I2(J1[2]), .I3(J1[3]), .O(inst16_O));
SB_LUT4 #(.LUT_INIT(16'hCACA)) inst17 (.I0(inst15_O), .I1(inst16_O), .I2(J1[4]), .I3(1'b0), .O(inst17_O));
SB_LUT4 #(.LUT_INIT(16'hAAAA)) inst18 (.I0(J1[0]), .I1(J1[1]), .I2(J1[2]), .I3(J1[3]), .O(inst18_O));
SB_LUT4 #(.LUT_INIT(16'hAAAA)) inst19 (.I0(J1[0]), .I1(J1[1]), .I2(J1[2]), .I3(J1[3]), .O(inst19_O));
SB_LUT4 #(.LUT_INIT(16'hCACA)) inst20 (.I0(inst18_O), .I1(inst19_O), .I2(J1[4]), .I3(1'b0), .O(inst20_O));
SB_LUT4 #(.LUT_INIT(16'hCACA)) inst21 (.I0(inst17_O), .I1(inst20_O), .I2(J1[5]), .I3(1'b0), .O(inst21_O));
SB_LUT4 #(.LUT_INIT(16'hAAAA)) inst22 (.I0(J1[0]), .I1(J1[1]), .I2(J1[2]), .I3(J1[3]), .O(inst22_O));
SB_LUT4 #(.LUT_INIT(16'hAAAA)) inst23 (.I0(J1[0]), .I1(J1[1]), .I2(J1[2]), .I3(J1[3]), .O(inst23_O));
SB_LUT4 #(.LUT_INIT(16'hCACA)) inst24 (.I0(inst22_O), .I1(inst23_O), .I2(J1[4]), .I3(1'b0), .O(inst24_O));
SB_LUT4 #(.LUT_INIT(16'hAAAA)) inst25 (.I0(J1[0]), .I1(J1[1]), .I2(J1[2]), .I3(J1[3]), .O(inst25_O));
SB_LUT4 #(.LUT_INIT(16'hAAAA)) inst26 (.I0(J1[0]), .I1(J1[1]), .I2(J1[2]), .I3(J1[3]), .O(inst26_O));
SB_LUT4 #(.LUT_INIT(16'hCACA)) inst27 (.I0(inst25_O), .I1(inst26_O), .I2(J1[4]), .I3(1'b0), .O(inst27_O));
SB_LUT4 #(.LUT_INIT(16'hCACA)) inst28 (.I0(inst24_O), .I1(inst27_O), .I2(J1[5]), .I3(1'b0), .O(inst28_O));
SB_LUT4 #(.LUT_INIT(16'hCACA)) inst29 (.I0(inst21_O), .I1(inst28_O), .I2(J1[6]), .I3(1'b0), .O(inst29_O));
SB_LUT4 #(.LUT_INIT(16'hCACA)) inst30 (.I0(inst14_O), .I1(inst29_O), .I2(J1[7]), .I3(1'b0), .O(inst30_O));
assign J3 = inst30_O;
endmodule
