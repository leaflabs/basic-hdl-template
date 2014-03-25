/*
 * main_microzed.v
 *
 * Copyright: (C) 2013 LeafLabs, LLC
 * License: MIT License (See LICENSE file)
 * Author: Bryan Newbold <bnewbold@leaflabs.com>
 * Date: November 2013
 *
 */

module main (
    // High-Density Headers (bottom of microzed)
    inout wire [55:29] header1,
    inout wire [31:14] header2,

    // Internal (PS-PL) DDR Interface
    inout wire [14:0] DDR_Addr,
    inout wire [2:0] DDR_BankAddr,
    inout wire DDR_CAS_n,
    inout wire DDR_Clk_n,        // was: DDR_ck_n
    inout wire DDR_Clk_p,        // was: DDR_ck_p
    inout wire DDR_CKE,
    inout wire DDR_CS_n,
    inout wire [3:0] DDR_DM,
    inout wire [31:0] DDR_DQ,
    inout wire [3:0] DDR_DQS_n,
    inout wire [3:0] DDR_DQS_p,
    inout wire DDR_ODT,
    inout wire DDR_RAS_n,
    inout wire DDR_DRSTB,       // was: DDR_reset_n
    inout wire DDR_WEB,         // was: DDR_we_n
    inout wire DDR_VRN,
    inout wire DDR_VRP,

    // Internal (PS-PL) I/O
    inout wire [53:0] MIO,
    inout wire PS_PORB,
    inout wire PS_SRSTB,
    inout wire PS_CLK
    );
// ==================== Begin Module ======================

//// Optional Static Compile-time Parameters
parameter GIT_COMMIT = 32'd0;
parameter BUILD_UNIX_TIME = 64'd0;

// Clock nets and resets
// "keep" attribute tells Xilinx not to rename/collapse this net
// This net is the PS's FCLK_CLK0; 50MHz.
// Usually already BUFG (global clock net)
(* KEEP="TRUE" *) wire axi_aclk;
(* KEEP="TRUE" *) wire reset;
wire axi_aresetn;
wire axi_interrupt1;
assign reset = ~axi_aresetn;

// your code here

// ==================== Throbbers Etc ======================


/*
reg throb_led_aclk = 0;
reg [25:0] throb_counter_aclk = 0;
always @(posedge axi_aclk) begin
    if (throb_counter_aclk>= 26'd25_000_000) begin
        throb_counter_aclk<= 26'd0;
        throb_led_aclk <= ~throb_led_aclk;
    end else begin
        throb_counter_aclk <= throb_counter_aclk + 26'd1;
    end
end
*/

wire [7:0] axi_leds;

// ==================== AXI Memory Interface Stuff ======================

wire [31:0] axi_slave1_araddr;
wire [2:0] axi_slave1_arprot;
wire [0:0] axi_slave1_arready;
wire [0:0] axi_slave1_arvalid;
wire [31:0] axi_slave1_awaddr;
wire [2:0] axi_slave1_awprot;
wire [0:0] axi_slave1_awready;
wire [0:0] axi_slave1_awvalid;
wire [0:0] axi_slave1_bready;
wire [1:0] axi_slave1_bresp;
wire [0:0] axi_slave1_bvalid;
wire [31:0] axi_slave1_rdata;
wire [0:0] axi_slave1_rready;
wire [1:0] axi_slave1_rresp;
wire [0:0] axi_slave1_rvalid;
wire [31:0] axi_slave1_wdata;
wire [0:0] axi_slave1_wready;
wire [3:0] axi_slave1_wstrb;
wire [0:0] axi_slave1_wvalid;

