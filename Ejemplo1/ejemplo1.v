// Encender todos los leds de la tarjeta
module ejemplo1(output wire BOARD_LED0,
            output wire BOARD_LED1,
            output wire BOARD_LED2,
            output wire BOARD_LED3,
            output wire BOARD_LED4);

assign BOARD_LED0 = 1'b0;
assign BOARD_LED1 = 1'b1;
assign BOARD_LED2 = 1'b1;
assign BOARD_LED3 = 1'b1;
assign BOARD_LED4 = 1'b1;

endmodule
