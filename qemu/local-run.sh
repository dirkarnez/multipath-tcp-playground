qemu-system-x86_64 \
  -enable-kvm \
  -smp 4 -m 4G \
  -kernel ./bzImage \
  -initrd ./initrd.img \
  -append "root=/dev/ram0 console=ttyS0" \
  -nographic \
  # 第一張虛擬網卡（模擬網徑 A）
  -netdev tap,id=net0,ifname=tap0,script=no,downscript=no \
  -device virtio-net-pci,netdev=net0,mac=52:54:00:12:34:56 \
  # 第二張虛擬網卡（模擬網徑 B）
  -netdev tap,id=net1,ifname=tap1,script=no,downscript=no \
  -device virtio-net-pci,netdev=net1,mac=52:54:00:12:34:57
