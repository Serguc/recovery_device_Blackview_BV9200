#  Recovery tree of Blackview BV9200

It was announced & released on November 2022.

## Device specifications

Basic   | Spec Sheet
-------:|:-------------------------
SoC     | MediaTek Helio G96 (MT6781) (12nm)
CPU     | Octa-core ( 2x 2.05 GHz ARM Cortex-A76, 6x 2.0 GHz ARM Cortex-A55)
GPU     | ARM Mali-G57 MC2
Memory  | 8 GB RAM (LPDDR4X)
Android | 12.0 / Doke OS
Storage | 256 GB
Battery | Li-Po 5000 mAh, non-removable
Display |  6.58 in, IPS, 1080 x 2408 pixels, 24 bit
Camera  |  50 МП f/1.8, (wide), 1/2.76", 0.64µm,8 МП PDAF,f/1.8, 120˚, (ultrawide), AF,f/2.0, 16 МП (wide), 1/3", 1.0µm
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
