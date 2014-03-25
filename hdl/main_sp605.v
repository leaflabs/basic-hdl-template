/*
 * main_sp605.v
 *
 * Copyright: (C) 2013 LeafLabs, LLC
 * License: MIT License (See LICENSE file)
 * Author: Bryan Newbold <bnewbold@leaflabs.com>
 * Date: May-June 2013
 *
 * This top-level module contains only device-specific instantiations and
 * wiring. It connects central_core (the top-level functional module) with
 * specific device resources (DCMs, buffers, etc) and I/O Pads.
 *
 * This file is for use with the Xilinx SP605 development board, for
 * development purposes before porting to the LeafLabs WiredLeaf board.
 *
 * It is assumed that a 25MHz crystal is inserted into the User Clock module
 * on the SP605, replacing the default 27MHz crystal.
 *
 * TODO: test this in hardware
 */

module main (
    // Clocks
    input wire reset_button,
    input wire user_clock,

    // GPIO, LEDs, Buttons
    input wire[3:0] gpio_switch,
    input wire[3:0] gpio_button,
    inout wire[3:0] gpio_header,
    output wire[3:0] gpio_led,

    // UART
    input wire uart_rx,
    output wire uart_tx

    );  // don't forget to remove trailing comma!

wire reset;
assign reset = reset_button;
wire clock_25mhz;
assign clock_25mhz = user_clock;

reg [23:0] throb_counter = 0;
reg throb_led = 0;
assign gpio_led[0] = throb_led;

wire [7:0] rx_byte;
wire [7:0] tx_byte;
wire uart_flag;
assign gpio_led[1] = uart_flag;
simple_uart #(
    .CLOCK_DIVIDE(651) // for (non-standard) 25MHz clock 
) simple_uart_inst (
    .clk(clock_25mhz),
    .rst(reset),
    .rx(uart_rx),
    .tx(uart_tx),
    .transmit(uart_flag),
    .tx_byte(tx_byte),
    .received(uart_flag),
    .rx_byte(rx_byte),
    .is_receiving(),
    .is_transmitting(),
    .recv_error()
);

rot13 rot13_inst (
    .clock(clock_25mhz),
    .reset(reset),
    .in_char(rx_byte),
    .out_char(tx_byte)
);

always @(posedge clock_25mhz) begin
    if (reset) begin
        throb_counter <= 0;
        throb_led <= 0;
    end else begin
        if (throb_counter >= 24'd12_500_000) begin
            throb_led <= !throb_led;
            throb_counter <= 24'd0;
        end else begin
            throb_counter <= throb_counter + 24'd1;
        end
    end
end

// Tie off extra signals
assign gpio_led[3:2] = 0;
assign gpio_header = gpio_switch;

endmodule

