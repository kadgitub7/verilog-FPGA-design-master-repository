module mux4(
    input [3:0] b0,b1,b2,b3,
    input [1:0] s,
    output [3:0] y
);
    wire [3:0] low, high;
    mux2 low_mux(.b0(b0), .b1(b1), .s(s[0]), .y(low));
    mux2 high_mux(.b0(b2), .b1(b3), .s(s[0]), .y(high));
    mux2 final_mux(.b0(low), .b1(high), .s(s[1]), .y(y));
    
endmodule