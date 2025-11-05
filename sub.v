module sub(
    input [3:0] A,
    input [3:0] B,
    output [4:0] DIFF
);
    assign DIFF = A - B;
endmodule
