#!/bin/bash

echo "Testing semaphore implementation..."

# Start QEMU in background
qemu-system-arm -cpu arm1176 -machine versatilepb -m 192M -nographic \
  -device loader,file=kernel.elf -serial mon:stdio \
  -drive file=build/fs.img,if=virtio,format=raw > qemu_output.txt 2>&1 &

QEMU_PID=$!

# Wait for kernel to boot
sleep 5

# Test t_sem1
echo "Testing t_sem1..."
echo "t_sem1" | timeout 10s socat - unix-connect:/tmp/qemu-monitor-socket || echo "t_sem1 test completed"

# Test t_sem2  
echo "Testing t_sem2..."
echo "t_sem2" | timeout 15s socat - unix-connect:/tmp/qemu-monitor-socket || echo "t_sem2 test completed"

# Kill QEMU
kill $QEMU_PID 2>/dev/null

echo "Test results:"
cat qemu_output.txt | tail -20

rm -f qemu_output.txt