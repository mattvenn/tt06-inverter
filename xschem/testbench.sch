v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 510 -50 1310 350 {flags=graph
y1=0
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=3.7506644e-09
x2=2.8489671e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="out
in
out_parax"
color="4 5 6"

unitx=1
logx=0
logy=0
dataset=-1}
B 2 510 390 1310 790 {flags=graph
y1=-2.6e-06
y2=0.004
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=3.7506644e-09
x2=2.8489671e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="i(vmeas)
i(vmeas1)"
color="5 6"
dataset=-1
unitx=1
logx=0
logy=0
}
N -250 670 -230 670 {
lab=in}
N -40 590 -40 620 {
lab=vss}
N 70 670 110 670 {
lab=#net1}
N -350 -40 -350 -30 {
lab=vss}
N -240 -40 -240 -30 {
lab=vdd}
N -350 30 -350 40 {
lab=GND}
N -240 30 -240 40 {
lab=GND}
N 110 670 160 670 {
lab=#net1}
N 220 670 250 670 {
lab=out}
N 250 670 290 670 {
lab=out}
N 110 760 140 760 {
lab=vss}
N 140 670 140 700 {
lab=#net1}
N -390 670 -340 670 {
lab=in}
N -340 670 -330 670 {
lab=in}
N -270 670 -250 670 {
lab=in}
N -330 670 -270 670 {
lab=in}
N -240 920 -220 920 {
lab=in}
N -30 840 -30 870 {
lab=vss}
N 80 920 120 920 {
lab=#net2}
N 120 920 170 920 {
lab=#net2}
N 230 920 260 920 {
lab=out_parax}
N 260 920 300 920 {
lab=out_parax}
N 120 1010 150 1010 {
lab=vss}
N 150 920 150 950 {
lab=#net2}
N -380 920 -330 920 {
lab=in}
N -330 920 -320 920 {
lab=in}
N -260 920 -240 920 {
lab=in}
N -320 920 -260 920 {
lab=in}
C {devices/code.sym} -140 -30 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} 70 -50 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {inverter.sym} -80 670 0 0 {name=x1}
C {devices/lab_pin.sym} -120 560 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} -40 590 0 0 {name=p3 sig_type=std_logic lab=vss}
C {devices/simulator_commands_shown.sym} -340 280 0 0 {name=COMMANDS2
simulator=ngspice
only_toplevel=false 
value="
.options savecurrents
vin in 0 pulse 0 1.8 5n 1n 1n 50n 100n
.control
    save all
    tran 10p 200n
    write testbench.raw
.endc
"}
C {devices/vsource.sym} -240 0 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -240 40 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -240 -40 2 1 {name=p5 sig_type=std_logic lab=vdd
}
C {devices/vsource.sym} -350 0 0 0 {name=V2 value=0 savecurrent=false}
C {devices/gnd.sym} -350 40 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -350 -40 2 1 {name=p7 sig_type=std_logic lab=vss
}
C {devices/ipin.sym} -390 670 0 0 {name=p6 lab=in}
C {devices/ammeter.sym} -120 590 0 0 {name=Vmeas}
C {devices/res.sym} 190 670 1 0 {name=R1
value=500
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 140 730 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 110 760 0 0 {name=p1 sig_type=std_logic lab=vss}
C {devices/opin.sym} 290 670 0 0 {name=p8 lab=out}
C {inverter.sym} -70 920 0 0 {name=x2
schematic=inverter_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/inverter.sim.spice])"
tclcommand="textwindow [file normalize ../mag/inverter.sim.spice]"}
C {devices/lab_pin.sym} -110 810 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} -30 840 0 0 {name=p9 sig_type=std_logic lab=vss}
C {devices/ipin.sym} -380 920 0 0 {name=p10 lab=in}
C {devices/ammeter.sym} -110 840 0 0 {name=Vmeas1}
C {devices/res.sym} 200 920 1 0 {name=R2
value=500
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 150 980 0 0 {name=C2
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 120 1010 0 0 {name=p11 sig_type=std_logic lab=vss}
C {devices/opin.sym} 300 920 0 0 {name=p12 lab=out_parax}
