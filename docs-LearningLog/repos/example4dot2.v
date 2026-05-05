// Example 4.2: Inverter module
// This bus of values stored in a is inverted and stored in y
// the design [3:0] represents a bus of values and follow little-endian format where the Least Significant Bit gets the smallest value in the index
// big-endian is the reverse where it would be [0:3] where smallest value is most significant bit
module inv(
    input [3:0] a,
    output [3:0] y
);
    assign y = ~a;
endmodule