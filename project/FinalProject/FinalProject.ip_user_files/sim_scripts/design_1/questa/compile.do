vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm
vlib msim/axi_infrastructure_v1_1_0
vlib msim/xil_common_vip_v1_0_0
vlib msim/smartconnect_v1_0
vlib msim/axi_protocol_checker_v1_1_13
vlib msim/axi_vip_v1_0_1
vlib msim/axi_lite_ipif_v3_0_4
vlib msim/lib_cdc_v1_0_2
vlib msim/interrupt_control_v3_1_4
vlib msim/axi_gpio_v2_0_14
vlib msim/proc_sys_reset_v5_0_10
vlib msim/generic_baseblocks_v2_1_0
vlib msim/axi_register_slice_v2_1_12
vlib msim/fifo_generator_v13_1_4
vlib msim/axi_data_fifo_v2_1_11
vlib msim/axi_crossbar_v2_1_13
vlib msim/dist_mem_gen_v8_0_11
vlib msim/lib_pkg_v1_0_2
vlib msim/lib_srl_fifo_v1_0_2
vlib msim/lib_fifo_v1_0_8
vlib msim/axi_quad_spi_v3_2_11
vlib msim/axi_protocol_converter_v2_1_12

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm
vmap axi_infrastructure_v1_1_0 msim/axi_infrastructure_v1_1_0
vmap xil_common_vip_v1_0_0 msim/xil_common_vip_v1_0_0
vmap smartconnect_v1_0 msim/smartconnect_v1_0
vmap axi_protocol_checker_v1_1_13 msim/axi_protocol_checker_v1_1_13
vmap axi_vip_v1_0_1 msim/axi_vip_v1_0_1
vmap axi_lite_ipif_v3_0_4 msim/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 msim/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_14 msim/axi_gpio_v2_0_14
vmap proc_sys_reset_v5_0_10 msim/proc_sys_reset_v5_0_10
vmap generic_baseblocks_v2_1_0 msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_12 msim/axi_register_slice_v2_1_12
vmap fifo_generator_v13_1_4 msim/fifo_generator_v13_1_4
vmap axi_data_fifo_v2_1_11 msim/axi_data_fifo_v2_1_11
vmap axi_crossbar_v2_1_13 msim/axi_crossbar_v2_1_13
vmap dist_mem_gen_v8_0_11 msim/dist_mem_gen_v8_0_11
vmap lib_pkg_v1_0_2 msim/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 msim/lib_srl_fifo_v1_0_2
vmap lib_fifo_v1_0_8 msim/lib_fifo_v1_0_8
vmap axi_quad_spi_v3_2_11 msim/axi_quad_spi_v3_2_11
vmap axi_protocol_converter_v2_1_12 msim/axi_protocol_converter_v2_1_12

vlog -work xil_defaultlib -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_13 -L xil_common_vip_v1_0_0 -L axi_vip_v1_0_1 "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/856d/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/d5eb/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/856d/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/d5eb/hdl" \
"C:/Xilinx/SDx/2017.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/SDx/2017.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/SDx/2017.1/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/856d/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/d5eb/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/856d/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/d5eb/hdl" \
"../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work xil_common_vip_v1_0_0 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_13 -L xil_common_vip_v1_0_0 -L axi_vip_v1_0_1 "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/856d/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/d5eb/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/856d/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/d5eb/hdl" \
"../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl/xil_common_vip_v1_0_vl_rfs.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_13 -L xil_common_vip_v1_0_0 -L axi_vip_v1_0_1 "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/856d/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/d5eb/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/856d/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/d5eb/hdl" \
"../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/16a2/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v1_1_13 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_13 -L xil_common_vip_v1_0_0 -L axi_vip_v1_0_1 "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/856d/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/d5eb/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/856d/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/d5eb/hdl" \
"../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/8017/hdl/axi_protocol_checker_v1_1_vl_rfs.sv" \

vlog -work axi_vip_v1_0_1 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_13 -L xil_common_vip_v1_0_0 -L axi_vip_v1_0_1 "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/856d/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/d5eb/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/856d/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/d5eb/hdl" \
"../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/856d/hdl/axi_vip_v1_0_vl_rfs.sv" \
"../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/d5eb/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/856d/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/d5eb/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/856d/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/d5eb/hdl" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/0ba0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/e956/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_14 -64 -93 \
"../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/3b45/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_gpio_0_0/sim/design_1_axi_gpio_0_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_gpio_1_0/sim/design_1_axi_gpio_1_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_gpio_2_0/sim/design_1_axi_gpio_2_0.vhd" \

vcom -work proc_sys_reset_v5_0_10 -64 -93 \
"../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/04b4/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0/sim/design_1_rst_ps7_0_100M_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/856d/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/d5eb/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/856d/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/d5eb/hdl" \
"../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/f9c1/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_12 -64 "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/856d/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/d5eb/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/856d/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/d5eb/hdl" \
"../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/0e33/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_1_4 -64 "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/856d/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/d5eb/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/856d/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/d5eb/hdl" \
"../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/ebc2/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_4 -64 -93 \
"../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/ebc2/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_4 -64 "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/856d/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/d5eb/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/856d/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/d5eb/hdl" \
"../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/ebc2/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work axi_data_fifo_v2_1_11 -64 "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/856d/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/d5eb/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/856d/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/d5eb/hdl" \
"../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/5235/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_13 -64 "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/856d/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/d5eb/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/856d/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/d5eb/hdl" \
"../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/78eb/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/856d/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/d5eb/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/856d/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/d5eb/hdl" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vlog -work dist_mem_gen_v8_0_11 -64 "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/856d/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/d5eb/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/856d/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/d5eb/hdl" \
"../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/ec0d/simulation/dist_mem_gen_v8_0.v" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/832a/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/6039/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_fifo_v1_0_8 -64 -93 \
"../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/c387/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_quad_spi_v3_2_11 -64 -93 \
"../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/4c23/hdl/axi_quad_spi_v3_2_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_quad_spi_0_0/sim/design_1_axi_quad_spi_0_0.vhd" \
"../../../bd/design_1/hdl/design_1.vhd" \
"../../../bd/design_1/ip/design_1_axi_quad_spi_0_1/sim/design_1_axi_quad_spi_0_1.vhd" \
"../../../bd/design_1/ip/design_1_axi_quad_spi_1_0/sim/design_1_axi_quad_spi_1_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_quad_spi_1_1/sim/design_1_axi_quad_spi_1_1.vhd" \

vlog -work axi_protocol_converter_v2_1_12 -64 "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/856d/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/d5eb/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/856d/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/d5eb/hdl" \
"../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/138d/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/856d/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/d5eb/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/16a2/hdl/verilog" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/856d/hdl" "+incdir+../../../../FinalProject.srcs/sources_1/bd/design_1/ipshared/d5eb/hdl" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

