# Hackintosh Aero 15 (7700HQ, GTX1060)

## Notes

### How to enable GTX1060 in HighSierra

- Disable **SSDT-Disable-DGPU.aml** in **/EFI/CLOVER/ACPI/patched**
- Install the current version of Nvidia Web Driver for your OS
- Shutdown your computer and reboot.

### A better solution for WiFi & BT

- A natively supported WiFi card + M.2 Adapter.

### Please change the serial number before you use it.

## Specs （From NotebookCheck）

- **Processor:** Intel Core i7-7700HQ](https://www.notebookcheck.net/Intel-Core-i7-7700HQ-Notebook-Processor.187975.0.html) ([Intel Core i7](https://www.notebookcheck.net/Intel-Core-i7-Notebook-Processor-Clarksfield.21025.0.html))
- **Graphics:** [NVIDIA GeForce GTX 1060 (Laptop)](https://www.notebookcheck.net/Mobile-NVIDIA-GeForce-GTX-1060-Laptop-Benchmarks-and-Specs.169547.0.html) - 6144 MB, Core: 1405 MHz, Memory: 4000 MHz, GDDR5, ForceWare 376.67, Optimus
- **Memory:** 16384 MB , 2x 8 GB SO-DIMM DDR4-2400, Dual Channel, 2 of 2 slots used, max. 32 GB
- **Display:** 15.6 inch 16:9, 1920 x 1080 pixel 141 PPI, N156HCA-EA1 (CMN15D7), IPS, X-Rite Pantone, 60 Hz, glossy: no
- **Mainboard:** Intel HM175
- **Storage:** 
  - Crucial_CT525MX300SSD4	525.11 GB
  - HS-SSD-C2000	1024 GB
- **Soundcard:** Realtek ALC255 @ Intel Sunrise Point PCH - High Definition Audio Controller
- **Connections:**
  - 3 USB 3.0 / 3.1 Gen1, 
  - 1 USB 3.1 Gen2, 1 Thunderbolt, 
  - 1 HDMI, 2 DisplayPort, 
  - Audio Connections: combined (headphones/microphone), 
  - Card Reader: SD,SDHC,SDXC, 
  - Brightness Sensor
- **Networking:** 
  - Realtek Gaming GBE Family Controller (10/100/1000/2500/5000MBit/s), 
  - Broadcom BCM94352z/DW1560
- **Camera:** Webcam: HD
- **Clover Version:** 5070

## What is working

**USB Based Devices**

- All USB ports (2.0 + 3.0)
- Card Reader (3.0)
- HD Camera (2.0)
- Keyboard (2.0)
- Bluetooth (Internal 2.0)

**Network**

- Ethernet card
- WiFi + Bluetooth

**Power**

- CPU power management
- Battery indicator
- USB PM
- Shutdown/Sleep/Restart
- Brightness control

**Graphics**

- Intel graphics card (Internal Display)
- **Nvidia graphics card** (High Sierra only, **Nvidia Web Driver** is required)
  - HDMI
  - Mini Display Port

**Misc**

- Sound
  - Internal Speaker
  - Internal Mic
  - Mic Jack
    - Speaker only
- Touchpad

## Not working/Issues

- Thunderbolt / USB 3.1 Gen2 (USB Type-C)
  - Some functionality does work if hot reboot from Windows.
- Nvidia Graphics Card
  - Only works in HighSierra since no driver is released for Mojave and above.
