module mips(clk, reset);
//main cpu module

input clk;
input reset;

wire [5:0] OpCode;

wire [1:0] ALUOp;

wire RegDst;
wire ALUSrc;
wire MemToReg;
wire RegWrite;
wire MemRead;
wire MemWrite;
wire Branch;
wire Branch_bne;
wire Jump;

datapath Datapath(clk,reset,RegDst,ALUSrc,MemToReg,RegWrite,MemRead,MemWrite,Branch,Branch_bne,Jump,ALUOp,OpCode);

control Control(OpCode,RegDst,ALUSrc,MemToReg,RegWrite,MemRead,MemWrite,Branch,Branch_bne,Jump,ALUOp); 

endmodule
