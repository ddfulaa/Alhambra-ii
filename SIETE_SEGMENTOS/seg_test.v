module seg_test(
		input BOARD_CLK,
		input BOARD_SW1,
		output [7:0] BOARD_SEG
		);
wire [3:0] c_out;
counter_up_4 c1(.UP(BOARD_SW1), .OUT(c_out));
decoder_7_seg decoder(.CLK (BOARD_CLK), .SEG (BOARD_SEG), .IN(c_out));
endmodule