#!/vendor/bin/sh
if ! applypatch --check EMMC:/dev/block/by-name/recovery$(getprop ro.boot.slot_suffix):69009408:40af1d8b3f5580548bc9f4150c78bac512a93d73; then
  applypatch \
          --patch /vendor/recovery-from-boot.p \
          --source EMMC:/dev/block/by-name/boot$(getprop ro.boot.slot_suffix):61865984:885e92de35e41b8bc60e24dfff6bdebb5a79b02d \
          --target EMMC:/dev/block/by-name/recovery$(getprop ro.boot.slot_suffix):69009408:40af1d8b3f5580548bc9f4150c78bac512a93d73 && \
      (/vendor/bin/log -t install_recovery "Installing new recovery image: succeeded" && setprop vendor.ota.recovery.status 200) || \
      (/vendor/bin/log -t install_recovery "Installing new recovery image: failed" && setprop vendor.ota.recovery.status 454)
else
  /vendor/bin/log -t install_recovery "Recovery image already installed" && setprop vendor.ota.recovery.status 200
fi

