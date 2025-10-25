#!/bin/bash

# Test script for threading functionality
echo "Testing xv6 threading implementation..."

# Create a expect-like input for qemu
cat << EOF | timeout 30s qemu-system-arm -M versatilepb -m 128 -nographic -kernel kernel.elf -drive file=fs.img,if=sd,format=raw 2>/dev/null
t_threads
EOF

echo "Test completed."