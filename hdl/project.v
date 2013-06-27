// very minimal example top-level module

module main (
    output reg [3:0] gpio_led,
    input wire [3:0] gpio_switch,
    input wire SYSTEMCLOCK,
    input wire PUSH_BUTTON_RESET_RAW // this is active low
    );

    wire reset;
    assign reset = !PUSH_BUTTON_RESET_RAW;

    reg [25:0] throb_counter = 0;

    always @(posedge SYSTEMCLOCK) begin
        if (reset) begin
            gpio_led <= 7'b1111;
            throb_counter <= 26'd0;
        end else begin
            gpio_led[1:0] <= gpio_switch[1:0];
            gpio_led[2] <= gpio_switch[2] || gpio_switch[3];
            if (throb_counter >= 26'd50_000_000) begin
                gpio_led[3] <= !gpio_led[3]; 
                throb_counter <= 26'd0;
            end else begin
                throb_counter <= throb_counter + 26'd1;
            end
        end
    end

endmodule
