#!/bin/bash

# This installation is intended for Ubuntu distributions, and has been taken
# from the standard microk8s installation page found at:
# https://ubuntu.com/kubernetes/install#single-node

# Install snapd

sudo apt -y update
sudo apt -y upgrade
sudo apt -y install snapd

# Install the microk8s snap

sudo snap install microk8s --classic

# Wait for microk8s to be ready

microk8s.status --wait-ready

# Make the kubectl installation a global alias

snap alias microk8s.kubectl kubectl

# Store the kubernetes config in the current user's home directory

mkdir $HOME/.kube

microk8s.kubectl config view --raw > $HOME/.kube/config

# Test the configuration

kubectl get pods -A
