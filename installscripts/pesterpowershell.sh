#!/bin/bash
################################################################################
##  File:  pesterpowershell.sh
##  Desc:  Installed Pester module
################################################################################


# Install Pester module
pwsh -Command 'Set-PSRepository -Name 'PSGallery' -InstallationPolicy Trusted'
pwsh -Command 'Install-Module -Name Pester -Force -SkipPublisherCheck'
