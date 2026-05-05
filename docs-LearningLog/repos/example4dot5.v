// This is a conditional assignment statement where the ? signifies that the first expression being 1 means y gets b1, but the s being 0 means y gets b0

module mux2(
    input [3:0] b0,b1,
    input s,
    output [3:0] y
);

assign y = s ? b1 : b0;

endmodule