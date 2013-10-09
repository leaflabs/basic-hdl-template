`timescale 1ns/1ps
module xula2_tb;

reg synth_clk_12mhz;
always @(synth_clk_12mhz) begin
    #83333.33 synth_clk_12mhz <= ~synth_clk_12mhz;
end

initial begin
    // the first event that sets the clock in motion
    #0 synth_clk_12mhz <= 1'b0;
end

reg reset;
wire led;
wire [31:0] chan;
assign chan[0] = reset;
assign led = chan[10];

main main_inst (
    .clock_12mhz(synth_clk_12mhz),
    .chan(chan),
    .chan_clk(),
    .microsd_cs(),
    .flash_cs(),
    .flash_sclk(),
    .flash_mosi(),
    .flash_miso()
);


initial begin
    #0
    reset <= 1'b1;
    #1000000000 // 1 s delay
    #1000000000 // 1 s delay
    #1000000000 // 1 s delay
    reset <= 1'b0;

    $finish();
end

endmodule
