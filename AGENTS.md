# 3D-printing context

## Printer

- The printer is a custom-modified **TEVO Tarantula** running Marlin and using a BLTouch.
- Its Cura profile is currently configured as `TEVO Tarantula BLTouch`, with a 200 × 200 × 200 mm build volume.
- It has added structural braces/rails to make the frame more rigid and a custom BLTouch mounting attachment.
- The Z axis uses one motor with a top synchronisation belt driving both lead screws.
- The build surface is a metal print bed, then glass, then blue painter's tape. Treat this stack as the normal print surface; do not suggest removing or changing a layer unless the user asks.
- The printer is typically run from an SD card and Cura is installed locally.

## Materials and usual settings

- The primary material is PLA; ABS is also available.
- The recent silver PLA test used a 60 °C bed temperature and 193 °C nozzle temperature.
- The recent small-model profile is Cura `Draft - 0.2 mm`, 20% infill, no supports, with a brim. Use **106% first-layer flow** as the current default preference unless the user says otherwise.
- The Cura printer start G-code currently homes and runs `G29` after reaching temperature. Be deliberate before changing it because it affects every future print.

## Working preferences and safety

- Guide physical calibration and troubleshooting one safe step at a time; first confirm the current physical state with the user.
- Do not ask the user to touch the hot end, move axes by hand while powered, or make random mechanical adjustments. If the printer is powered down and cold, keep any inspection narrowly targeted.
- Keep the nozzle clear before a print. If a print begins moving before it has reached the commanded temperatures, tell the user to stop it.
- Avoid speculative mechanical changes. The printer was already able to produce usable test prints; mild Z-banding should be diagnosed from repeated evidence rather than fixed by blindly tightening or loosening parts.
- For ABS, explicitly check ventilation/enclosure and bed adhesion before recommending a print profile; do not reuse PLA temperatures or assumptions.
