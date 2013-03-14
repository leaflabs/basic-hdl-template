module main
   (
    output wire LED_output_0,
    output wire LED_output_1,
    output wire LED_output_2,
    output wire LED_output_3,
    output wire LED_output_4,
    output wire LED_output_5,
    output wire LED_output_6,
    input wire 	Switch_input_0,
    input wire 	Switch_input_1,
    input wire 	Switch_input_2,
    input wire 	Switch_input_3,
    input wire 	SYSTEMCLOCK,
    input wire 	PUSH_BUTTON_RESET_RAW //Xilinx GTP - this is active low-
    );

   assign LED_output_0 = 1'b0;
   assign LED_output_1 = 1'b0;
   assign LED_output_2 = 1'b0;
   assign LED_output_3 = 1'b0;
   assign LED_output_4 = 1'b0;
   assign LED_output_5 = 1'b0;
   assign LED_output_6 = 1'b0;

endmodule
