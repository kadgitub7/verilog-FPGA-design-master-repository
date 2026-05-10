module divideBy3FSM(
    input clk,
    input resert,
    output y
);
    reg [1:0] state, nextstate;

    parameter S0 = 2'b00;
    parameter S1 = 2'b01;
    parameter S2 = 2'b10;

    always @(posedge clk, posedge reset)
        if (reset) state <= S0;
        else state <= nextstate;
    
    always @(*)
        case (state)
            S0: S1 = nextstate;
            S1: S2 = nextstate;
            S2: S0 = nextstate;
            default: S0 = nextstate;
        endcase
    
    assign y = (state == S0);
endmodule