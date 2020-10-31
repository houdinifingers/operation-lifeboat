#!/bin/bash

# Pull iMartyn's git repo

git clone https://github.com/iMartyn/helm-samba4

# Make changes to the samba.users stanza, adding in the users we need
# samba:
#   users:
#   - username: example1
#     password: examplepassword1
#   - username: example2
#     password: examplepassword2

# Install the helm chart

helm install samba helm-samba4/samba4/

# NOTE: lots of options. Let's set the ones we need


