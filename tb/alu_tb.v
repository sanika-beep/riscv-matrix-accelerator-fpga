`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2026 10:19:49 AM
// Design Name: 
// Module Name: alu_tb
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


module alu_tb;

reg [31:0]A;
reg [31:0]B;
reg [2:0]alu_code;

wire [31:0] result;
wire zero;

alu uut(.A(A),.B(B),.alu_code(alu_code),.result(result),.zero(zero));

initial 
begin 
A = 10;
B = 20;
alu_code = 000;

#10;

A = 20;
B = 20;
alu_code = 001;

#10;

A = 12;
B = 10;
alu_code = 010;

#10;

A = 5;
B = 10;
alu_code = 101;

#10;

A=12;
B=10;
alu_code=011;
#10;

A=12;
B=10;
alu_code=100;
#10;

A=12;
B=8;
alu_code=101;
#10;

A=2;
B=6;
alu_code=111;
#10;


$finish;

end




endmodule
