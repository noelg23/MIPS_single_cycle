module mem_async(a,d);
//asynchronous memory with 256 32-bit locations
//for instruction memory
parameter S=32;
parameter L=256;

input [$clog2(L) - 1:0] a;
output [(S-1):0] d;

reg [S-1:0] memory [L-1:0];
assign d=memory[a];

initial $readmemh("D:/3. VLSI - Masters/3. S2/EC792/2. Lab/3. Lab-2_1/MIPS-single-cycle-master/MIPS-single-cycle-master/meminstr.dat", memory);

endmodule
