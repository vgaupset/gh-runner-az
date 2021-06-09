#!/bin/bash

# Install Pester module
pwsh -Command 'Set-PSRepository -Name 'PSGallery' -InstallationPolicy Trusted'
pwsh -Command 'Install-Module -Name Pester -Force -SkipPublisherCheck'
