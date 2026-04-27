`timescale 1ns / 1ps

module oneTwoDemux(
    input I,
    input S0,
    input E,
    output Y0,
    output Y1
    );
    
    assign Y0 = E& ~S0 & I;
    assign Y1 = E & S0 & I;
    
endmodule