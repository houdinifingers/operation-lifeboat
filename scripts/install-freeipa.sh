#!/bin/bash

# Add the freeIPA repo to helm

helm repo add cocainefarm https://kube.cat/chartrepo/cocainefarm

# Install the helm chart

helm install my-freeipa-self-service cocainefarm/freeipa-self-service --version 1.0.0

# TODO: Determine if we need to store data persistently, with commands such as:
# --set persistence.enabled=true
# --set persistence.size=1Gi
# Determine ingress, with commands such as:
# --set ingress.enabled=true
# --set ingress.host=freeipa.mylocaldomain
# and whether we need any HTTPs certificates
