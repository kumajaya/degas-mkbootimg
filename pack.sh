
echo pack $1 to $2
tools/mkbootfs $1/ramdisk | tools/minigzip > $1/$1.img-ramdisk-new.gz
tools/degas-mkbootimg --kernel $1/$1.img-zImage --ramdisk $1/$1.img-ramdisk-new.gz --dt $1/$1.img-dt --signature $1/$1.img-signature -o $2
