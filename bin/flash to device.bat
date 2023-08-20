:start
esptool.exe --chip esp32s3   --baud 921600 --before default_reset --after hard_reset write_flash -z --flash_mode dio --flash_freq 80m --flash_size 4MB 0x0 0x0000_bootloader.bin 0x8000 0x8000_partitions.bin 0xe000 0xe000_boot_app0.bin 0x10000 0x10000_firmware.bin

@echo Press any key, keey find device praogram
pause
goto start

