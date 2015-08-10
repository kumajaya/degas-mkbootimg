
echo unpack $1 to $2
mkdir $2
tools/degas-unpackbootimg -i $1 -o $2
mkdir -p $2/ramdisk
cd $2/ramdisk/
gunzip -c ../$2.img-ramdisk.gz | cpio -i
