module and_gate(
    input [3:0] A,
    input [3:0] B,
    output [3:0] AND_OUT
);
    assign AND_OUT = A & B;
endmodule
