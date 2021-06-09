#!/bin/bash

# Install Azure CLI (instructions taken from https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)
pwsh -Command 'Set-PSRepository -Name 'PSGallery' -InstallationPolicy Trusted'
pwsh -Command 'Install-Module -Name Az -AllowClobber -Scope AllUsers'
