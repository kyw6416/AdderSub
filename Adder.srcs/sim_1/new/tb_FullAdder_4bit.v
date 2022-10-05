`timescale 1ns / 1ps

module tb_FullAdder_4bit();
    reg [3:0] i_a, i_b;
    reg i_carry_in;
    wire [3:0] o_sum; 
    wire o_carry;

    FullAdder_4bit dut(
        .i_a(i_a),
        .i_b(i_b),
        .i_carry_in(1'b0),      // 1bit 
        .o_sum(o_sum),
        .o_carry(o_carry)
    );

    initial begin
        #00 i_a = 4'b0000; i_b = 4'b0000;   // 4bit  2
        #10 i_a = 4'd3; i_b = 4'd4;         // 4bit  10
        #10 i_a = 4'ha; i_b = 4'hb;       // 4bit  16
        #10 i_a = 4'd4; i_b = 4'd5;
        #10 i_a = 4'd5; i_b = 4'd6;
        #10 i_a = 4'd6; i_b = 4'd7;
        #10 $finish;
    end
endmodule
