#!/bin/bash

# Build script for BastardKB Charybdis 3x5 Split

echo "Building LEFT side..."
make bastardkb/charybdis/3x5:default:uf2-split-left

if [ $? -eq 0 ]; then
    echo "✅ Left side built successfully."
else
    echo "❌ Left side build failed."
    exit 1
fi

echo "----------------------------------------"

echo "Building RIGHT side..."
make bastardkb/charybdis/3x5:default:uf2-split-right

if [ $? -eq 0 ]; then
    echo "✅ Right side built successfully."
else
    echo "❌ Right side build failed."
    exit 1
fi

echo "----------------------------------------"
echo "Build complete. UF2 files are in the current directory (or qmk_firmware root)."
