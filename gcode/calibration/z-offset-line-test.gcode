; TEVO Tarantula BLTouch: short first-layer diagnostic
; Two 40 mm lines at the centre of a 200 x 200 mm bed.
; PLA settings supplied by the printer owner: 190 C and 106% first-layer flow.
M140 S60                 ; heat bed
M104 S190                ; heat nozzle
M190 S60                 ; wait for bed
M109 S190                ; wait for nozzle
G28                      ; home all axes
G29                      ; measure and enable bed leveling
M82                      ; absolute extrusion
G92 E0
G1 Z5 F600               ; safe travel height
G1 X80 Y90 F6000
G1 Z0.20 F300
G1 X120 Y90 E1.59 F900   ; first 40 mm diagnostic line (106% flow)
G1 Z5 F600
G1 X80 Y110 F6000
G1 Z0.20 F300
G1 X120 Y110 E3.18 F900  ; second 40 mm diagnostic line (106% flow)
G1 Z5 F600
G1 X0 Y0 F6000
M104 S0
M140 S0
M84
