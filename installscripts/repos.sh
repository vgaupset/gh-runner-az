#!/bin/bash
################################################################################
##  File:  repos.sh
##  Team:  CI-Platform
##  Desc:  Installs official Microsoft package repos for the distribution
################################################################################

LSB_RELEASE=$(awk -F "=" 'FNR == 2 {print $2}' /etc/lsb-release)
echo $LSB_RELEASE
echo https://packages.microsoft.com/config/ubuntu/$LSB_RELEASE/packages-microsoft-prod.deb
# Install Microsoft repository
wget https://packages.microsoft.com/config/ubuntu/$LSB_RELEASE/packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb
apt-get update

# Install Microsoft GPG public key
curl -L https://packages.microsoft.com/keys/microsoft.asc | apt-key add -