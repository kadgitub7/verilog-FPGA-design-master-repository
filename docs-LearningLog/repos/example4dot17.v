module mux2_8(
    input [7:0] b0, b1,
    input s,
    output [7:0] y
);

    mux2 lsb_mux(b0[3:0], b1[3:0], s, y[3:0]);
    mux2 msb_mux(b0[7:4], b1[7:4], s, y[7:4]);
endmodule