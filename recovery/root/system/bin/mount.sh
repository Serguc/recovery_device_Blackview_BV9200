#!/sbin/sh

sleep 5

# Unmount
umount /system
umount /system_ext
umount /product
umount /mi_ext
umount /vendor
umount /vendor_dlkm
umount /odm_dlkm

# Mount system and vendor once to fix permissions
mount /dev/block/bootdevice/mapper/system /system
mount /dev/block/bootdevice/mapper/system_ext /system_ext
mount /dev/block/bootdevice/mapper/product /product
mount /dev/block/bootdevice/mapper/vendor /vendor
mount /dev/block/bootdevice/mapper/vendor_dlkm /vendor_dlkm
mount /dev/block/bootdevice/mapper/odm_dlkm /odm_dlkm

# Remount as read-write
mount -o remount,rw /system
mount -o remount,rw /system_ext
mount -o remount,rw /product
mount -o remount,rw /vendor
mount -o remount,rw /vendor_dlkm
mount -o remount,rw /odm_dlkm


# Unmount
#umount /system
#umount /system_ext
#umount /product
#umount /mi_ext
#umount /vendor

exit 0
