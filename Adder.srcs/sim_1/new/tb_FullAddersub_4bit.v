`timescale 1ns / 1ps


module tb_FullAddersub_4bit();
    reg [3:0] i_a, i_b;
    reg i_mode;
    wire [3:0] o_sum; 
    wire o_carry;
     

    FullAddersub_4bit dut(
        .i_a(i_a),
        .i_b(i_b),
        .i_mode(i_mode),      // 1bit 
        .o_sum(o_sum),
        .o_carry(o_carry)
    );
   
   initial begin
        #00 i_a = 4'd6; i_b = 4'd5; i_mode = 4'd1;
        #10 i_a = 4'd6; i_b = 4'd5; i_mode = 4'd0;
        #10 i_a = 4'd6; i_b = 4'd4; i_mode = 4'd1;
        #10 i_a = 4'd6; i_b = 4'd4; i_mode = 4'd0;
        #10 i_a = 4'd6; i_b = 4'd3; i_mode = 4'd1;
        #10 i_a = 4'd6; i_b = 4'd3; i_mode = 4'd0;
        #10 i_a = 4'd0; i_b = 4'd0; i_mode = 4'd1;
        #10 $finish;
    end


endmodule
