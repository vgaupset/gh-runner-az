#!/bin/bash

# install azure devops Cli extension
az extension add -n azure-devops

# check to determine if extension was installed or not
if [ $? -eq 0 ]
then
    echo "azure DevOps Cli extension was installed"
else
    echo "azure DevOps Cli extension was not installed"
    exit 1
fi
