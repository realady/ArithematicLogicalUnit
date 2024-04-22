module main (
  input [2:0] opcode,
  input [7:0] A, B,
  output reg [7:0] Y
);

always @* begin
  case (opcode)
    3'b000: Y = A + B; 
    3'b001: Y = A - B;
    3'b010: Y = A & B; 
    3'b100: Y = A | B;
    3'b011: Y = A ^ B;
    3'b101: Y = ~(A & B); 
    3'b110: Y = ~(A | B); 
    3'b111: Y = ~(A ^ B); 
    default: Y = 8'b0;
  endcase
end

endmodule