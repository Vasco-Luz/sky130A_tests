v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -350 310 -350 330 {
lab=GND}
N -350 210 -350 250 {
lab=VDD}
N -270 310 -270 330 {
lab=GND}
N -270 210 -270 250 {
lab=#net1}
N -270 330 -270 350 {
lab=GND}
N -130 320 -130 340 {
lab=GND}
N -130 220 -130 260 {
lab=#net2}
N -130 340 -130 360 {
lab=GND}
N -270 100 -270 150 {
lab=VIN}
N -130 80 -130 160 {
lab=VB}
C {devices/code.sym} -40 -160 0 0 {name=spice only_toplevel=false
format="tcleval( @value )"
value="	
**************************************************************
**************************************************************
**************************************************************
**************************************************************
**************************************************************
*LIBs*********************************************************
**************************************************************
**************************************************************
**************************************************************
**************************************************************
**************************************************************
*.lib $::SKYWATER_MODELS/sky130.lib.spice tt
* chose the corners in the corner file
* tt_mm for mismatch
* ss ff sf fs standart corners
* ll hh lh hl capacitor and resistors corners
* mc for total process variation including corners
**************************************************************
**************************************************************
**************************************************************
**************************************************************
**************************************************************
*Corners/montecarlo options***********************************
**************************************************************
**************************************************************
**************************************************************
**************************************************************
**************************************************************
.TEMP 27
**************************************************************
**************************************************************
**************************************************************
**************************************************************  
*SIMULATION and Plots*****************************************
**************************************************************
**************************************************************
**************************************************************
**************************************************************
.control
save all
dc V2 0 5 0.001 
plot v(VOUT+) v(VOUT-) deriv(v(VOUT+)) deriv(v(VOUT-))
plot v(VOUT2+) v(VOUT2-) deriv(v(VOUT2+)) deriv(v(VOUT2-))
*plot v(VA)
*plot i(Vmeas)
ac dec 20 1 1000G 
plot db(v(VOUT+))
plot db(v(VOUT2+)) phase(v(VOUT+))
.endc
"}
C {sky130_fd_pr/corner.sym} -210 -160 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/lab_pin.sym} -350 220 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -350 280 0 0 {name=V1 value=5
}
C {devices/vsource.sym} -270 280 0 0 {name=V2 value=2.5}
C {devices/gnd.sym} -350 330 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -270 100 0 0 {name=p7 sig_type=std_logic lab=VIN
}
C {devices/gnd.sym} -270 350 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} -130 290 0 0 {name=V6 value=2.5}
C {devices/gnd.sym} -130 360 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} -130 80 0 0 {name=p10 sig_type=std_logic lab=VB
}
C {devices/vsource.sym} -270 180 0 0 {name=V4 value="ac 1.0 sin (0 100u 100k)"}
C {devices/vsource.sym} -130 190 2 1 {name=V3 value="ac 1.0 sin (0 100u 100k)"}