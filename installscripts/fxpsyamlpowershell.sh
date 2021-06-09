#!/bin/bash
################################################################################
##  File:  fxpsyamlpowershell.sh
##  Team:  CI-Platform
##  Desc:  Installed Azure PowerShell
################################################################################


# Install FXPSYaml
pwsh -Command 'Set-PSRepository -Name 'PSGallery' -InstallationPolicy Trusted'
pwsh -Command 'Install-Module -Name FXPSYaml -Force'