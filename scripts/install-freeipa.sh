#!/bin/bash

# Add the freeIPA repo to helm

helm repo add cocainefarm https://kube.cat/chartrepo/cocainefarm

# Install the helm chart

helm install my-freeipa-self-service cocainefarm/freeipa-self-service --version 1.0.0
