#!/bin/bash

# Version to install
if [ $# -ne 1 ]; then
    echo "Syntax: $0 <version>"
    exit
fi
VERSION=$1

# Configuration
PIO_BASE=$HOME/.platformio
PIO_PACKAGE=$PIO_BASE/packages/framework-arduinosam
PIO_PLATFORM=$PIO_BASE/platforms/atmelsam

# Check folders
if [ ! -d $(pwd)/$VERSION ]; then
    echo "Version folder does not exist: $(pwd)/$VERSION"
    exit
fi
if [ ! -d $PIO_PACKAGE ]; then
    echo "Package folder does not exist: $PIO_PACKAGE"
    exit
fi
if [ ! -d $PIO_PLATFORM ]; then
    echo "Platform folder does not exist: $PIO_PLATFORM"
    exit
fi

# force atmelsam install
pio run -sd dummy

# boards.txt
ln -sf $(pwd)/$VERSION/boards.txt $PIO_PACKAGE/boards_allwize.txt

# variants
ln -sf $(pwd)/$VERSION/variants/allwizek2 $PIO_PACKAGE/variants/

# boards.json
ln -sf $(pwd)/allwizek2.json $PIO_PLATFORM/boards/allwizek2.json

# exit
echo "AllWize K2 support installed!"
