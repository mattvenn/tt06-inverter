v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 20 -30 30 -30 {
lab=#net1}
N 20 -30 20 80 {
lab=#net1}
N 20 80 30 80 {
lab=#net1}
N -20 30 20 30 {
lab=#net1}
N 70 0 70 50 {
lab=OUT}
N 70 30 180 30 {
lab=OUT}
N 70 -80 70 -60 {
lab=VDD}
N 70 110 70 130 {
lab=VSS}
N 70 -30 150 -30 {
lab=VDD}
N 150 -80 150 -30 {
lab=VDD}
N 70 -80 150 -80 {
lab=VDD}
N 70 80 150 80 {
lab=VSS}
N 150 80 150 130 {
lab=VSS}
N 70 130 150 130 {
lab=VSS}
N -180 -30 -170 -30 {
lab=IN}
N -180 -30 -180 80 {
lab=IN}
N -180 80 -170 80 {
lab=IN}
N -220 30 -180 30 {
lab=IN}
N -130 0 -130 50 {
lab=#net1}
N -130 30 -20 30 {
lab=#net1}
N -130 -80 -130 -60 {
lab=VDD}
N -130 110 -130 130 {
lab=VSS}
N -130 -30 -50 -30 {
lab=VDD}
N -50 -80 -50 -30 {
lab=VDD}
N -130 -80 -50 -80 {
lab=VDD}
N -130 80 -50 80 {
lab=VSS}
N -50 80 -50 130 {
lab=VSS}
N -130 130 -50 130 {
lab=VSS}
N -20 30 -20 40 {}
C {devices/iopin.sym} -160 -150 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} -160 -120 0 0 {name=p2 lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 50 -30 0 0 {name=M1
L=0.15
W=20
nf=20
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 50 80 0 0 {name=M2
L=0.15
W=20
nf=20
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} -220 30 0 0 {name=p3 lab=IN}
C {devices/opin.sym} 180 30 0 0 {name=p4 lab=OUT}
C {devices/lab_pin.sym} 70 -80 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 70 130 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} -150 -30 0 0 {name=M3
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -150 80 0 0 {name=M4
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} -130 -80 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -130 130 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -20 40 0 0 {name=p7 sig_type=std_logic lab=not_in}
