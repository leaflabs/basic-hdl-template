/*
 * rot13.v
 *
 * Copyright: (C) 2013 LeafLabs, LLC
 * License: MIT License (See LICENSE file)
 * Author: Bryan Newbold <bnewbold@leaflabs.com>
 * Date: October 2013
 *
 * This is a very simple ASCII ROT13 implementation.
 *
 * Data on in_char is sampled on the rising edge of clock and updated on
 * out_char one clock cycle later.
 *
 */

module rot13 (
    input wire clock,
    input wire reset,
    input wire [7:0] in_char,
    output reg [7:0] out_char = 8'd0
    );

    always @(posedge clock) begin
        if (reset) begin
            out_char <= 8'd0;
        end else begin
            if (in_char >= 8'd97 && in_char < 8'd110) begin
                // 'a' through 'm'
                out_char <= in_char + 8'd13;
            end else if (in_char >= 8'd110 && in_char < 8'd123) begin
                // 'n' through 'z'
                out_char <= in_char - 8'd13;
            end else if (in_char >= 8'd65 && in_char < 8'd78) begin
                // 'A' through 'M'
                out_char <= in_char + 8'd13;
            end else if (in_char >= 8'd78 && in_char < 8'd91) begin
                // 'N' through 'Z'
                out_char <= in_char - 8'd13;
            end else begin
                // all other characters
                out_char <= in_char;
            end
        end
    end

endmodule
