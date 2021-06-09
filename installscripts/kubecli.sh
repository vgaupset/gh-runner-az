#!/bin/bash

#Install Kube CLI with Azure CLI
az aks install-cli

# Run tests to determine that the software installed as expected
echo "Testing to make sure that script performed as expected, and basic scenarios work"

if ! command -v /usr/local/bin/kubecli; then
    echo "kubecli was not installed"
fi