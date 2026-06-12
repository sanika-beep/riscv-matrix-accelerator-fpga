module alu(

    input [2:0] alu_code,
    input [31:0] A,
    input [31:0] B,

    output reg [31:0] result,
    output zero

);

always @(*)
begin

    case(alu_code)

        3'b000: result = A + B;
        3'b001: result = A - B;
        3'b010: result = A & B;
        3'b011: result = A | B;
        3'b100: result = A ^ B;
        3'b101: result = ($signed(A) < $signed(B)) ? 32'd1 : 32'd0;

        default: result = 32'd0;

    endcase

end

assign zero = (result == 32'd0);

endmodule
