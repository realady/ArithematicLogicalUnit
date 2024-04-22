module main_tb;

  reg [2:0] opcode;
  reg [7:0] A, B;
  wire [7:0] Y;
  reg [7:0] mem [0:2]; // Declare a memory

  main uut (
    .opcode(opcode),
    .A(A),
    .B(B),
    .Y(Y)
  );

  initial begin
    $dumpfile("main.vcd");
    $dumpvars;

    $monitor("opcode = %b, A = %d, B = %d, Y = %d\n", opcode, A, B, Y);

    // User input for opcode, A, and B from a file
    $readmemb("input.txt", mem);

    opcode = mem[0][2:0]; // Assign the values to opcode, A, and B
    A = mem[1];
    B = mem[2];

    #100 $finish;
  end

endmodule
