module alu_top(
    input [3:0] A,
    input [3:0] B,
    input [2:0] opcode,
    output reg [7:0] result
);

    wire [4:0] sum, diff;
    wire [7:0] prod, quot;
    wire [3:0] and_out, or_out, xor_out, rol_out;

    // Instantiate submodules
    add      u1 (.A(A), .B(B), .SUM(sum));
    sub      u2 (.A(A), .B(B), .DIFF(diff));
    mul      u3 (.A(A), .B(B), .PROD(prod));
    div      u4 (.A(A), .B(B), .QUOT(quot));
    and_gate u5 (.A(A), .B(B), .AND_OUT(and_out));
    or_gate  u6 (.A(A), .B(B), .OR_OUT(or_out));
    xor_gate u7 (.A(A), .B(B), .XOR_OUT(xor_out));
    custom   u8 (.A(A), .ROL(rol_out));

    always @(*) begin
        case(opcode)
            3'b000: result = {3'b000, sum};   // ADD
            3'b001: result = {3'b000, diff};  // SUB
            3'b010: result = prod;            // MUL
            3'b011: result = quot;            // DIV
            3'b100: result = {4'b0000, and_out};
            3'b101: result = {4'b0000, or_out};
            3'b110: result = {4'b0000, xor_out};
            3'b111: result = {4'b0000, rol_out}; // CUSTOM
            default: result = 8'b00000000;
        endcase
    end
endmodule
