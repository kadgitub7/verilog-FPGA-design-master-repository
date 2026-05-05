// Example 4.1: A simple combinational circuit
// Not = ~
// AND = &
// OR = |
// assign is the way to show assignment of a variable in Verilog

// Other operators(Example 4.3 gates): 
// XOR = ^
// NAND = ~(A & B)
// NOR = ~(A | B)
// XNOR = ~(A ^ B)

// operators are the variable A, B, y
// Expressions are when you put operands(&, |, ~) together with operators
// a statement is when you assign an expression to a variable using assign
// continuous assignment is used for combination logic and invovles the right hand side of the statement to be calculated everytime inputs change


module sillyfunction(
    input a,b,c,
    output y
);
assign y = ~a & ~b & ~c | a & ~b & ~c | a & ~b & c;

endmodule
