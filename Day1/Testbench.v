// Code your testbench here
// or browse Examples
// Testbench for Verification
module testbench;
    reg A, B;
    wire Y_and, Y_or, Y_not, Y_nand, Y_nor, Y_xor, Y_xnor;

    // Instantiate all gate modules
    and_gate u1 (.A(A), .B(B), .Y(Y_and));
    or_gate u2 (.A(A), .B(B), .Y(Y_or));
    not_gate u3 (.A(A), .Y(Y_not));
    nand_gate u4 (.A(A), .B(B), .Y(Y_nand));
    nor_gate u5 (.A(A), .B(B), .Y(Y_nor));
    xor_gate u6 (.A(A), .B(B), .Y(Y_xor));
    xnor_gate u7 (.A(A), .B(B), .Y(Y_xnor));

    initial begin
        $monitor("A=%b B=%b | AND=%b OR=%b NOT(A)=%b NAND=%b NOR=%b XOR=%b XNOR=%b",
                 A, B, Y_and, Y_or, Y_not, Y_nand, Y_nor, Y_xor, Y_xnor);
                 
        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;
        
        $finish;
    end
endmodule
