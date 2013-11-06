/*
 * main_zedboard.v
 *
 * Copyright: (C) 2013 LeafLabs, LLC
 * License: MIT License (See LICENSE file)
 * Author: Bryan Newbold <bnewbold@leaflabs.com>
 * Date: November 2013
 *
 */

`timescale 1 ps / 1 ps

module main (
    // TODO: are these PS_* inputs or outputs? or what?
    /*
    inout wire PS_PORB,
    inout wire PS_SRSTB,
    inout wire PS_CLK,
    */
    inout wire [15:0] DDR_addr,
    inout wire [2:0] DDR_ba,
    inout wire DDR_cas_n,
    inout wire DDR_ck_n,
    inout wire DDR_ck_p,
    inout wire DDR_cke,
    inout wire DDR_cs_n,
    inout wire [3:0] DDR_dm,
    inout wire [31:0] DDR_dq,
    inout wire [3:0] DDR_dqs_n,
    inout wire [3:0] DDR_dqs_p,
    inout wire DDR_odt,
    inout wire DDR_ras_n,
    inout wire DDR_reset_n,
    inout wire DDR_we_n,
    inout wire FIXED_IO_ddr_vrn,
    inout wire FIXED_IO_ddr_vrp,
    inout wire [53:0] FIXED_IO_mio,
    inout wire FIXED_IO_ps_clk,
    inout wire FIXED_IO_ps_porb,
    inout wire FIXED_IO_ps_srstb,
    output wire [7:0] leds,
    input wire button_center,
    input wire button_down,
    input wire button_left,
    input wire button_right,
    input wire button_up,
    input wire [7:0] switches
    );

    wire axi_aclk;
    wire [0:0] axi_aresetn;
    wire axi_interrupt1;
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

block_design block_design_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .axi_aclk(axi_aclk),
        .axi_aresetn(axi_aresetn),
        .axi_gpio_buttons_tri_i({button_center,
                                 button_down,
                                 button_left,
                                 button_right,
                                 button_up}),
        .axi_gpio_leds_tri_o(leds),
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
        .axi_slave1_wvalid(axi_slave1_wvalid));

axi_lite_slave axi_lite_slave_i (
        .interrupt_request(axi_interrupt1),
        .S_AXI_ACLK(axi_aclk),
        .S_AXI_ARESETN(axi_aresetn),
        .S_AXI_ARADDR(axi_slave1_araddr),
        //.S_AXI_ARPROT(axi_slave1_arprot),
        .S_AXI_ARREADY(axi_slave1_arready),
        .S_AXI_ARVALID(axi_slave1_arvalid),
        .S_AXI_AWADDR(axi_slave1_awaddr),
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
