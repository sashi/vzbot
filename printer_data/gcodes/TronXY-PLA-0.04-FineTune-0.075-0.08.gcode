
; ### Ellis' Pressure Advance / Linear Advance Calibration Tool ###
;
; Original Marlin linear advance calibration tool by Sineos [https://github.com/Sineos]
; Heavily modified/rewritten by Andrew Ellis [https://github.com/AndrewEllis93]
;
; -------------------------------------------
; Generated: Fri Dec 30 2022 15:55:00 GMT-0800 (Pacific Standard Time)
; -------------------------------------------
;
; Advanced mode: false
;
; Printer:
;  - Firmware: klipper
;  - Bed Shape: Rect
;  - Bed Size X: 330 mm
;  - Bed Size Y: 330 mm
;  - Origin Bed Center: false
;  - Travel Speed: 200 mm/s
;  - Nozzle Diameter: 0.4 mm
;  - Filament Diameter: 1.75 mm
;  - Extrusion Multiplier: 1
;
; Retraction / Z Hop:
;  - Retraction Distance: 0.5 mm
;  - Retract Speed: 50 mm/s
;  - Unretract Speed: 30 mm/s
;  - Z Hop Enable: true
;  - Z Hop Height: 0.1mm
;
; First Layer Settings:
;  - First Layer Height: 0.2 mm
;  - First Layer Printing Speed: 30 mm/s
;  - First Layer Fan Speed: 0%
;  - Anchor Option: anchor_frame
;
; Print Settings:
;  - Layer Height: 0.2 mm
;  - Print Speed: 80 mm/s
;  - Acceleration: 4000 mm/s^2
;  - Fan Speed: 100%
;
; Pressure Advance Stepping:
;  - PA Start Value: 0.075
;  - PA End Value: 0.08
;  - PA Increment: 0.001
;
; Start / End G-code:
;  - Start G-code Type: standalone
;  - Hotend Temp: 200C
;  - Bed Temp: 60C
;
; Calculated Values:
;  - Print Size X: 45.14 mm
;  - Print Size Y: 56.99 mm
;  - Number of Patterns to Print: 6
;  - PA Values: 0.075, 0.076, 0.077, 0.078, 0.079, 0.08
;
; Prepare printing
;
M190 S60    ; Set & wait for bed temp. !Don't modify/delete, only move!
M109 S200 ; Set & wait for hotend temp. !Don't modify/delete, only move!
START_PRINT T_BED=60 T_EXTRUDER=200
;
; Make sure this macro name matches your own!
; (For example, some may use START_PRINT instead.)
G21 ; Millimeter units
G90 ; Absolute XYZ
M83 ; Relative E
G92 E0 ; Reset extruder distance
;
;  Begin printing
;
M106 S0 ; Set fan speed
SET_VELOCITY_LIMIT ACCEL=4000 ; Set printing acceleration
G1 E-0.5 F3000 ; Retract
G0 Z5 F12000 ; Z raise
G0 X142.4279 Y136.5068 F12000 ; Move to start position
G0 Z0.2 F12000 ; Move to start layer height
G1 E0.5 F1800 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.075 ; Set pressure advance to start value
M117 PA 0.075
G1 X142.4279 Y178.9332 E1.82414 F1800 ; Draw perimeter (up)
G1 X187.5721 Y178.9332 E1.94099 F1800 ; Draw perimeter (right)
G1 X187.5721 Y136.5068 E1.82414 F1800 ; Draw perimeter (down)
G1 X142.4279 Y136.5068 E1.94099 F1800 ; Draw perimeter (left)
G0 X142.945 Y137.0239 F12000 ; Step inwards to print next perimeter
G1 X142.945 Y178.4161 E1.77967 F1800 ; Draw perimeter (up)
G1 X187.055 Y178.4161 E1.89653 F1800 ; Draw perimeter (right)
G1 X187.055 Y137.0239 E1.77967 F1800 ; Draw perimeter (down)
G1 X142.945 Y137.0239 E1.89653 F1800 ; Draw perimeter (left)
G0 X143.462 Y137.541 F12000 ; Step inwards to print next perimeter
G1 X143.462 Y177.899 E1.73521 F1800 ; Draw perimeter (up)
G1 X186.538 Y177.899 E1.85206 F1800 ; Draw perimeter (right)
G1 X186.538 Y137.541 E1.73521 F1800 ; Draw perimeter (down)
G1 X143.462 Y137.541 E1.85206 F1800 ; Draw perimeter (left)
G0 X143.9791 Y138.058 F12000 ; Step inwards to print next perimeter
G1 X143.9791 Y177.382 E1.69075 F1800 ; Draw perimeter (up)
G1 X186.0209 Y177.382 E1.8076 F1800 ; Draw perimeter (right)
G1 X186.0209 Y138.058 E1.69075 F1800 ; Draw perimeter (down)
G1 X143.9791 Y138.058 E1.8076 F1800 ; Draw perimeter (left)
G1 E-0.5 F3000 ; Retract
G1 Z0.3 F12000 ; Z hop
G0 X142.4279 Y179.4503 F12000 ; Move to box start
G1 Z0.2 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X142.4279 Y193.9674 E0.62417 F1800 ; Draw perimeter (up)
G1 X167.067 Y193.9674 E1.05937 F1800 ; Draw perimeter (right)
G1 X167.067 Y179.4503 E0.62417 F1800 ; Draw perimeter (down)
G1 X142.4279 Y179.4503 E1.05937 F1800 ; Draw perimeter (left)
G0 X142.945 Y179.9674 F12000 ; Step inwards to print next perimeter
G1 X142.945 Y193.4503 E0.5797 F1800 ; Draw perimeter (up)
G1 X166.5499 Y193.4503 E1.0149 F1800 ; Draw perimeter (right)
G1 X166.5499 Y179.9674 E0.5797 F1800 ; Draw perimeter (down)
G1 X142.945 Y179.9674 E1.0149 F1800 ; Draw perimeter (left)
G0 X143.462 Y180.4844 F12000 ; Step inwards to print next perimeter
G1 X143.462 Y192.9332 E0.53524 F1800 ; Draw perimeter (up)
G1 X166.0329 Y192.9332 E0.97044 F1800 ; Draw perimeter (right)
G1 X166.0329 Y180.4844 E0.53524 F1800 ; Draw perimeter (down)
G1 X143.462 Y180.4844 E0.97044 F1800 ; Draw perimeter (left)
G0 X143.9791 Y181.0015 F12000 ; Step inwards to print next perimeter
G1 X143.9791 Y192.4161 E0.49077 F1800 ; Draw perimeter (up)
G1 X165.5158 Y192.4161 E0.92598 F1800 ; Draw perimeter (right)
G1 X165.5158 Y181.0015 E0.49077 F1800 ; Draw perimeter (down)
G1 X143.9791 Y181.0015 E0.92598 F1800 ; Draw perimeter (left)
G0 X144.3525 Y181.3749 F12000 ; Move to fill start
G0 X145.0837 Y181.3749 F12000 ; Move
G1 X144.3525 Y182.1061 E0.04446 F1800 ; Fill
G0 X144.3525 Y182.8374 F12000 ; Move
G1 X145.815 Y181.3749 E0.08893 F1800 ; Fill
G0 X146.5462 Y181.3749 F12000 ; Move
G1 X144.3525 Y183.5686 E0.13339 F1800 ; Fill
G0 X144.3525 Y184.2999 F12000 ; Move
G1 X147.2775 Y181.3749 E0.17786 F1800 ; Fill
G0 X148.0088 Y181.3749 F12000 ; Move
G1 X144.3525 Y185.0312 E0.22232 F1800 ; Fill
G0 X144.3525 Y185.7624 F12000 ; Move
G1 X148.74 Y181.3749 E0.26678 F1800 ; Fill
G0 X149.4713 Y181.3749 F12000 ; Move
G1 X144.3525 Y186.4937 E0.31125 F1800 ; Fill
G0 X144.3525 Y187.2249 F12000 ; Move
G1 X150.2025 Y181.3749 E0.35571 F1800 ; Fill
G0 X150.9338 Y181.3749 F12000 ; Move
G1 X144.3525 Y187.9562 E0.40018 F1800 ; Fill
G0 X144.3525 Y188.6875 F12000 ; Move
G1 X151.6651 Y181.3749 E0.44464 F1800 ; Fill
G0 X152.3963 Y181.3749 F12000 ; Move
G1 X144.3525 Y189.4187 E0.4891 F1800 ; Fill
G0 X144.3525 Y190.15 F12000 ; Move
G1 X153.1276 Y181.3749 E0.53357 F1800 ; Fill
G0 X153.8589 Y181.3749 F12000 ; Move
G1 X144.3525 Y190.8813 E0.57803 F1800 ; Fill
G0 X144.3525 Y191.6125 F12000 ; Move
G1 X154.5901 Y181.3749 E0.6225 F1800 ; Fill
G0 X155.3214 Y181.3749 F12000 ; Move
G1 X144.6534 Y192.0428 E0.64866 F1800 ; Fill
G0 X145.3847 Y192.0428 F12000 ; Move
G1 X156.0526 Y181.3749 E0.64866 F1800 ; Fill
G0 X156.7839 Y181.3749 F12000 ; Move
G1 X146.116 Y192.0428 E0.64866 F1800 ; Fill
G0 X146.8472 Y192.0428 F12000 ; Move
G1 X157.5152 Y181.3749 E0.64866 F1800 ; Fill
G0 X158.2464 Y181.3749 F12000 ; Move
G1 X147.5785 Y192.0428 E0.64866 F1800 ; Fill
G0 X148.3097 Y192.0428 F12000 ; Move
G1 X158.9777 Y181.3749 E0.64866 F1800 ; Fill
G0 X159.7089 Y181.3749 F12000 ; Move
G1 X149.041 Y192.0428 E0.64866 F1800 ; Fill
G0 X149.7723 Y192.0428 F12000 ; Move
G1 X160.4402 Y181.3749 E0.64866 F1800 ; Fill
G0 X161.1715 Y181.3749 F12000 ; Move
G1 X150.5035 Y192.0428 E0.64866 F1800 ; Fill
G0 X151.2348 Y192.0428 F12000 ; Move
G1 X161.9027 Y181.3749 E0.64866 F1800 ; Fill
G0 X162.634 Y181.3749 F12000 ; Move
G1 X151.9661 Y192.0428 E0.64866 F1800 ; Fill
G0 X152.6973 Y192.0428 F12000 ; Move
G1 X163.3652 Y181.3749 E0.64866 F1800 ; Fill
G0 X164.0965 Y181.3749 F12000 ; Move
G1 X153.4286 Y192.0428 E0.64866 F1800 ; Fill
G0 X154.1598 Y192.0428 F12000 ; Move
G1 X164.8278 Y181.3749 E0.64866 F1800 ; Fill
G0 X165.1424 Y181.7914 F12000 ; Move
G1 X154.8911 Y192.0428 E0.62333 F1800 ; Fill
G0 X155.6224 Y192.0428 F12000 ; Move
G1 X165.1424 Y182.5227 E0.57887 F1800 ; Fill
G0 X165.1424 Y183.254 F12000 ; Move
G1 X156.3536 Y192.0428 E0.5344 F1800 ; Fill
G0 X157.0849 Y192.0428 F12000 ; Move
G1 X165.1424 Y183.9852 E0.48994 F1800 ; Fill
G0 X165.1424 Y184.7165 F12000 ; Move
G1 X157.8161 Y192.0428 E0.44547 F1800 ; Fill
G0 X158.5474 Y192.0428 F12000 ; Move
G1 X165.1424 Y185.4478 E0.40101 F1800 ; Fill
G0 X165.1424 Y186.179 F12000 ; Move
G1 X159.2787 Y192.0428 E0.35654 F1800 ; Fill
G0 X160.0099 Y192.0428 F12000 ; Move
G1 X165.1424 Y186.9103 E0.31208 F1800 ; Fill
G0 X165.1424 Y187.6415 F12000 ; Move
G1 X160.7412 Y192.0428 E0.26762 F1800 ; Fill
G0 X161.4724 Y192.0428 F12000 ; Move
G1 X165.1424 Y188.3728 E0.22315 F1800 ; Fill
G0 X165.1424 Y189.1041 F12000 ; Move
G1 X162.2037 Y192.0428 E0.17869 F1800 ; Fill
G0 X162.935 Y192.0428 F12000 ; Move
G1 X165.1424 Y189.8353 E0.13422 F1800 ; Fill
G0 X165.1424 Y190.5666 F12000 ; Move
G1 X163.6662 Y192.0428 E0.08976 F1800 ; Fill
G0 X164.3975 Y192.0428 F12000 ; Move
G1 X165.1424 Y191.2978 E0.0453 F1800 ; Fill
G0 X165.1424 Y192.0291 F12000 ; Move
G1 X165.1288 Y192.0428 E0.00083 F1800 ; Fill
G0 Z0.2 F12000 ; Move to layer height
G1 E-0.5 F3000 ; Retract
G1 Z0.3 F12000 ; Z hop
G0 X147.0568 Y138.4314 F12000 ; Move to pattern start

G1 Z0.2 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.075 ; Set pressure advance
M117 PA 0.075
G1 X166.3454 Y157.72 E0.92334 F1800 ; Print pattern wall
G1 X147.0568 Y177.0086 E0.92334 F1800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.3 F12000 ; Z hop
G0 X147.6325 Y138.4314 F12000 ; Move to start next pattern wall
G1 Z0.2 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X166.9211 Y157.72 E0.92334 F1800 ; Print pattern wall
G1 X147.6325 Y177.0086 E0.92334 F1800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.3 F12000 ; Z hop
G0 X148.2082 Y138.4314 F12000 ; Move to start next pattern wall
G1 Z0.2 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X167.4968 Y157.72 E0.92334 F1800 ; Print pattern wall
G1 X148.2082 Y177.0086 E0.92334 F1800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.3 F12000 ; Z hop
G0 X150.6582 Y138.4314 F12000 ; Move to next pattern
G1 Z0.2 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.076 ; Set pressure advance
M117 PA 0.076
G1 X169.9468 Y157.72 E0.92334 F1800 ; Print pattern wall
G1 X150.6582 Y177.0086 E0.92334 F1800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.3 F12000 ; Z hop
G0 X151.2339 Y138.4314 F12000 ; Move to start next pattern wall
G1 Z0.2 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X170.5225 Y157.72 E0.92334 F1800 ; Print pattern wall
G1 X151.2339 Y177.0086 E0.92334 F1800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.3 F12000 ; Z hop
G0 X151.8096 Y138.4314 F12000 ; Move to start next pattern wall
G1 Z0.2 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X171.0982 Y157.72 E0.92334 F1800 ; Print pattern wall
G1 X151.8096 Y177.0086 E0.92334 F1800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.3 F12000 ; Z hop
G0 X154.2596 Y138.4314 F12000 ; Move to next pattern
G1 Z0.2 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.077 ; Set pressure advance
M117 PA 0.077
G1 X173.5482 Y157.72 E0.92334 F1800 ; Print pattern wall
G1 X154.2596 Y177.0086 E0.92334 F1800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.3 F12000 ; Z hop
G0 X154.8353 Y138.4314 F12000 ; Move to start next pattern wall
G1 Z0.2 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X174.1239 Y157.72 E0.92334 F1800 ; Print pattern wall
G1 X154.8353 Y177.0086 E0.92334 F1800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.3 F12000 ; Z hop
G0 X155.4109 Y138.4314 F12000 ; Move to start next pattern wall
G1 Z0.2 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X174.6996 Y157.72 E0.92334 F1800 ; Print pattern wall
G1 X155.4109 Y177.0086 E0.92334 F1800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.3 F12000 ; Z hop
G0 X157.8609 Y138.4314 F12000 ; Move to next pattern
G1 Z0.2 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.078 ; Set pressure advance
M117 PA 0.078
G1 X177.1496 Y157.72 E0.92334 F1800 ; Print pattern wall
G1 X157.8609 Y177.0086 E0.92334 F1800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.3 F12000 ; Z hop
G0 X158.4366 Y138.4314 F12000 ; Move to start next pattern wall
G1 Z0.2 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X177.7253 Y157.72 E0.92334 F1800 ; Print pattern wall
G1 X158.4366 Y177.0086 E0.92334 F1800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.3 F12000 ; Z hop
G0 X159.0123 Y138.4314 F12000 ; Move to start next pattern wall
G1 Z0.2 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X178.301 Y157.72 E0.92334 F1800 ; Print pattern wall
G1 X159.0123 Y177.0086 E0.92334 F1800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.3 F12000 ; Z hop
G0 X161.4623 Y138.4314 F12000 ; Move to next pattern
G1 Z0.2 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.079 ; Set pressure advance
M117 PA 0.079
G1 X180.751 Y157.72 E0.92334 F1800 ; Print pattern wall
G1 X161.4623 Y177.0086 E0.92334 F1800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.3 F12000 ; Z hop
G0 X162.038 Y138.4314 F12000 ; Move to start next pattern wall
G1 Z0.2 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X181.3267 Y157.72 E0.92334 F1800 ; Print pattern wall
G1 X162.038 Y177.0086 E0.92334 F1800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.3 F12000 ; Z hop
G0 X162.6137 Y138.4314 F12000 ; Move to start next pattern wall
G1 Z0.2 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X181.9024 Y157.72 E0.92334 F1800 ; Print pattern wall
G1 X162.6137 Y177.0086 E0.92334 F1800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.3 F12000 ; Z hop
G0 X165.0637 Y138.4314 F12000 ; Move to next pattern
G1 Z0.2 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.08 ; Set pressure advance
M117 PA 0.08
G1 X184.3524 Y157.72 E0.92334 F1800 ; Print pattern wall
G1 X165.0637 Y177.0086 E0.92334 F1800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.3 F12000 ; Z hop
G0 X165.6394 Y138.4314 F12000 ; Move to start next pattern wall
G1 Z0.2 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X184.9281 Y157.72 E0.92334 F1800 ; Print pattern wall
G1 X165.6394 Y177.0086 E0.92334 F1800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.3 F12000 ; Z hop
G0 X166.2151 Y138.4314 F12000 ; Move to start next pattern wall
G1 Z0.2 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X185.5038 Y157.72 E0.92334 F1800 ; Print pattern wall
G1 X166.2151 Y177.0086 E0.92334 F1800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.3 F12000 ; Z hop
G0 X147.0568 Y138.4314 F12000 ; Move back to start position
G1 Z0.2 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
M106 S255 ; Set fan speed
G0 Z0.4 F12000 ; Move to layer height
G1 E-0.5 F3000 ; Retract
G1 Z0.5 F12000 ; Z hop
G0 X143.7079 Y180.3832 F12000 ; Move
G1 Z0.4 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X145.7079 Y180.3832 E0.0677 F1800 ; Glyph: 0
G1 X147.7079 Y180.3832 E0.0677 F1800 ; Glyph: 0
G1 X147.7079 Y182.3832 E0.0677 F1800 ; Glyph: 0
G1 X145.7079 Y182.3832 E0.0677 F1800 ; Glyph: 0
G1 X143.7079 Y182.3832 E0.0677 F1800 ; Glyph: 0
G1 X143.7079 Y180.3832 E0.0677 F1800 ; Glyph: 0
G1 E-0.5 F3000 ; Retract
G1 Z0.5 F12000 ; Z hop
G0 X147.7079 Y183.3832 F12000 ; Move
G1 Z0.4 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X146.9579 Y183.3832 E0.02539 F1800 ; Glyph: .
G1 E-0.5 F3000 ; Retract
G1 Z0.5 F12000 ; Z hop
G0 X143.7079 Y184.3832 F12000 ; Move
G1 Z0.4 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X145.7079 Y184.3832 E0.0677 F1800 ; Glyph: 0
G1 X147.7079 Y184.3832 E0.0677 F1800 ; Glyph: 0
G1 X147.7079 Y186.3832 E0.0677 F1800 ; Glyph: 0
G1 X145.7079 Y186.3832 E0.0677 F1800 ; Glyph: 0
G1 X143.7079 Y186.3832 E0.0677 F1800 ; Glyph: 0
G1 X143.7079 Y184.3832 E0.0677 F1800 ; Glyph: 0
G1 E-0.5 F3000 ; Retract
G1 Z0.5 F12000 ; Z hop
G0 X143.7079 Y187.3832 F12000 ; Move
G1 Z0.4 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X143.7079 Y189.3832 E0.0677 F1800 ; Glyph: 7
G1 X145.7079 Y189.3832 E0.0677 F1800 ; Glyph: 7
G1 X147.7079 Y189.3832 E0.0677 F1800 ; Glyph: 7
G1 E-0.5 F3000 ; Retract
G1 Z0.5 F12000 ; Z hop
G0 X143.7079 Y192.3832 F12000 ; Move
G1 Z0.4 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X143.7079 Y190.3832 E0.0677 F1800 ; Glyph: 5
G1 X145.7079 Y190.3832 E0.0677 F1800 ; Glyph: 5
G1 X145.7079 Y192.3832 E0.0677 F1800 ; Glyph: 5
G1 X147.7079 Y192.3832 E0.0677 F1800 ; Glyph: 5
G1 X147.7079 Y190.3832 E0.0677 F1800 ; Glyph: 5
G1 E-0.5 F3000 ; Retract
G1 Z0.5 F12000 ; Z hop
G0 X150.9107 Y180.3832 F12000 ; Move
G1 Z0.4 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X152.9107 Y180.3832 E0.0677 F1800 ; Glyph: 0
G1 X154.9107 Y180.3832 E0.0677 F1800 ; Glyph: 0
G1 X154.9107 Y182.3832 E0.0677 F1800 ; Glyph: 0
G1 X152.9107 Y182.3832 E0.0677 F1800 ; Glyph: 0
G1 X150.9107 Y182.3832 E0.0677 F1800 ; Glyph: 0
G1 X150.9107 Y180.3832 E0.0677 F1800 ; Glyph: 0
G1 E-0.5 F3000 ; Retract
G1 Z0.5 F12000 ; Z hop
G0 X154.9107 Y183.3832 F12000 ; Move
G1 Z0.4 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X154.1607 Y183.3832 E0.02539 F1800 ; Glyph: .
G1 E-0.5 F3000 ; Retract
G1 Z0.5 F12000 ; Z hop
G0 X150.9107 Y184.3832 F12000 ; Move
G1 Z0.4 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X152.9107 Y184.3832 E0.0677 F1800 ; Glyph: 0
G1 X154.9107 Y184.3832 E0.0677 F1800 ; Glyph: 0
G1 X154.9107 Y186.3832 E0.0677 F1800 ; Glyph: 0
G1 X152.9107 Y186.3832 E0.0677 F1800 ; Glyph: 0
G1 X150.9107 Y186.3832 E0.0677 F1800 ; Glyph: 0
G1 X150.9107 Y184.3832 E0.0677 F1800 ; Glyph: 0
G1 E-0.5 F3000 ; Retract
G1 Z0.5 F12000 ; Z hop
G0 X150.9107 Y187.3832 F12000 ; Move
G1 Z0.4 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X150.9107 Y189.3832 E0.0677 F1800 ; Glyph: 7
G1 X152.9107 Y189.3832 E0.0677 F1800 ; Glyph: 7
G1 X154.9107 Y189.3832 E0.0677 F1800 ; Glyph: 7
G1 E-0.5 F3000 ; Retract
G1 Z0.5 F12000 ; Z hop
G0 X150.9107 Y190.3832 F12000 ; Move
G1 Z0.4 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X150.9107 Y192.3832 E0.0677 F1800 ; Glyph: 7
G1 X152.9107 Y192.3832 E0.0677 F1800 ; Glyph: 7
G1 X154.9107 Y192.3832 E0.0677 F1800 ; Glyph: 7
G1 E-0.5 F3000 ; Retract
G1 Z0.5 F12000 ; Z hop
G0 X158.1135 Y180.3832 F12000 ; Move
G1 Z0.4 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X160.1135 Y180.3832 E0.0677 F1800 ; Glyph: 0
G1 X162.1135 Y180.3832 E0.0677 F1800 ; Glyph: 0
G1 X162.1135 Y182.3832 E0.0677 F1800 ; Glyph: 0
G1 X160.1135 Y182.3832 E0.0677 F1800 ; Glyph: 0
G1 X158.1135 Y182.3832 E0.0677 F1800 ; Glyph: 0
G1 X158.1135 Y180.3832 E0.0677 F1800 ; Glyph: 0
G1 E-0.5 F3000 ; Retract
G1 Z0.5 F12000 ; Z hop
G0 X162.1135 Y183.3832 F12000 ; Move
G1 Z0.4 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X161.3635 Y183.3832 E0.02539 F1800 ; Glyph: .
G1 E-0.5 F3000 ; Retract
G1 Z0.5 F12000 ; Z hop
G0 X158.1135 Y184.3832 F12000 ; Move
G1 Z0.4 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X160.1135 Y184.3832 E0.0677 F1800 ; Glyph: 0
G1 X162.1135 Y184.3832 E0.0677 F1800 ; Glyph: 0
G1 X162.1135 Y186.3832 E0.0677 F1800 ; Glyph: 0
G1 X160.1135 Y186.3832 E0.0677 F1800 ; Glyph: 0
G1 X158.1135 Y186.3832 E0.0677 F1800 ; Glyph: 0
G1 X158.1135 Y184.3832 E0.0677 F1800 ; Glyph: 0
G1 E-0.5 F3000 ; Retract
G1 Z0.5 F12000 ; Z hop
G0 X158.1135 Y187.3832 F12000 ; Move
G1 Z0.4 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X158.1135 Y189.3832 E0.0677 F1800 ; Glyph: 7
G1 X160.1135 Y189.3832 E0.0677 F1800 ; Glyph: 7
G1 X162.1135 Y189.3832 E0.0677 F1800 ; Glyph: 7
G0 X162.1135 Y190.3832 F12000 ; Move
G1 X162.1135 Y192.3832 E0.0677 F1800 ; Glyph: 9
G1 X160.1135 Y192.3832 E0.0677 F1800 ; Glyph: 9
G1 X158.1135 Y192.3832 E0.0677 F1800 ; Glyph: 9
G1 X158.1135 Y190.3832 E0.0677 F1800 ; Glyph: 9
G1 X160.1135 Y190.3832 E0.0677 F1800 ; Glyph: 9
G1 X160.1135 Y192.3832 E0.0677 F1800 ; Glyph: 9
G1 E-0.5 F3000 ; Retract
G1 Z0.5 F12000 ; Z hop
G0 X145.1322 Y136.5068 F12000 ; Move to pattern start

G1 Z0.4 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.075 ; Set pressure advance
M117 PA 0.075
G1 X166.3454 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X145.1322 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.5 F12000 ; Z hop
G0 X145.7079 Y136.5068 F12000 ; Move to start next pattern wall
G1 Z0.4 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X166.9211 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X145.7079 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.5 F12000 ; Z hop
G0 X146.2836 Y136.5068 F12000 ; Move to start next pattern wall
G1 Z0.4 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X167.4968 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X146.2836 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.5 F12000 ; Z hop
G0 X148.7336 Y136.5068 F12000 ; Move to next pattern
G1 Z0.4 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.076 ; Set pressure advance
M117 PA 0.076
G1 X169.9468 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X148.7336 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.5 F12000 ; Z hop
G0 X149.3093 Y136.5068 F12000 ; Move to start next pattern wall
G1 Z0.4 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X170.5225 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X149.3093 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.5 F12000 ; Z hop
G0 X149.885 Y136.5068 F12000 ; Move to start next pattern wall
G1 Z0.4 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X171.0982 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X149.885 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.5 F12000 ; Z hop
G0 X152.335 Y136.5068 F12000 ; Move to next pattern
G1 Z0.4 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.077 ; Set pressure advance
M117 PA 0.077
G1 X173.5482 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X152.335 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.5 F12000 ; Z hop
G0 X152.9107 Y136.5068 F12000 ; Move to start next pattern wall
G1 Z0.4 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X174.1239 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X152.9107 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.5 F12000 ; Z hop
G0 X153.4864 Y136.5068 F12000 ; Move to start next pattern wall
G1 Z0.4 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X174.6996 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X153.4864 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.5 F12000 ; Z hop
G0 X155.9364 Y136.5068 F12000 ; Move to next pattern
G1 Z0.4 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.078 ; Set pressure advance
M117 PA 0.078
G1 X177.1496 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X155.9364 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.5 F12000 ; Z hop
G0 X156.5121 Y136.5068 F12000 ; Move to start next pattern wall
G1 Z0.4 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X177.7253 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X156.5121 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.5 F12000 ; Z hop
G0 X157.0878 Y136.5068 F12000 ; Move to start next pattern wall
G1 Z0.4 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X178.301 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X157.0878 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.5 F12000 ; Z hop
G0 X159.5378 Y136.5068 F12000 ; Move to next pattern
G1 Z0.4 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.079 ; Set pressure advance
M117 PA 0.079
G1 X180.751 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X159.5378 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.5 F12000 ; Z hop
G0 X160.1135 Y136.5068 F12000 ; Move to start next pattern wall
G1 Z0.4 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X181.3267 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X160.1135 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.5 F12000 ; Z hop
G0 X160.6892 Y136.5068 F12000 ; Move to start next pattern wall
G1 Z0.4 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X181.9024 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X160.6892 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.5 F12000 ; Z hop
G0 X163.1392 Y136.5068 F12000 ; Move to next pattern
G1 Z0.4 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.08 ; Set pressure advance
M117 PA 0.08
G1 X184.3524 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X163.1392 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.5 F12000 ; Z hop
G0 X163.7149 Y136.5068 F12000 ; Move to start next pattern wall
G1 Z0.4 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X184.9281 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X163.7149 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.5 F12000 ; Z hop
G0 X164.2906 Y136.5068 F12000 ; Move to start next pattern wall
G1 Z0.4 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X185.5038 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X164.2906 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.5 F12000 ; Z hop
G0 X145.1322 Y136.5068 F12000 ; Move back to start position
G1 Z0.4 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G0 Z0.6 F12000 ; Move to layer height
SET_PRESSURE_ADVANCE ADVANCE=0.075 ; Set pressure advance
M117 PA 0.075
G1 X166.3454 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X145.1322 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.7 F12000 ; Z hop
G0 X145.7079 Y136.5068 F12000 ; Move to start next pattern wall
G1 Z0.6 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X166.9211 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X145.7079 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.7 F12000 ; Z hop
G0 X146.2836 Y136.5068 F12000 ; Move to start next pattern wall
G1 Z0.6 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X167.4968 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X146.2836 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.7 F12000 ; Z hop
G0 X148.7336 Y136.5068 F12000 ; Move to next pattern
G1 Z0.6 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.076 ; Set pressure advance
M117 PA 0.076
G1 X169.9468 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X148.7336 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.7 F12000 ; Z hop
G0 X149.3093 Y136.5068 F12000 ; Move to start next pattern wall
G1 Z0.6 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X170.5225 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X149.3093 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.7 F12000 ; Z hop
G0 X149.885 Y136.5068 F12000 ; Move to start next pattern wall
G1 Z0.6 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X171.0982 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X149.885 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.7 F12000 ; Z hop
G0 X152.335 Y136.5068 F12000 ; Move to next pattern
G1 Z0.6 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.077 ; Set pressure advance
M117 PA 0.077
G1 X173.5482 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X152.335 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.7 F12000 ; Z hop
G0 X152.9107 Y136.5068 F12000 ; Move to start next pattern wall
G1 Z0.6 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X174.1239 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X152.9107 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.7 F12000 ; Z hop
G0 X153.4864 Y136.5068 F12000 ; Move to start next pattern wall
G1 Z0.6 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X174.6996 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X153.4864 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.7 F12000 ; Z hop
G0 X155.9364 Y136.5068 F12000 ; Move to next pattern
G1 Z0.6 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.078 ; Set pressure advance
M117 PA 0.078
G1 X177.1496 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X155.9364 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.7 F12000 ; Z hop
G0 X156.5121 Y136.5068 F12000 ; Move to start next pattern wall
G1 Z0.6 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X177.7253 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X156.5121 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.7 F12000 ; Z hop
G0 X157.0878 Y136.5068 F12000 ; Move to start next pattern wall
G1 Z0.6 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X178.301 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X157.0878 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.7 F12000 ; Z hop
G0 X159.5378 Y136.5068 F12000 ; Move to next pattern
G1 Z0.6 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.079 ; Set pressure advance
M117 PA 0.079
G1 X180.751 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X159.5378 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.7 F12000 ; Z hop
G0 X160.1135 Y136.5068 F12000 ; Move to start next pattern wall
G1 Z0.6 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X181.3267 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X160.1135 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.7 F12000 ; Z hop
G0 X160.6892 Y136.5068 F12000 ; Move to start next pattern wall
G1 Z0.6 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X181.9024 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X160.6892 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.7 F12000 ; Z hop
G0 X163.1392 Y136.5068 F12000 ; Move to next pattern
G1 Z0.6 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.08 ; Set pressure advance
M117 PA 0.08
G1 X184.3524 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X163.1392 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.7 F12000 ; Z hop
G0 X163.7149 Y136.5068 F12000 ; Move to start next pattern wall
G1 Z0.6 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X184.9281 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X163.7149 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.7 F12000 ; Z hop
G0 X164.2906 Y136.5068 F12000 ; Move to start next pattern wall
G1 Z0.6 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X185.5038 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X164.2906 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.7 F12000 ; Z hop
G0 X145.1322 Y136.5068 F12000 ; Move back to start position
G1 Z0.6 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G0 Z0.8 F12000 ; Move to layer height
SET_PRESSURE_ADVANCE ADVANCE=0.075 ; Set pressure advance
M117 PA 0.075
G1 X166.3454 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X145.1322 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.9 F12000 ; Z hop
G0 X145.7079 Y136.5068 F12000 ; Move to start next pattern wall
G1 Z0.8 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X166.9211 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X145.7079 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.9 F12000 ; Z hop
G0 X146.2836 Y136.5068 F12000 ; Move to start next pattern wall
G1 Z0.8 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X167.4968 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X146.2836 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.9 F12000 ; Z hop
G0 X148.7336 Y136.5068 F12000 ; Move to next pattern
G1 Z0.8 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.076 ; Set pressure advance
M117 PA 0.076
G1 X169.9468 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X148.7336 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.9 F12000 ; Z hop
G0 X149.3093 Y136.5068 F12000 ; Move to start next pattern wall
G1 Z0.8 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X170.5225 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X149.3093 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.9 F12000 ; Z hop
G0 X149.885 Y136.5068 F12000 ; Move to start next pattern wall
G1 Z0.8 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X171.0982 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X149.885 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.9 F12000 ; Z hop
G0 X152.335 Y136.5068 F12000 ; Move to next pattern
G1 Z0.8 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.077 ; Set pressure advance
M117 PA 0.077
G1 X173.5482 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X152.335 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.9 F12000 ; Z hop
G0 X152.9107 Y136.5068 F12000 ; Move to start next pattern wall
G1 Z0.8 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X174.1239 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X152.9107 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.9 F12000 ; Z hop
G0 X153.4864 Y136.5068 F12000 ; Move to start next pattern wall
G1 Z0.8 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X174.6996 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X153.4864 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.9 F12000 ; Z hop
G0 X155.9364 Y136.5068 F12000 ; Move to next pattern
G1 Z0.8 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.078 ; Set pressure advance
M117 PA 0.078
G1 X177.1496 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X155.9364 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.9 F12000 ; Z hop
G0 X156.5121 Y136.5068 F12000 ; Move to start next pattern wall
G1 Z0.8 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X177.7253 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X156.5121 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.9 F12000 ; Z hop
G0 X157.0878 Y136.5068 F12000 ; Move to start next pattern wall
G1 Z0.8 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X178.301 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X157.0878 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.9 F12000 ; Z hop
G0 X159.5378 Y136.5068 F12000 ; Move to next pattern
G1 Z0.8 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.079 ; Set pressure advance
M117 PA 0.079
G1 X180.751 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X159.5378 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.9 F12000 ; Z hop
G0 X160.1135 Y136.5068 F12000 ; Move to start next pattern wall
G1 Z0.8 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X181.3267 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X160.1135 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.9 F12000 ; Z hop
G0 X160.6892 Y136.5068 F12000 ; Move to start next pattern wall
G1 Z0.8 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X181.9024 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X160.6892 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.9 F12000 ; Z hop
G0 X163.1392 Y136.5068 F12000 ; Move to next pattern
G1 Z0.8 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.08 ; Set pressure advance
M117 PA 0.08
G1 X184.3524 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X163.1392 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.9 F12000 ; Z hop
G0 X163.7149 Y136.5068 F12000 ; Move to start next pattern wall
G1 Z0.8 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X184.9281 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X163.7149 Y178.9332 E1.01546 F4800 ; Print pattern wall
G1 E-0.5 F3000 ; Retract
G1 Z0.9 F12000 ; Z hop
G0 X164.2906 Y136.5068 F12000 ; Move to start next pattern wall
G1 Z0.8 F12000 ; Z hop return
G1 E0.5 F1800 ; Un-retract
G1 X185.5038 Y157.72 E1.01546 F4800 ; Print pattern wall
G1 X164.2906 Y178.9332 E1.01546 F4800 ; Print pattern wall
SET_PRESSURE_ADVANCE ADVANCE=0.075 ; Set pressure advance back to start value
M117 PA 0.075
G1 E-0.5 F3000 ; Retract
G1 Z0.9 F12000 ; Z hop
G0 Z5.8 F12000 ; Z raise
M104 S0 ; Turn off hotend
M140 S0 ; Turn off bed
M107    ; Turn off fan
;
; End G-code
;
END_PRINT
;
; FINISH
;
