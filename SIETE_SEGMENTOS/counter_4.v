module counter_up_4(
		input UP,
		output reg [3:0] OUT
		);
	
	always @(posedge UP)
	begin
		OUT <= OUT+1;
	end
endmodule