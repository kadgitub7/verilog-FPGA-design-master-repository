module mux2(
    # (parameter width = 8)
    input [width-1:0] d0, d1,
    input s,
    output reg [width-1:0] y
);
    assign y = s ? d1 : d0;

endmodule

module mux4_8 (
    input [7:0] d0, d1, d2, d3,
    input [1:0] s,
    output [7:0] y
);
    wire [7:0] low, hi;
    mux2 lowmux (d0, d1, s[0], low);
    mux2 himux (d2, d3, s[1], hi);
    mux2 outmux (low, hi, s[1], y);
endmodule

// Here we do not need the parameter above because we are within the range, below we need the parameter since we are outside the default and therefore require the 
//value
// The # sign in not a delay in this case, it is a parameter override.
module mux4_12 (
    input [11:0] d0, d1, d2, d3,
    input [1:0] s,
    output [11:0] y
);
    wire [11:0] low, hi;
    mux2 #(12) lowmux(d0, d1, s[0], low);
    mux2 #(12) himux(d2, d3, s[1], hi);
    mux2 #(12) outmux(low, hi, s[1], y);
endmodule