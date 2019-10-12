//-------------------------------------------------------------------
//-- leds_tb.v
//-- Testbench
//-------------------------------------------------------------------
//-- Juan Gonzalez (Obijuan)
//-- Jesus Arroyo Torrens
//-- GPL license
//-------------------------------------------------------------------
`default_nettype none
`define DUMPSTR(x) `"x.vcd`"
`timescale 1 s / 100 ms

module clock_divider_1Hz_tb();

//-- Simulation time: 1us (10 * 100ns)
parameter DURATION = 10;

//-- Clock signal. It is not used in this simulation
reg clk = 0;
always #0.5 clk = ~clk;

//-- Leds port
wire l0;

//-- Instantiate the unit to test
clock_divider_1Hz UUT (
           .BOARD_LED0(l0)
         );


initial begin

  //-- File were to store the simulation results
  $dumpfile(`DUMPSTR(`VCD_OUTPUT));
  $dumpvars(0, clock_divider_1Hz_tb);

   #(DURATION) $display("End of simulation");
  $finish;
end

endmodule
