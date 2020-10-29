#!/bin/bash
# Install latest stable version of helm 3

curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh
# ATTRIBUTION #
# https://helm.sh/docs/intro/install/

# Remove helm setup script
rm -f get_helm.sh
