gds: 
	openlane --dockerized initial_conf.json 
synthesis:
	openlane --dockerized initial_conf.json --to Yosys.Synthesis
floorplan:
	openlane --dockerized initial_conf.json --to OpenROAD.Floorplan
prepnrsta:
	openlane --dockerized initial_conf.json --to OpenROAD.STAPrePNR
midpnrsta:
	openlane --dockerized initial_conf.json --to OpenROAD.STAMidPNR
postpnrsta:
	openlane --dockerized initial_conf.json --to OpenROAD.STAPostPNR
viewlayout:
	openlane --dockerized initial_conf.json --last-run --flow openinopenroad

