#!/bin/bash
################################################################################
##  File:  azcopy.sh
##  Team:  CI-Platform
##  Desc:  Installs AzCopy
################################################################################

# Install AzCopy
wget -O azcopy.tar.gz https://aka.ms/downloadazcopylinux64
tar -xf azcopy.tar.gz
rm azcopy.tar.gz
./install.sh

# Run tests to determine that the software installed as expected
echo "Testing to make sure that script performed as expected, and basic scenarios work"
if ! command -v azcopy; then
    echo "azcopy was not installed"
    exit 1
fi
