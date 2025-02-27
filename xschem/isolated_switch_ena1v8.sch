v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Ground-isolated switch with 1.8V enable} -80 -80 0 0 0.4 0.4 {}
N 10 30 50 30 {
lab=#net1}
N -120 30 -70 30 {
lab=on}
N 350 30 380 30 {
lab=avss}
N 380 -10 380 30 {
lab=avss}
N 380 -10 410 -10 {
lab=avss}
N 350 50 410 50 {
lab=out}
N 350 70 410 70 {
lab=in}
N 350 90 380 90 {
lab=avdd}
N 380 90 380 120 {
lab=avdd}
N 380 120 410 120 {
lab=avdd}
N -90 30 -90 70 {
lab=on}
N -90 180 90 180 {
lab=dvss}
N -90 130 -90 180 {
lab=dvss}
N 50 160 90 160 {
lab=dvdd}
C {isolated_switch.sym} 200 60 0 0 {name=x1}
C {lsbuflv2hv_1.sym} -30 30 0 0 {name=x2 LVPWR=dvdd VGND=dvss VNB=dvss VPB=avdd VPWR=avdd prefix=sky130_fd_sc_hvl__ }
C {devices/ipin.sym} -120 30 0 0 {name=p1 lab=on}
C {devices/iopin.sym} 410 -10 0 0 {name=p2 lab=avss}
C {devices/iopin.sym} 410 50 0 0 {name=p3 lab=out}
C {devices/iopin.sym} 410 70 0 0 {name=p4 lab=in}
C {devices/iopin.sym} 410 120 0 0 {name=p5 lab=avdd}
C {sky130_fd_pr/diode.sym} -90 100 0 0 {name=D1
model=diode_pw2nd_05v5
area=2.304e11
perim=1.92e6
spiceprefix=X
}
C {devices/iopin.sym} 90 160 0 0 {name=p6 lab=dvdd}
C {devices/iopin.sym} 90 180 0 0 {name=p7 lab=dvss}
C {devices/lab_pin.sym} 50 160 0 0 {name=p8 sig_type=std_logic lab=dvdd}
