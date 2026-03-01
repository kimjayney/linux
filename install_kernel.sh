sudo make O=out modules_install

sudo cp out/arch/arm/boot/zImage /boot/kernel7.img


sudo cp out/arch/arm/boot/dts/*.dtb /boot/ && \
sudo cp out/arch/arm/boot/dts/overlays/*.dtb* /boot/overlays/ && \
sudo cp arch/arm/boot/dts/overlays/README /boot/overlays/ 
