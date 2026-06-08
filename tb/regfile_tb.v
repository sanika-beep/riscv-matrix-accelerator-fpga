`timescale 1ns / 1ps

module regfile_tb;

    reg clk;
    reg we;

    reg [4:0] rs1;
    reg [4:0] rs2;
    reg [4:0] rd;

    reg [31:0] write_data;

    wire [31:0] read_data1;
    wire [31:0] read_data2;

    
    regfile uut (
        .clk(clk),
        .we(we),
        .rs1(rs1),
        .rs2(rs2),
        .rd(rd),
        .write_data(write_data),
        .read_data1(read_data1),
        .read_data2(read_data2)
    );

   
    always #5 clk = ~clk;

    initial
    begin
        clk = 0;
        we = 0;

        rs1 = 0;
        rs2 = 0;
        rd  = 0;
        write_data = 0;

        
        #10;
        we = 1;
        rd = 5'd1;
        write_data = 32'd25;

        #10;
        rs1 = 5'd1;

        #10;
       
        rd = 5'd2;
        write_data = 32'd50;

        #10;
        rs1 = 5'd2;

        #10;
       
        rs1 = 5'd1;
        rs2 = 5'd2;

        #10;

        
        rd = 5'd10;
        write_data = 32'd500;

        #10;

        rs1 = 5'd10;

        #10;

       
        rd = 5'd0;
        write_data = 32'd999;

        #10;

        rs1 = 5'd0;

        #10;

        
        we = 0;

        rd = 5'd7;
        write_data = 32'd777;

        #10;

        rs1 = 5'd7;

        #10;

       -
        we = 1;

        rd = 5'd7;
        write_data = 32'd777;

        #10;

        rs1 = 5'd7;

        #10;

       

        #20;
        $finish;
    end

    initial
    begin
        $monitor(
        "TIME=%0t | WE=%b | RD=%d | WDATA=%d | RS1=%d | RDATA1=%d | RS2=%d | RDATA2=%d",
        $time,we,rd,write_data,rs1,read_data1,rs2,read_data2);
    end

endmodule
