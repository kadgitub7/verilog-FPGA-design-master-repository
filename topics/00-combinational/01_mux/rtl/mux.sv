// Parameterized 2:1 multiplexer (combinational only).
// Style: explicit width parameter for reuse in wider datapaths.

module mux #(
    parameter int unsigned WIDTH = 1
) (
    input  logic [WIDTH-1:0] a,
    input  logic [WIDTH-1:0] b,
    input  logic             sel,
    output logic [WIDTH-1:0] y
);
    assign y = sel ? b : a;
endmodule
