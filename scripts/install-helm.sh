#!/bin/bash
# Install latest stable version of helm 3
# Attribution
# https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3

curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
chmod 700 get_helm.sh

# Run the install script, and remove if complete
./get_helm.sh && rm -f get_helm.sh