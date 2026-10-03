### AnyKernel3 Ramdisk Mod Script
## Mayon Kernel for Xiaomi Redmi Note 10 Pro (sweet/sweetin)

### AnyKernel setup
# global properties
properties() { '
kernel.string=Mayon Kernel for Xiaomi sweet by jksalcedo
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=sweet
device.name2=sweetin
supported.versions=
supported.patchlevels=
supported.vendorpatchlevels=
'; }

### AnyKernel install
# boot shell variables
block=/dev/block/bootdevice/by-name/boot;
is_slot_device=0;
ramdisk_compression=auto;
patch_vbmeta_flag=auto;

# import functions/variables and setup patching
. tools/ak3-core.sh;

## AnyKernel boot install
dump_boot;

# write new kernel
write_boot;
## end boot install
