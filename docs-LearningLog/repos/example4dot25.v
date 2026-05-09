module sevenSegmentDecoder(
    input [3:0] a,
    output reg [6:0] y
);
    always @(*)
        case (a)
            0: y = 7'b1111110; // 0
            1: y = 7'b0110000; // 1
            2: y = 7'b1101101; // 2
            3: y = 7'b1111001; // 3
            4: y = 7'b0110011; // 4
            5: y = 7'b1011011; // 5
            6: y = 7'b1011111; // 6
            7: y = 7'b1110000; // 7
            8: y = 7'b1111111; // 8
            9: y = 7'b1111011; // 9
            default: y = 7'b0000000; // blank
        endcase
endmodule