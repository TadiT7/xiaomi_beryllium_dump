#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:45655374:9cf75ad61934f599ed7c099da5ec4adb764909ae; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:40764746:aa17df518404799336aa365e3bb8c3f52c30d1b3 EMMC:/dev/block/bootdevice/by-name/recovery 9cf75ad61934f599ed7c099da5ec4adb764909ae 45655374 aa17df518404799336aa365e3bb8c3f52c30d1b3:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
