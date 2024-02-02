module andm (inA, inB, inC, out);
//1 bit and for (branch & zero)
input inA, inB, inC;
output out;

assign out=(inA&inC) | (inB&(~inC));

endmodule
