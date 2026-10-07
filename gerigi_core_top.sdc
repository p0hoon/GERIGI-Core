create_clock -name clk -period 20.000 [get_ports clk]
derive_clock_uncertainty
set_false_path -through [get_nets *u_puf*]