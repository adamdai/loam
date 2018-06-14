module main (output  LED, input  CLKIN, input [1:0] SWITCH);
wire  inst0_Q;
FDRSE #(.INIT(1'h0)) inst0 (.C(CLKIN), .CE(1'b1), .R(SWITCH[0]), .S(SWITCH[1]), .D(inst0_Q), .Q(inst0_Q));
assign LED = inst0_Q;
endmodule

