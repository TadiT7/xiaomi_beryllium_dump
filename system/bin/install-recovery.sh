#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:50492750:8ab20e962c404285485eaae83dc09e9d4c2c7dcf; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:45593930:ece0395f6ad977515a83dfde0b4d6eea755dbbed EMMC:/dev/block/bootdevice/by-name/recovery 8ab20e962c404285485eaae83dc09e9d4c2c7dcf 50492750 ece0395f6ad977515a83dfde0b4d6eea755dbbed:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
