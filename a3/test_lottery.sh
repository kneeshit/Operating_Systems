#!/bin/bash

# Test script for lottery scheduler
echo "Testing xv6 lottery scheduler..."

# Start QEMU with a timeout and send commands
timeout 60 qemu-system-arm -M versatilepb -m 128 -cpu arm1176 -nographic -kernel kernel.elf << 'EOF'
ps
pinfo
lotterytest
ps
EOF

echo "Test completed."
