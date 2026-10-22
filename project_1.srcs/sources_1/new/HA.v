`timescale 1ns / 1ps
module binary_subtractor (
    input A, B, Bin,
    output D, Bout
);
    // Difference logic
    assign D = A ^ B ^ Bin;

    // Borrow-out logic
    assign Bout = (~A & B) | (B & Bin) | (~A & Bin);

endmodule

