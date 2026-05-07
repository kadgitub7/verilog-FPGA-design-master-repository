module flop(
    input clk,
    input [3:0] d,
    output [3:0] reg q
);
    always @(postedge clk)
        q <=d;
endmodule

module flopr(
    input clk,
    input reset,
    input [3:0] d,
    output [3:0] reg q
);
    //synchronous reset
    always @(postedge clk)
        if (reset) q <= 4'b0;
        else q <=d;
endmodule

module flopenr(
    input clk,
    input reset,
    input enable,
    input [3:0] d,
    output [3:0] reg q
);
    //asynchronous reset and enable
    always @(postedge clk, posedge reset)
        if (reset) q <= 4'b0;
        else if (enable) q <=d;
endmodule