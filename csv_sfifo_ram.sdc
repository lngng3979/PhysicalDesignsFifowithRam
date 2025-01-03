###############################################################################
# Created by write_sdc
###############################################################################
current_design csv_sfifo_ram
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 10.0000 [get_ports {clk}]
set_clock_transition 0.0500 [get_clocks {clk}]
set_clock_uncertainty 0.2500 clk
set_propagated_clock [get_clocks {clk}]
###############################################################################
# Environment
###############################################################################
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clk}]
###############################################################################
# Design Rules
###############################################################################
set_max_transition 0.5000 [current_design]
set_max_capacitance 0.2000 [current_design]
set_max_fanout 5.0000 [current_design]
