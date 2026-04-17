// Self-checking testbench for mux (top module for Verilator --binary).

`timescale 1ns / 1ps

module tb_mux;
    localparam int unsigned W = 1;

    logic [W-1:0] a;
    logic [W-1:0] b;
    logic         sel;
    logic [W-1:0] y;

    mux #(.WIDTH(W)) dut (
        .a  (a),
        .b  (b),
        .sel(sel),
        .y  (y)
    );

    initial begin
        $display("tb_mux: starting checks (WIDTH=%0d)", W);

        a = 1'b0;
        b = 1'b1;
        sel = 1'b0;
        #1;
        if (y !== 1'b0) begin
            $error("FAIL: sel=%b a=%b b=%b expected y=0 got y=%b", sel, a, b, y);
            $fatal(1);
        end

        sel = 1'b1;
        #1;
        if (y !== 1'b1) begin
            $error("FAIL: sel=%b a=%b b=%b expected y=1 got y=%b", sel, a, b, y);
            $fatal(1);
        end

        a = 1'b1;
        b = 1'b0;
        sel = 1'b0;
        #1;
        if (y !== 1'b1) begin
            $error("FAIL: sel=%b a=%b b=%b expected y=1 got y=%b", sel, a, b, y);
            $fatal(1);
        end

        sel = 1'b1;
        #1;
        if (y !== 1'b0) begin
            $error("FAIL: sel=%b a=%b b=%b expected y=0 got y=%b", sel, a, b, y);
            $fatal(1);
        end

        $display("tb_mux: PASS");
        $finish;
    end
endmodule
