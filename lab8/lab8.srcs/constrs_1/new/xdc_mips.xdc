set_property PACKAGE_PIN E3 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -period 10 [get_ports clk]

set_property PACKAGE_PIN K5 [get_ports rst_n]
set_property IOSTANDARD LVCMOS33 [get_ports rst_n]

set_property PACKAGE_PIN L14 [get_ports Jr_out]
set_property IOSTANDARD LVCMOS33 [get_ports Jr_out]

set_property PACKAGE_PIN M14 [get_ports {AluOp_out[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AluOp_out[0]}]

set_property PACKAGE_PIN L15 [get_ports {AluOp_out[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AluOp_out[1]}]

set_property PACKAGE_PIN M15 [get_ports {AluOp_out[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AluOp_out[2]}]

set_property PACKAGE_PIN K13 [get_ports {AluOp_out[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AluOp_out[3]}]

set_property PACKAGE_PIN L13 [get_ports {SrcB_out[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SrcB_out[0]}]

set_property PACKAGE_PIN L12 [get_ports {SrcB_out[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SrcB_out[1]}]

set_property PACKAGE_PIN T9 [get_ports {SrcB_out[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SrcB_out[2]}]

set_property PACKAGE_PIN C6 [get_ports {SrcB_out[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SrcB_out[3]}]

set_property PACKAGE_PIN D6 [get_ports {SrcA_out[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SrcA_out[0]}]

set_property PACKAGE_PIN D5 [get_ports {SrcA_out[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SrcA_out[1]}]

set_property PACKAGE_PIN A2 [get_ports {SrcA_out[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SrcA_out[2]}]

set_property PACKAGE_PIN D3 [get_ports {SrcA_out[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SrcA_out[3]}]

set_property PACKAGE_PIN C4 [get_ports {ALUResult_out[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ALUResult_out[0]}]

set_property PACKAGE_PIN D16 [get_ports {ALUResult_out[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ALUResult_out[1]}]

set_property PACKAGE_PIN C7 [get_ports {ALUResult_out[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ALUResult_out[2]}]

set_property PACKAGE_PIN D8 [get_ports {ALUResult_out[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ALUResult_out[3]}]

set_property PACKAGE_PIN A12 [get_ports {PC_out[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PC_out[0]}]

set_property PACKAGE_PIN D9 [get_ports {PC_out[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PC_out[1]}]

set_property PACKAGE_PIN E12 [get_ports {PC_out[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PC_out[2]}]

set_property PACKAGE_PIN E13 [get_ports {PC_out[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PC_out[3]}]

set_property PACKAGE_PIN E11 [get_ports {PC_out[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PC_out[4]}]