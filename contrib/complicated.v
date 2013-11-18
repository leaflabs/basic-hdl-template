/*
 * complicated.v
 *
 * Copyright: (C) 2013 LeafLabs, LLC
 * License: MIT License (See LICENSE file)
 * Author: Bryan Newbold <bnewbold@leaflabs.com>
 * Date: November 2013
 *
 * This is an intentionally complicated top-level file.
 *
 * TODO if using this as a template for another design:
 *  - use a clock buffer, even if sticking with 12mhz
 */

module complicated (
    input wire clock_12mhz,
    inout wire [31:0] chan,
    inout wire chan_clk,

    //// Flash and microSD I/O
    output wire microsd_cs,
    output wire flash_cs,
    output wire flash_sclk,
    output wire flash_mosi,
    output wire flash_miso
    );

    parameter GIT_COMMIT = 0;
    parameter BUILD_UNIX_TIME = 0;

    wire reset = chan[0];

    reg [22:0] throb_counter = 0;
    reg throb_led = 0;
    assign chan[10] = throb_led;

    bram bram_inst (
        .clka(clock_12mhz),
        .ena(1'b0),
        .wea(1'b1),
        .addra(10),
        .dina(11),
        .clkb(clock_12mhz),
        .rstb(reset),
        .enb(1'b0),
        .addrb(13),
        .doutb()
        );

    always @(posedge clock_12mhz) begin
        if (reset) begin
            throb_counter <= 0;
            throb_led <= 0;
        end else begin
            if (throb_counter >= 23'd06_000_000) begin
                throb_led <= !throb_led;
                throb_counter <= 23'd0;
            end else begin
                throb_counter <= throb_counter + 23'd1;
            end
        end
    end

    // Tie off unused outputs
    assign microsd_cs = 1'bZ;
    assign flash_cs = 1'bZ;
    assign flash_sclk = 1'bZ;
    assign flash_mosi = 1'bZ;
    assign flash_miso = 1'bZ;

endmodule
