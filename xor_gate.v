module xor_gate(
    input [3:0] A,
    input [3:0] B,
    output [3:0] XOR_OUT
);
    assign XOR_OUT = A ^ B;
endmodule
