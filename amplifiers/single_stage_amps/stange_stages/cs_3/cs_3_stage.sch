v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 140 -240 170 -240 {
lab=VDD}
N 140 -210 170 -210 {
lab=VSS}
N 140 -180 170 -180 {
lab=VIN}
N 140 -150 170 -150 {
lab=VOUT}
N 650 -280 650 -240 {
lab=VDD}
N 650 -180 650 -160 {
lab=VDD}
N 650 150 650 240 {
lab=VSS}
N 650 -150 650 -130 {
lab=VDD}
N 650 -280 650 -240 {
lab=VDD}
N 490 90 540 90 {
lab=VIN}
N 590 90 610 90 {
lab=VIN}
N 540 90 590 90 {
lab=VIN}
N 650 120 650 150 {
lab=VSS}
N 650 90 720 90 {
lab=VSS}
N 650 -180 650 -160 {
lab=VDD}
N 650 -50 650 60 {
lab=#net1}
N 650 -160 650 -150 {
lab=VDD}
N 650 0 740 0 {
lab=#net1}
N 650 -70 650 -50 {
lab=#net1}
N 650 -100 690 -100 {
lab=VDD}
N 510 -30 650 -30 {
lab=#net1}
N 510 -100 610 -100 {
lab=#net2}
N 510 -100 510 -90 {
lab=#net2}
N 510 -160 650 -160 {
lab=VDD}
N 490 -130 490 -60 {
lab=VDD}
N 460 -100 490 -100 {
lab=VDD}
N 650 -240 650 -180 {
lab=VDD}
C {devices/iopin.sym} 140 -240 0 1 {name=p1 lab=VDD}
C {devices/lab_pin.sym} 170 -240 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} 140 -210 0 1 {name=p6 lab=VSS}
C {devices/lab_pin.sym} 170 -210 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} 140 -180 0 1 {name=p8 lab=VIN}
C {devices/lab_pin.sym} 170 -180 0 1 {name=p9 sig_type=std_logic lab=VIN}
C {devices/iopin.sym} 140 -150 0 1 {name=p11 lab=VOUT}
C {devices/lab_pin.sym} 170 -150 2 0 {name=p12 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 650 -270 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 650 230 0 1 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 650 -270 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 490 90 0 0 {name=p5 sig_type=std_logic lab=VIN
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 630 90 0 0 {name=M1
L=0.7
W=60
nf=10
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/res_high_po_0p35.sym} 510 -60 0 0 {name=R4
L=1*10
model=res_high_po_0p35
spiceprefix=X
 mult=1}
C {devices/lab_pin.sym} 690 -100 2 0 {name=p17 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 630 -100 0 0 {name=M9
L=1
W=30
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/res_high_po_0p35.sym} 510 -130 0 0 {name=R1
L=1*2
model=res_high_po_0p35
spiceprefix=X
 mult=2}
C {devices/lab_pin.sym} 460 -100 2 1 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 720 90 0 1 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 740 0 2 0 {name=p15 sig_type=std_logic lab=VOUT}
