`timescale 1ns / 1ps

module twoFourDecoder(
    input I0,
    input I1,
    output Y0,
    output Y1,
    output Y2,
    output Y3
    );
    
    oneFourDecoder decoder1(1'b1, I1,I0, 1'b1, Y0,Y1,Y2,Y3);
    
endmodule