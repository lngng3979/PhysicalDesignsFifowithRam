sfifo.exe :*.v
	iverilog -g2005-sv csv_sfifo_ram.v sky130_sram_1r1w_8x16_8.v sky130_sram_1r1w_8x16_8_wrapper.v 
enhance: 
	openlane --dockerized initial_conf.json 
synthesis:
	openlane --dockerized initial.json --to Yosys.Synthesis
floorplan:
	openlane --dockerized initial.json --to OpenROAD.Floorplan
prepnrsta:
	openlane --dockerized initial.json --to OpenROAD.STAPrePNR
midpnrsta:
	openlane --dockerized initial.json --to OpenROAD.STAMidPNR
postpnrsta:
	openlane --dockerized initial.json --to OpenROAD.STAPostPNR

