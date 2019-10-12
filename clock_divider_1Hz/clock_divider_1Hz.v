// Hacer un clock de 1Hz
module clock_divider_1Hz(input BOARD_CLK,
            output reg BOARD_LED0,
			output reg BOARD_LED1,
			output reg BOARD_LED2,
			output reg BOARD_LED3,
			output reg BOARD_LED4,
			output reg BOARD_LED5,
			output reg BOARD_LED6,
			output reg BOARD_LED7);
	
    reg [23:0] divcounter= 24'b0;
    wire clk_out;
	
    always @(posedge BOARD_CLK)
        begin
            divcounter <= divcounter + 1; 
            if (divcounter == 11999999) //como el clock original es de 12MHz contamos desde 0 hasta 11999999
                divcounter <= 24'b0;
        end
    assign clk_out = divcounter[23];
    always @(posedge clk_out)
		begin
        BOARD_LED0 = ~BOARD_LED0;
		BOARD_LED1 = BOARD_LED2;
		BOARD_LED2 = ~BOARD_LED2;
		BOARD_LED3 = 1'b0;
		BOARD_LED4 = 1'b0;
		BOARD_LED5 = 1'b0;
		BOARD_LED6 = 1'b0;
		BOARD_LED7 = 0;
		end
endmodule
