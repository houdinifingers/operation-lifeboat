# install bitwarden rs as a password manager

#!/bin/bash

for i in "$@"
do
case $i in
    --admin-token=*)
    ADMIN_TOKEN="${i#*=}"
    shift # past argument=value
    ;;
    --domain=*)
    DOMAIN="${i#*=}"
    shift # past argument=value
    ;;
    --smtp-host=*)
    SMTP_HOST="${i#*=}"
    shift # past argument=value
    ;;
    --smtp-from=*)
    SMTP_FROM="${i#*=}"
    shift # past argument=value
    ;;
    --smtp-from-name=*)
    SMTP_FROM_NAME="${i#*=}"
    shift # past argument=value
    ;;
    --smtp-port=*)
    SMTP_PORT="${i#*=}"
    shift # past argument=value
    ;;
    --smtp-ssl=*)
    SMTP_SSL="${i#*=}"
    shift # past argument=value
    ;;
    --invitations-allowed=*)
    INVITATIONS_ALLOWED="${i#*=}"
    shift # past argument=value
    ;;
    --default)
    DEFAULT=YES
    shift # past argument with no value
    ;;
    *)
          # unknown option
    ;;
esac
done

# clone bitwarden-k8s repo
git clone https://github.com/cdwv/bitwarden-k8s

# sed commands

cd bitwarden-k8s
helm install ./chart/bitwarden-k8s
# ATTRIBUTION
# https://github.com/cdwv/bitwarden-k8s
