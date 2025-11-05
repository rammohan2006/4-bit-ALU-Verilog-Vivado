module custom(
    input [3:0] A,
    output [3:0] ROL
);
    assign ROL = {A[2:0], A[3]};
endmodule
