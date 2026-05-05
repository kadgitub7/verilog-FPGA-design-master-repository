module and8(
    input [7:0] a,
    output y
);
    assign y = &a;
    // assign y = a[0] & a[1] & a[2] & a[3] & a[4] & a[5] & a[6] & a[7];
    // These two statements are equivalent, the first one is just a more concise way to write it using the reduction operator & which applies the AND operation across all bits of the input a

endmodule