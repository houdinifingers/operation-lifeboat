#!/usr/bin/env bash

# Install Helm with wget and tar then clean up.

wget https://get.helm.sh/helm-v3.0.2-linux-amd64.tar.gz
tar xvf helm-v3.0.2-linux-amd64.tar.gz
sudo mv linux-amd64/helm /usr/local/bin/
rm helm-v3.0.2-linux-amd64.tar.gz
rm -rf linux-amd64

# use --set foo=bar multiple times to set kv pairs
