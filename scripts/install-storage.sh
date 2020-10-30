#!/bin/bash

# Inspired by: https://rancher.com/docs/k3s/latest/en/storage/
# Quote:
# K3s comes with Rancher’s Local Path Provisioner and
# this enables the ability to create persistent volume claims
# out of the box using local storage on the respective node.

# Make a local directory to mount to:

mkdir /k3s-storage

echo "In order to use the local path provisioner, please set the storageClass name as 'local-path' when deploying helm charts."
echo "Before deploying a helm chart that you want to include persistent storage, "
echo "please create a directory within /k3s-storage for that application,"
echo "and ensure your volume mounts point to that directory."

# Create the PersistentVolumeClaim in Kubernetes

#cat <<EOF | kubectl apply -f -
#apiVersion: v1
#kind: PersistentVolumeClaim
#metadata:
#  name: local-path-pvc
#  namespace: default
#spec:
#  accessModes:
#    - ReadWriteOnce
#  storageClassName: local-path
#  resources:
#    requests:
#      storage: 10Gi
#EOF

# To use this in further deployments, refer to these values:
#  volumes:
#  - name: <NAME>
#    persistentVolumeClaim:
#      claimName: local-path-pvc
