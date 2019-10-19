module counter_4(
		input BOARD_SW1,
		output reg [3:0] BOARD_LED
		);
	
	always @(posedge BOARD_SW1)
	begin
		BOARD_LED <= BOARD_LED+1;
	end

endmodule