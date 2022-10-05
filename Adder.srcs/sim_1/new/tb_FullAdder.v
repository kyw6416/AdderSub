`timescale 1ns / 1ps

module tb_FullAdder();

    reg i_a, i_b, i_c;
    wire o_sum, o_carry;

    FullAdder dut(
    .i_a(i_a),
    .i_b(i_b),
    .i_c(i_c),
    .o_sum(o_sum),
    .o_carry(o_carry)
    );

    initial begin
        #00 i_a = 1'b0; i_b = 1'b0; i_c = 1'b0;
        #10 i_a = 1'b0; i_b = 1'b0; i_c = 1'b1;
        #10 i_a = 1'b0; i_b = 1'b1; i_c = 1'b0;
        #10 i_a = 1'b0; i_b = 1'b1; i_c = 1'b1;
        #10 i_a = 1'b1; i_b = 1'b0; i_c = 1'b0;
        #10 i_a = 1'b1; i_b = 1'b0; i_c = 1'b1;
        #10 i_a = 1'b1; i_b = 1'b1; i_c = 1'b0;
        #10 i_a = 1'b1; i_b = 1'b1; i_c = 1'b1;
        #10 $finish;
    end

endmodule
