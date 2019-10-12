// Hacer un clock de 1Hz
module clock_divider_1Hz(input BOARD_CLK,
            output reg BOARD_LED0);

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
        BOARD_LED0 = ~BOARD_LED0;
endmodule
