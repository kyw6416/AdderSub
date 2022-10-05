`timescale 1ns / 1ps

// Test Bench

module tb_HalfAdder();

    reg i_a, i_b;
    wire o_sum, o_carry;
    
    HalfAdder dut(
    .i_a(i_a),
    .i_b(i_b),
    .o_sum(o_sum),
    .o_carry(o_carry)
    );

    initial begin
        #00 i_a = 1'b0; i_b = 1'b0;  
        #10 i_a = 1'b0; i_b = 1'b1;  
        #10 i_a = 1'b1; i_b = 1'b0;
        #10 i_a = 1'b1; i_b = 1'b1;
        #10 $finish;
    end

endmodule