#!/bin/bash -ex

BOARD_ID=arduino_mkrzero NAME=samd21_sam_ba_arduino_mkrzero make clean all
mv -v samd21_sam_ba_arduino_mkrzero.* ../mkrzero/

BOARD_ID=allwize_k2 NAME=samd21_sam_ba_allwize_k2 make clean all
mv -v samd21_sam_ba_allwize_k2.* ../allwizek2/

echo Done building bootloaders!

