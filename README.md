#  Recovery tree of Blackview BV9200

It was announced & released on November 2022.

## Device specifications

Basic   | Spec Sheet
-------:|:-------------------------
SoC     | MediaTek Helio G96 (MT6781) (12nm)
CPU     | Octa-core ( 2x 2.05 GHz ARM Cortex-A76, 6x 2.0 GHz ARM Cortex-A55)
GPU     | Mali-G57 MC2
Memory  | 8 GB RAM
Android | 12
Storage | 256 GB
Battery | Li-Po 5000 mAh, non-removable
Display | 6,58-inch, 1080 x 2408 FHD+ Resolution; Dynamic 120Hz Refresh Rate
Camera  | 50 MP (Samsung® ISOCELL GW3) and 13 MP (Samsung® ISOCELL 3L6)
Demensions | 81,8 x 174,45 x 13,6 mm
Weight  | 310 g
## Device picture

## Features

Works:

- [X] ADB
- [X] Display
- [X] Fasbootd
- [X] Flashing
- [X] MTP
- [X] Sideload
- [X] USB OTG
- [X] SD Card
- [X] Touch
- [ ] Flashlight
- [X] Vibrator

# Building
```bash
source build/envsetup.sh
lunch twrp_BV9200-eng
mka bootimage
```

## To use it:

```
fastboot flash boot boot.img
```
