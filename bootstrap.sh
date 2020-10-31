#!/usr/bin/env bash
# This file is used for helm installs of various lifeboat services
# This script expects only one parameter --domain-name by default

# use --set foo=bar multiple times to set kv pairs

# install free IPA

# install bitwarden

helm install -f install-bitwarden-rs/values.yaml install-bitwarden-rs


