module or_gate(
    input [3:0] A,
    input [3:0] B,
    output [3:0] OR_OUT
);
    assign OR_OUT = A | B;
endmodule
