`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/16/2026 12:01:29 PM
// Design Name: 
// Module Name: imm_gen_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module imm_gen_tb(

    );
    reg [31:0] instruction;
        wire [31:0] immediate;
        
 imm_gen dut(.instruction(instruction) , .immediate(immediate) );
    
    initial begin
 
        
 
         
         instruction = 32'b00000001010000000000000000000000;
         #10;
         $display("TEST1 (+20)   : Immediate = %0d (0x%h)", $signed(immediate), immediate);
 
         
         instruction = 32'b11111111110000000000000000000000;
         #10;
         $display("TEST2 (-4)    : Immediate = %0d (0x%h)", $signed(immediate), immediate);
 
         
         instruction = 32'b00000000000000000000000000000000;
         #10;
         $display("TEST3 (0)     : Immediate = %0d (0x%h)", $signed(immediate), immediate);
 
         
         instruction = 32'b01111111111100000000000000000000;
         #10;
         $display("TEST4 (+2047) : Immediate = %0d (0x%h)", $signed(immediate), immediate);
 
         
         instruction = 32'b10000000000000000000000000000000;
         #10;
         $display("TEST5 (-2048) : Immediate = %0d (0x%h)", $signed(immediate), immediate);
 
         
         instruction = 32'b11111111111100000000000000000000;
         #10;
         $display("TEST6 (-1)    : Immediate = %0d (0x%h)", $signed(immediate), immediate);
 

 
         $finish;
 
     end
 
endmodule
