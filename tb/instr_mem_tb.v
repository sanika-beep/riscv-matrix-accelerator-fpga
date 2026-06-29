`timescale 1ns / 1ps

module instr_mem_tb;

    reg [31:0] pc;

  
    wire [31:0] instruction;

    instr_mem uut (
        .pc(pc),
        .instruction(instruction)
    );

    initial begin

       
        pc = 32'd0;
        #10;
        $display("TEST1 : PC = %0d | Instruction = 0x%h", pc, instruction);

        pc = 32'd4;
        #10;
        $display("TEST2 : PC = %0d | Instruction = 0x%h", pc, instruction);

     
        pc = 32'd8;
        #10;
        $display("TEST3 : PC = %0d | Instruction = 0x%h", pc, instruction);

       
        pc = 32'd12;
        #10;
        $display("TEST4 : PC = %0d | Instruction = 0x%h", pc, instruction);

      
        pc = 32'd16;
        #10;
        $display("TEST5 : PC = %0d | Instruction = 0x%h", pc, instruction);

     

        $finish;

    end

endmodule
