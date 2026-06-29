`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/29/2026 12:47:54 PM
// Design Name: 
// Module Name: instr_mem
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


module instr_mem(

    input [31:0] pc,
    output [31:0] instruction

);

reg [31:0] memory [0:255];

initial begin
    memory[0] = 32'h00A00093;   // addi x1, x0, 10
    memory[1] = 32'h01400113;   // addi x2, x0, 20
    memory[2] = 32'h002081B3;   // add  x3, x1, x2
    memory[3] = 32'h40118233;   // sub  x4, x3, x1
end

assign instruction = memory[pc[31:2]];

endmodule
