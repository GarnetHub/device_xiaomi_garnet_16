echo 'Starting to clone stuffs needed to build for garnet'

echo 'Cloning hardware'
rm -rf hardware/xiaomi && git clone https://github.com/MySelly/android_hardware_xiaomi_garnet hardware/xiaomi

echo 'Cloning display'
rm -rf hardware/qcom-caf/sm8450/display && git clone https://github.com/MySelly/hardware_qcom-caf_sm8450_display hardware/qcom-caf/sm8450/display

echo 'Cloning dolby'
rm -rf hardware/dolby && git clone https://github.com/MySelly/android_hardware_dolby -b 16.0 hardware/dolby

echo 'Cloning kernel'
rm -rf kernel/xiaomi/garnet && git clone https://github.com/GarnetHub/android_xiaomi_kernel_garnet -b 16.0 kernel/xiaomi/garnet

echo 'Cloning kernel modules'
rm -rf kernel/xiaomi/garnet-modules && git clone https://github.com/MySelly/android_kernel_xiaomi_garnet-modules -b lineage-23.0 kernel/xiaomi/garnet-modules

echo 'Cloning kernel devicetrees'
rm -rf kernel/xiaomi/garnet-devicetrees && git clone https://github.com/MySelly/android_kernel_xiaomi_garnet-devicetrees -b lineage-23.0 kernel/xiaomi/garnet-devicetrees

echo 'Cloning gapps'
rm -rf vendor/gapps && rm -rf vendor/gms && git clone https://gitlab.com/SenseiDEVLinux/android_vendor_gms_16 -b lineage-23.0 vendor/gms

echo 'Cloning process is completed, now its time for lunch'