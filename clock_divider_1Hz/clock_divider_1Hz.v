// Hacer un clock de 1Hz
module clock_divider_1Hz(input BOARD_CLK,
            output reg BOARD_LED0);

    reg [22:0] divcounter= 23'b0;
    wire clk_out;
    always @(posedge BOARD_CLK)
        begin
            divcounter <= divcounter + 1; 
            if (divcounter == 5999999)
                divcounter <= 23'b0;
        end
    assign clk_out = divcounter[22];
    always @(posedge clk_out)
        BOARD_LED0 = ~BOARD_LED0;
endmodule
