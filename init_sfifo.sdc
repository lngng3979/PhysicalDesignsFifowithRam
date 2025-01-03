###############################################################################
# Created by write_sdc
###############################################################################
current_design csv_sfifo_ram
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 10.0000 [get_ports {clk}]
set_clock_transition 0.0500 [get_clocks {clk}]
set_propagated_clock [get_clocks {clk}]
set_clock_uncertainty 0.2500 clk
set IO_DELAY [expr $::env(CLOCK_PERIOD) * 0.09]
###############################################################################
# Environment
###############################################################################
###############################################################################
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports $::env(CLOCK_PORT)]
# Design Rules
###############################################################################
set_max_transition $::env(MAX_TRANSITION_CONSTRAINT) [current_design]
set_max_capacitance 0.2000 [current_design]
set_max_fanout $::env(MAX_FANOUT_CONSTRAINT) [current_design]
