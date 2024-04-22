module main (
  input [2:0] opcode,
  input [7:0] A, B,
  output reg [7:0] Y
);

always @* begin
  case (opcode)
    3'b000: Y = A + B; // Add
    3'b001: Y = A - B; // Subtract
    3'b010: Y = A & B; // AND
    3'b100: Y = A | B; // OR
    3'b011: Y = A ^ B; // XOR
    3'b101: Y = ~(A & B); // NAND
    3'b110: Y = ~(A | B); // NOR
    3'b111: Y = ~(A ^ B); // XNOR
    default: Y = 8'b0;
  endcase
end

endmodule