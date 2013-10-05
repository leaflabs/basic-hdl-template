`timescale 1ps/1ps
module tb;

   reg CLK100;
always @(CLK100) begin
    #4980.00 CLK100 <= ~CLK100;
end

initial begin
  #0 CLK100 <= 1'b0;  // the first event that sets the clock in motion
end


reg [3:0]  Switch_input;
wire [3:0] LED_output;
wire       FPGA_RESET;

main main_i (
    .PUSH_BUTTON_RESET_RAW(FPGA_RESET),
    .SYSTEMCLOCK(CLK100),
    .gpio_led(LED_output),
    .gpio_switch(Switch_input)
  );


initial begin
 #0         Switch_input <= 4'h00;
 $display("Switch set to zero");
 #1000000  Switch_input <= 4'h01;
 $display("Switch set to one");
 #2000000
 $display("TEST COMPLETE");
 $finish();
end

endmodule
