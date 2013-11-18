
# HDL files generated with Vivado 2013.3 Block Diagram Tool; these
# files are specific to this template project.
verilog_files += hdl/block_design/hdl/block_design.v
verilog_files += hdl/block_design/ip/block_design_xlconcat_0_0/work/xlconcat.v
verilog_files += hdl/block_design/ip/block_design_xbar_1/synth/block_design_xbar_1.v
verilog_files += hdl/block_design/ip/block_design_processing_system7_0_0/synth/block_design_processing_system7_0_0.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/synth/block_design_auto_pc_7.v
verilog_files += hdl/block_design/ip/block_design_xlconcat_0_0/synth/block_design_xlconcat_0_0.v
vhdl_files += hdl/block_design/ip/block_design_proc_sys_reset_0/synth/block_design_proc_sys_reset_0.vhd
vhdl_files += hdl/block_design/ip/block_design_axi_gpio_0_0/synth/block_design_axi_gpio_0_0.vhd
vhdl_files += hdl/block_design/ip/block_design_axi_gpio_0_0/axi_gpio_v2_0/hdl/src/vhdl/axi_gpio.vhd
vhdl_files += hdl/block_design/ip/block_design_axi_gpio_0_0/axi_gpio_v2_0/hdl/src/vhdl/gpio_core.vhd

# Various AXI, Zynq, and Xilinx HDL libraries; these files are mostly
# generic across all Zynq and AXI Interconnect projects.
#
# The VHDL library files are in a heirarchal namespace. This Makefile system
# doesn't support heirarchy libraries (yet), so they are included as a raw .prj
# stub.
extra_prj += block_design_vhdl_libraries.prj

# The Verilog namespace is flat, so these library files can simply be included
# via the 'verilog_files' mechanism.
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_latch_or.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_command_fifo.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_or.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_latch_and.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_mux.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_and.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_mask_static.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_static.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_mask.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_nto1_mux.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_mask.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_mask_static.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_mux_enc.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_static.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/axi_register_slice_v2_1/hdl/verilog/axi_register_slice_v2_1_axi_register_slice.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/axi_register_slice_v2_1/hdl/verilog/axi_register_slice_v2_1_axic_register_slice.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_vector2axi.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_axic_srl_fifo.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_axi2vector.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_incr_cmd.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_axi_protocol_converter.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_simple_fifo.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_decerr_slave.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_ar_channel.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_axilite_conv.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_axi3_conv.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_rd_cmd_fsm.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_w_axi3_conv.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_a_axi3_conv.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_b_channel.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_aw_channel.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_cmd_translator.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_r_channel.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b_downsizer.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_wr_cmd_fsm.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_r_axi3_conv.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_wrap_cmd.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_srl_fifo.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_reg_srl_fifo.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axi_data_fifo.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_fifo.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_fifo_gen.v
verilog_files += hdl/block_design/ip/block_design_auto_pc_7/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_ndeep_srl.v
verilog_files += hdl/block_design/ip/block_design_xbar_1/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_arbiter_resp.v
verilog_files += hdl/block_design/ip/block_design_xbar_1/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_crossbar.v
verilog_files += hdl/block_design/ip/block_design_xbar_1/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_wdata_router.v
verilog_files += hdl/block_design/ip/block_design_xbar_1/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_decerr_slave.v
verilog_files += hdl/block_design/ip/block_design_xbar_1/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_crossbar_sasd.v
verilog_files += hdl/block_design/ip/block_design_xbar_1/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_wdata_mux.v
verilog_files += hdl/block_design/ip/block_design_xbar_1/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_axi_crossbar.v
verilog_files += hdl/block_design/ip/block_design_xbar_1/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_addr_arbiter_sasd.v
verilog_files += hdl/block_design/ip/block_design_xbar_1/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_addr_arbiter.v
verilog_files += hdl/block_design/ip/block_design_xbar_1/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_splitter.v
verilog_files += hdl/block_design/ip/block_design_xbar_1/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_si_transactor.v
verilog_files += hdl/block_design/ip/block_design_xbar_1/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_addr_decoder.v
verilog_files += hdl/block_design/ip/block_design_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_b_atc.v
verilog_files += hdl/block_design/ip/block_design_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_aw_atc.v
verilog_files += hdl/block_design/ip/block_design_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_trace_buffer.v
verilog_files += hdl/block_design/ip/block_design_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v
verilog_files += hdl/block_design/ip/block_design_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_atc.v
verilog_files += hdl/block_design/ip/block_design_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_w_atc.v
