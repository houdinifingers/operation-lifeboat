#!/usr/bin/env bash

# This script installs bitwarden_rs with Helm

helm repo add itscontained https://charts.itscontained.io
helm install \
--name password-vault \
--version 0.1.4 \
--set replicas=1
--set service.ports.http=80 \
--set service.ports.websocket=3012 \
--set ingress.path=/bitwarden \
--set persistence.enabled=true \
--set persistence.size=1Gi \
cronce/bitwarden-rs
