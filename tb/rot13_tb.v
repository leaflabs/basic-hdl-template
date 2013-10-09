`timescale 1ns/1ps
module rot13_tb;

reg synth_clk_12mhz;
always @(synth_clk_12mhz) begin
    #41.6665 synth_clk_12mhz <= ~synth_clk_12mhz;
end

initial begin
    // the first event that sets the clock in motion
    #0 synth_clk_12mhz <= 1'b0;
end

reg reset;
integer nfail;

reg [7:0]  in_char;
wire [7:0] out_char;

rot13 rot13_inst (
    .clock(synth_clk_12mhz),
    .reset(reset),
    .in_char(in_char),
    .out_char(out_char)
);

task check_rot13;
    input [7:0] a;
    input [7:0] b;
    begin
        in_char <= a;
        #100 // 100 ns delay
        if (out_char !== b) begin
            nfail = nfail + 1;
            $display("FAIL: '%c' -> '%c' (got '%c')", a, b, out_char);
        end else begin
            $display("'%c' -> '%c'", a, out_char);
        end
    end
endtask

initial begin
    nfail = 0;
    $display("=================== start %m");
    #0
    reset <= 1'b1;
    #1000
    reset <= 1'b0;
    #100

    check_rot13("A", "N");
    check_rot13("a", "n");
    check_rot13("N", "A");
    check_rot13("n", "a");
    check_rot13("M", "Z");
    check_rot13("m", "z");
    check_rot13("Z", "M");
    check_rot13("z", "m");
    check_rot13(".", ".");
    check_rot13("8", "8");
    check_rot13("@", "@");
    check_rot13("[", "[");
    check_rot13("`", "`");
    check_rot13("{", "{");

    // uncomment the below to ensure failures are caught
    //check_rot13("a", "a");

    if (nfail !== 0) begin
        $display("=================== %m: FAIL (%d problems)", nfail);
    end else begin
        $display("=================== %m: PASS");
    end
    $finish();
end

endmodule
