module pclogic(clk, reset, ain, aout, pcsel, jump, jump_value);

input reset;
input clk;
input [31:0] ain;
//pecsel = branch & zero
input pcsel, jump;
input [25:0] jump_value;

output reg [31:0] aout;

always @(posedge clk ) begin
	if (reset==1)
		aout<=32'b0;
	else
		if (jump == 1)
			aout<={aout[31:26],jump_value};
		else if (pcsel==0) begin
			aout<=aout+1;
		end
		else if (pcsel==1) begin
			aout<=ain+aout+1; //branch
	end
end


endmodule
