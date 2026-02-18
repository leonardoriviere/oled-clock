#!/bin/bash
# Deploy OLED Clock to LG TV
set -e

cd "$(dirname "$0")"

echo "Packaging..."
ares-package webos/ -o . 2>/dev/null

echo "Installing..."
ares-install --device tv com.leonardoriviere.oledclock_1.0.0_all.ipk

echo "Launching..."
ares-launch --device tv com.leonardoriviere.oledclock

echo "Done!"
