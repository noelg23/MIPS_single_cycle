module control(opcode, RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, Branch_bne, Jump, AluOP);

input [5:0] opcode;

output reg RegDst;
output reg ALUSrc;
output reg MemtoReg;
output reg RegWrite;
output reg MemRead;
output reg MemWrite;
output reg Branch;
output reg Branch_bne;
output reg Jump;

output reg [1:0] AluOP;

always @(opcode) begin
	case (opcode)
		6'b000000:{RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, Branch_bne, Jump, AluOP}=11'b100100_000_10; //r
		6'b100011:{RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, Branch_bne, Jump, AluOP}=11'b011110_000_00; //lw
		6'b101011:{RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, Branch_bne, Jump, AluOP}=11'bx1x001_000_00; //sw
		6'b000100:{RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, Branch_bne, Jump, AluOP}=11'bx0x000_100_01; //beq
		6'b001000:{RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, Branch_bne, Jump, AluOP}=11'b010100_000_11; //addi - AluOP 11 for i
		6'b000101:{RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, Branch_bne, Jump, AluOP}=11'bx0x000_010_01; //bne
		6'b000010:{RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, Branch_bne, Jump, AluOP}=11'bxxx000_001_xx; //jump
		default:
	{RegDst,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,AluOP}=9'bxxx_xxx_x_xx;
	endcase
end

endmodule
