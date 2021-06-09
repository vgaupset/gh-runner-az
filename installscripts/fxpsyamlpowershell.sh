#!/bin/bash

# Install FXPSYaml
pwsh -Command 'Set-PSRepository -Name 'PSGallery' -InstallationPolicy Trusted'
pwsh -Command 'Install-Module -Name FXPSYaml -Force'