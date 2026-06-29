`timescale 1ns / 1ps

module control_unit_tb;

    
    reg [6:0] opcode;

    wire RegWrite;
    wire ALUSrc;
    wire MemRead;
    wire MemWrite;
    wire Branch;
    wire [1:0] ALUOp;

  
    control_unit uut (
        .opcode(opcode),
        .RegWrite(RegWrite),
        .ALUSrc(ALUSrc),
        .MemRead(MemRead),
        .MemWrite(MemWrite),
        .Branch(Branch),
        .ALUOp(ALUOp)
    );

    initial begin

        
        opcode = 7'b0110011;
        #10;
        $display("TEST1 : R-Type");
        $display("Opcode=%b RegWrite=%b ALUSrc=%b MemRead=%b MemWrite=%b Branch=%b ALUOp=%b",
                  opcode, RegWrite, ALUSrc, MemRead, MemWrite, Branch, ALUOp);

      
        opcode = 7'b0010011;
        #10;
        $display("TEST2 : ADDI");
        $display("Opcode=%b RegWrite=%b ALUSrc=%b MemRead=%b MemWrite=%b Branch=%b ALUOp=%b",
                  opcode, RegWrite, ALUSrc, MemRead, MemWrite, Branch, ALUOp);

      
        opcode = 7'b0000011;
        #10;
        $display("TEST3 : LW");
        $display("Opcode=%b RegWrite=%b ALUSrc=%b MemRead=%b MemWrite=%b Branch=%b ALUOp=%b",
                  opcode, RegWrite, ALUSrc, MemRead, MemWrite, Branch, ALUOp);

       
        opcode = 7'b0100011;
        #10;
        $display("TEST4 : SW");
        $display("Opcode=%b RegWrite=%b ALUSrc=%b MemRead=%b MemWrite=%b Branch=%b ALUOp=%b",
                  opcode, RegWrite, ALUSrc, MemRead, MemWrite, Branch, ALUOp);

       
        opcode = 7'b1100011;
        #10;
        $display("TEST5 : BEQ");
        $display("Opcode=%b RegWrite=%b ALUSrc=%b MemRead=%b MemWrite=%b Branch=%b ALUOp=%b",
                  opcode, RegWrite, ALUSrc, MemRead, MemWrite, Branch, ALUOp);

   
        opcode = 7'b1111111;
        #10;
        $display("TEST6 : INVALID OPCODE");
        $display("Opcode=%b RegWrite=%b ALUSrc=%b MemRead=%b MemWrite=%b Branch=%b ALUOp=%b",
                  opcode, RegWrite, ALUSrc, MemRead, MemWrite, Branch, ALUOp);

        $finish;

    end

endmodule
