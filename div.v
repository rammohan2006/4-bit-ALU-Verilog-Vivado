module div(
    input [3:0] A,
    input [3:0] B,
    output [7:0] QUOT
);
    assign QUOT = (B != 0) ? (A / B) : 8'b00000000; // Avoid divide-by-zero
endmodule
