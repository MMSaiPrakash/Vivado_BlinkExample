# Define the LED pin
set_property PACKAGE_PIN E5 [get_ports { led }]
set_property IOSTANDARD LVCMOS33 [get_ports { led }]

#Clock Config of 100MHz
set_property -dict { PACKAGE_PIN F14    IOSTANDARD SSTL135 } [get_ports { clk }]; #IO_L12P_T1_MRCC_34 Sch=ddr3_clk[200]
create_clock -add -name sys_clk_pin -period 10.000 -waveform {0 5.000}  [get_ports { clk }];

set_property PACKAGE_PIN J2 [get_ports { rst }]
set_property IOSTANDARD LVCMOS33 [get_ports { rst }]
