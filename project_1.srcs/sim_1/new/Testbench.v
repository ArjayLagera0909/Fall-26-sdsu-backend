`timescale 1ns / 1ps
module testbench;
    reg A, B, Bin;
    wire D, Bout;

    // Instantiate the binary subtractor module
    binary_subtractor uut (
        .A(A), 
        .B(B), 
        .Bin(Bin), 
        .D(D), 
        .Bout(Bout)
    );

    initial begin
        // Test all possible combinations of inputs
        $display("A B Bin | D Bout");
        for (integer i = 0; i < 8; i = i + 1) begin
            {A, B, Bin} = i;
            #10; // Wait for signals to propagate
            $display("%b %b %b  | %b  %b", A, B, Bin, D, Bout);
        end
        $finish;
    end
endmodule

