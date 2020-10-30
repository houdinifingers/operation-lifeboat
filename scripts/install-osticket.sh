#!/bin/bash

# Pull the chart from the git repo (might need to download as a zip instead)

git clone https://github.com/unaHm/osticket-helm.git

# Install the chart downloaded

helm install osticket ./osticket-helm/

# Set variables
