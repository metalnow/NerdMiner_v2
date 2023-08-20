# NerdSoloMiner
**The NerdSoloMiner v2**

This is a **free and open source project** that let you try to reach a bitcoin block with a small piece of hardware. 

The main aim of this project is to let you **learn more about minery** and to have a beautiful piece of hardware in your desktop.


Original project https://github.com/valerio-vaccaro/HAN

Branched project & modified from https://github.com/BitMaker-hub/NerdMiner_v2

![image](images/NerdMinerv2_mini.jpg)

## Requirements
- LilyGO T-QT [link](https://github.com/Xinyuan-LilyGO/T-QT)
- 3D BOX [here](3d_files/)

### Project description
**ESP32 implementing Stratum protocol** to mine on solo pool. Pool can be changed but originally works with ckpool.

This project is using ESP32-S3, uses WifiManager to modify miner settings and save them to SPIFF.
The microMiner comes with several screens to monitor it's working procedure and also to show you network mining stats.
Currently includes:
- Mining Screen > Mining data of Nerdminer
- Clock Screen > Fashion style clock miner

This miner is multicore and multithreads, one thread is used to mine and other is implementing stratum work and wifi stuff. 
Every time an stratum job notification is received miner update its current work to not create stale shares. 

**IMPORTANT** Miner is not seen by all standard pools due to its low share difficulty. You can check miner work remotely using specific pools specified down or seeing logs via UART.

***Current project is still in developement and more features will be added***

## Build Tutorial
### Hardware requirements
- LilyGO T-QT > Buy it on aliexpress or amazon
- 3D BOX

### Flash firmware
#### Standard tool [tested]
Create your own miner using the online firwmare flash tool **ESPtool** and the **binary files** that you will find in the src/bin folder.
If you want you can compile the entire project using Arduino, PlatformIO or Expressif IDF.

1. Get a LilyGO T-QT
1. Download this repository
1. Go to ESPtool online: https://espressif.github.io/esptool-js/
1. Load the firmware with the binaries from the src/bin folder.
1. Plug your board and select each file from src/bin with its address 
1. Quick way, set flash address 0x10000 and select firmware.bin file ![image](images/exp_tool_online_simple.png)
1. Hard way ![image](images/exp_tool_online_hard.png)
1. Disconnect your board and re-plug

#### Standard tool [untest]
Run bat file in windows.

1. Get a LilyGO T-QT
1. Download this repository
1. Goto bin folder
1. Run 'flash to device.bat'

#### developer build
Complicated way to flash firmware. Build your own miner using the developer tool:

1. Get a LilyGO T-QT
1. Download this repository
1. Install visual studio classic and platform.io plugin
1. Plug your board
1. Build and Upload 

### Update firmware
Update NerdMiner firmware following same flashing steps but only adding 0x10000_firmware file.

#### Build troubleshooting
1. Online ESPtool works with chrome, chromium, brave
1. ESPtool recommendations: use 115200bps
1. Build errors > If during firmware download upload stops, it's recommended to enter the board in boot mode. Unplug cable, hold right bottom button and then plug cable. Try programming
1. In extreme case you can "Erase all flash" on ESPtool to clean all current configuration before uploading firmware. There has been cases that experimented Wifi failures until this was made. 

### NerdMiner configuration
After programming, you will only need to setup your Wifi and BTC address.

1. Connect to NerdMinerAP
    - AP:   NerdMinerAP
    - PASS: MineYourCoins
1. Setup your Wifi Network
1. Add your BTCaddress

Recommended low difficulty share pools:

| Pool URL                 | Port  | Web URL | Status |
|---                       |---    |---  |---      |
| public-pool.airdns.org   | 21496 | http://public-pool.airdns.org:37273/#/ | Open Source Solo Bitcoin Mining Pool supporting open source miners |
| nerdminers.org           |       | https://nerdminers.org | Team domain for future pool - Currently pointing to public-pool.airdns.org  |
| nerdminer.io             | 3333  | https://nerdminer.io | Mantained by CHMEX |

Other standard pools not compatible with low difficulty share:

| Pool URL                 | Port | Web URL |
|---                       |---   |---  | 
| solo.ckpool.org          | 3333 | https://solo.ckpool.org/ |
| btc.zsolo.bid            | 6057 | https://zsolo.bid/en/btc-solo-mining-pool |
| eu.stratum.slushpool.com | 3333 | https://braiins.com/pool |

### Buttons
With the USB-C port to the right:

**TOP BUTTON**
- One click > change screen.
- Hold 5 seconds > top right button to **reset the configurations and reboot** your NerdMiner. 
- Hold and power up > enter **configuration mode** and edit current config via Wifi. You could change your settings or verify them.


**BOTTOM BUTTON**

- One Click > turn the screen off and on again
- Double click > change orientation (default is USB-C to the right)

#### Build video
[![Ver video aquí](https://img.youtube.com/vi/POUT2R_opDs/0.jpg)](https://youtu.be/POUT2R_opDs)

## Developers
### Project guidelines
- Current project was addapted to work with PlatformIO
- Current project works with ESP32-S3 but any ESP32 can be used.
- Partition squeme should be build as huge app
- All libraries needed shown on platform.ini

### On process
- [ ]  Add support to control BM1397

### Donations/Project contributions
If you would like to contribute and help dev team with this project you can send a donation to the following LN address ⚡teamnerdminer@getalby.com⚡

Enjoy
