`timescale 1 ps / 1 ps

module block_design_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    axi_aclk,
    axi_aresetn,
    axi_gpio_buttons_tri_i,
    axi_gpio_leds_tri_o,
    axi_interrupt1,
    axi_slave1_araddr,
    axi_slave1_arprot,
    axi_slave1_arready,
    axi_slave1_arvalid,
    axi_slave1_awaddr,
    axi_slave1_awprot,
    axi_slave1_awready,
    axi_slave1_awvalid,
    axi_slave1_bready,
    axi_slave1_bresp,
    axi_slave1_bvalid,
    axi_slave1_rdata,
    axi_slave1_rready,
    axi_slave1_rresp,
    axi_slave1_rvalid,
    axi_slave1_wdata,
    axi_slave1_wready,
    axi_slave1_wstrb,
    axi_slave1_wvalid);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output axi_aclk;
  output [0:0]axi_aresetn;
  input [4:0]axi_gpio_buttons_tri_i;
  output [7:0]axi_gpio_leds_tri_o;
  input axi_interrupt1;
  output [31:0]axi_slave1_araddr;
  output [2:0]axi_slave1_arprot;
  input [0:0]axi_slave1_arready;
  output [0:0]axi_slave1_arvalid;
  output [31:0]axi_slave1_awaddr;
  output [2:0]axi_slave1_awprot;
  input [0:0]axi_slave1_awready;
  output [0:0]axi_slave1_awvalid;
  output [0:0]axi_slave1_bready;
  input [1:0]axi_slave1_bresp;
  input [0:0]axi_slave1_bvalid;
  input [31:0]axi_slave1_rdata;
  output [0:0]axi_slave1_rready;
  input [1:0]axi_slave1_rresp;
  input [0:0]axi_slave1_rvalid;
  output [31:0]axi_slave1_wdata;
  input [0:0]axi_slave1_wready;
  output [3:0]axi_slave1_wstrb;
  output [0:0]axi_slave1_wvalid;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire axi_aclk;
  wire [0:0]axi_aresetn;
  wire [4:0]axi_gpio_buttons_tri_i;
  wire [7:0]axi_gpio_leds_tri_o;
  wire axi_interrupt1;
  wire [31:0]axi_slave1_araddr;
  wire [2:0]axi_slave1_arprot;
  wire [0:0]axi_slave1_arready;
  wire [0:0]axi_slave1_arvalid;
  wire [31:0]axi_slave1_awaddr;
  wire [2:0]axi_slave1_awprot;
  wire [0:0]axi_slave1_awready;
  wire [0:0]axi_slave1_awvalid;
  wire [0:0]axi_slave1_bready;
  wire [1:0]axi_slave1_bresp;
  wire [0:0]axi_slave1_bvalid;
  wire [31:0]axi_slave1_rdata;
  wire [0:0]axi_slave1_rready;
  wire [1:0]axi_slave1_rresp;
  wire [0:0]axi_slave1_rvalid;
  wire [31:0]axi_slave1_wdata;
  wire [0:0]axi_slave1_wready;
  wire [3:0]axi_slave1_wstrb;
  wire [0:0]axi_slave1_wvalid;

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
        .axi_gpio_buttons_tri_i(axi_gpio_buttons_tri_i),
        .axi_gpio_leds_tri_o(axi_gpio_leds_tri_o),
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
endmodule
