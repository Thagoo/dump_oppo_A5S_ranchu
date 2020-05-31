#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:32288368:8c8d6a4d7dd3d987f1fc6d72df51f8db69bcd368; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/bootdevice/by-name/boot:11267696:d50616324725dda548de403e94dfabe46be50636 EMMC:/dev/block/platform/bootdevice/by-name/recovery 8c8d6a4d7dd3d987f1fc6d72df51f8db69bcd368 32288368 d50616324725dda548de403e94dfabe46be50636:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
