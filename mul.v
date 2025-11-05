module mul(
    input [3:0] A,
    input [3:0] B,
    output [7:0] PROD
);
    assign PROD = A * B;
endmodule
