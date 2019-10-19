module decoder_7_seg(
		input CLK,
		input [3:0] IN,
		output reg [7:0] SEG
		);

always @(posedge CLK)
begin
	case(IN)
		4'd0: SEG <= 8'b00111111;
		4'd1: SEG <= 8'b00000110;
		4'd2: SEG <= 8'b01011011;
		4'd3: SEG <= 8'b01001111;
		4'd4: SEG <= 8'b01100110;
		4'd5: SEG <= 8'b01101101;
		4'd6: SEG <= 8'b01111101;
		4'd7: SEG <= 8'b00000111;
		4'd8: SEG <= 8'b01111111;
		4'd9: SEG <= 8'b01101111;
		4'hA: SEG <= 8'b01110111;
		4'hB: SEG <= 8'b01111100;
		4'hC: SEG <= 8'b00111001;
		4'hD: SEG <= 8'b01011110;
		4'hE: SEG <= 8'b01111001;
		4'hF: SEG <= 8'b01110001;
		default: SEG <= 8'b00000000;
	endcase
end
endmodule