block_design block_design_i (
    .DDR_addr(DDR_Addr),
    .DDR_ba(DDR_BankAddr),
    .DDR_cas_n(DDR_CAS_n),
    .DDR_ck_n(DDR_Clk_n),
    .DDR_ck_p(DDR_Clk_p),
    .DDR_cke(DDR_CKE),
    .DDR_cs_n(DDR_CS_n),
    .DDR_dm(DDR_DM),
    .DDR_dq(DDR_DQ),
    .DDR_dqs_n(DDR_DQS_n),
    .DDR_dqs_p(DDR_DQS_p),
    .DDR_odt(DDR_ODT),
    .DDR_ras_n(DDR_RAS_n),
    .DDR_reset_n(DDR_DRSTB),
    .DDR_we_n(DDR_WEB),
    .FIXED_IO_ddr_vrn(DDR_VRN),
    .FIXED_IO_ddr_vrp(DDR_VRP),
    .FIXED_IO_mio(MIO),
    .FIXED_IO_ps_clk(PS_CLK),
    .FIXED_IO_ps_porb(PS_PORB),
    .FIXED_IO_ps_srstb(PS_SRSTB),
    .axi_aclk(axi_aclk),
    .axi_aresetn(axi_aresetn),
    .axi_gpio_buttons_tri_i(5'd0),
    .axi_gpio_leds_tri_o(axi_leds),
    .axi_interrupt1(axi_interrupt1),
    .axi_slave1_araddr(axi_slave1_araddr),
    .axi_slave1_arprot(axi_slave1_arprot),
    .axi_slave1_arready(axi_slave1_arready),
    .axi_slave1_arvalid(axi_slave1_arvalid),
    .axi_slave1_awaddr(axi_slave1_awaddr),
    .axi_slave1_awprot(axi_slave1_awprot),
    .axi_slave1_awready(axi_slave1_awready),
    .axi_slave1_awvalid(axi_slave1_awvalid),
    .axi_slave1_bready(axi_slave1_bready),
    .axi_slave1_bresp(axi_slave1_bresp),
    .axi_slave1_bvalid(axi_slave1_bvalid),
    .axi_slave1_rdata(axi_slave1_rdata),
    .axi_slave1_rready(axi_slave1_rready),
    .axi_slave1_rresp(axi_slave1_rresp),
    .axi_slave1_rvalid(axi_slave1_rvalid),
    .axi_slave1_wdata(axi_slave1_wdata),
    .axi_slave1_wready(axi_slave1_wready),
    .axi_slave1_wstrb(axi_slave1_wstrb),
    .axi_slave1_wvalid(axi_slave1_wvalid)
    );

axi_lite_slave #(
    .GIT_COMMIT_HASH(GIT_COMMIT),
    .UNIX_TIMESTAMP(BUILD_UNIX_TIME)
) axi_lite_slave_i (
    .interrupt_request(axi_interrupt1),
    .S_AXI_ACLK(axi_aclk),
    .S_AXI_ARESETN(axi_aresetn),
    .S_AXI_ARADDR(axi_slave1_araddr[15:0]),
    //.S_AXI_ARPROT(axi_slave1_arprot),
    .S_AXI_ARREADY(axi_slave1_arready),
    .S_AXI_ARVALID(axi_slave1_arvalid),
    .S_AXI_AWADDR(axi_slave1_awaddr[15:0]),
    //.S_AXI_AWPROT(axi_slave1_awprot),
    .S_AXI_AWREADY(axi_slave1_awready),
    .S_AXI_AWVALID(axi_slave1_awvalid),
    .S_AXI_BREADY(axi_slave1_bready),
    .S_AXI_BRESP(axi_slave1_bresp),
    .S_AXI_BVALID(axi_slave1_bvalid),
    .S_AXI_RDATA(axi_slave1_rdata),
    .S_AXI_RREADY(axi_slave1_rready),
    .S_AXI_RRESP(axi_slave1_rresp),
    .S_AXI_RVALID(axi_slave1_rvalid),
    .S_AXI_WDATA(axi_slave1_wdata),
    .S_AXI_WREADY(axi_slave1_wready),
    .S_AXI_WSTRB(axi_slave1_wstrb),
    .S_AXI_WVALID(axi_slave1_wvalid)
    );

endmodule
