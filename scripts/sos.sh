#!/bin/bash

# This script installs helm

version=$(curl https://github.com/helm/helm/releases/latest | awk -F '/' '{print $8}' | cut -d "\"" -f 1)

cd /tmp

wget "https://get.helm.sh/helm-${version}-linux-amd64.tar.gz" -O helm.tar.gz
tar -zxvf helm.tar.gz
mv linux-amd64/helm /usr/local/bin/helm
