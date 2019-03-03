#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:56255822:6be9428dcf1efac685ccda081eae0fd9b0625c37; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:50287946:b8b2074e5b982e74590ef03ac8be2718f9d658bb EMMC:/dev/block/bootdevice/by-name/recovery 6be9428dcf1efac685ccda081eae0fd9b0625c37 56255822 b8b2074e5b982e74590ef03ac8be2718f9d658bb:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
