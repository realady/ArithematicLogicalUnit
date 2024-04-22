import os
print('''

 ---- WELCOME TO ALU IMPLEMENTATION ----
|                                        |
|      000 - ADDITION                    |
|      001 - SUBTRACTION                 |
|      010 - AND OPERATION               |
|      100 - OR OPERATION                |
|      011 - XOR OPERATION               |
|      101 - NAND OPERATION              |
|      111 - XNOR OPERATION              |
|                                        |
 ---------------------------------------
''')
opcode = input("Enter opcode: ")

print('''
 ---------------------------------------
|      ENTER THE VALUES IN BINARY        |
 ---------------------------------------
''')

A = input("Enter A: ")
B = input("Enter B: ")
with open('input.txt', 'w') as f:
    f.write(f"{opcode}\n{A}\n{B}\n")
os.system("iverilog -o main mainTB.v")
os.system("vvp main")

print('''
 ---------------------------------------
|                                       |
|      CREATED BY :                     |
|      - Adarsh                         |
|      - Yashvardhan Dhaka              |
|      - Arindam Singh                  |
|      - Kavit Shukla                   |
|      - Saksham Gupta                  |
|                                       |
 ---------------------------------------
''')