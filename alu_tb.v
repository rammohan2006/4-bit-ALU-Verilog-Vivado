`timescale 1ns/1ps
module alu_tb;
    reg [3:0] A, B;
    reg [2:0] opcode;
    wire [7:0] result;

    alu_top DUT (.A(A), .B(B), .opcode(opcode), .result(result));

    initial begin
        A = 4'b0011; B = 4'b0001; opcode = 3'b000; #10;
        A = 4'b0101; B = 4'b0010; opcode = 3'b001; #10;
        A = 4'b0011; B = 4'b0010; opcode = 3'b010; #10;
        A = 4'b1000; B = 4'b0010; opcode = 3'b011; #10;
        A = 4'b1100; B = 4'b1010; opcode = 3'b100; #10;
        A = 4'b1100; B = 4'b1010; opcode = 3'b101; #10;
        A = 4'b1100; B = 4'b1010; opcode = 3'b110; #10;
        A = 4'b1011; opcode = 3'b111; #10;
        $finish;
    end

    initial begin
        $monitor("Time=%0t | A=%b | B=%b | Opcode=%b | Result=%b", $time, A, B, opcode, result);
    end
endmodule
