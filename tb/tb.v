`timescale 1ps/1ps
module tb;

   reg CLK100;
always @(CLK100) begin
    #4980.00 CLK100 <= ~CLK100;
end

initial begin
  #0 CLK100 <= 1'b0;  // the first event that sets the clock in motion
end


reg [7:0]  Switch_input;
wire [7:0] LED_output;
wire       FPGA_RESET;

project project_i (
    .PUSH_BUTTON_RESET_RAW(FPGA_RESET),
    .LED_output_0(LED_output[0]),
    .LED_output_1(LED_output[1]),
    .LED_output_2(LED_output[2]),
    .LED_output_3(LED_output[3]),
    .LED_output_4(LED_output[4]),
    .LED_output_5(LED_output[5]),
    .LED_output_6(LED_output[6]),
    .SYSTEMCLOCK(CLK100),
    .Switch_input_0(Switch_input[0]),
    .Switch_input_1(Switch_input[1]),
    .Switch_input_2(Switch_input[2]),
    .Switch_input_3(Switch_input[3])
  );


initial begin
 #0         Switch_input <= 8'h00;
 $display("Switch set to zero");
 #1000000  Switch_input <= 8'h01;
 $display("Switch set to one");
 #2000000
 $display("TEST COMPLETE");
 $finish();
end

endmodule
