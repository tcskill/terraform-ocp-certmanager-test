#!/usr/bin/env bash

KUBECONFIG=$(cat ./kubeconfig)

#wait for the deployments to finish
sleep 4m

kubectl rollout status deployment/cert-manager -n cert-manager
if [[ $? -ne 0 ]]; then
    echo "certmgr deployment failed with exit code $? in namespace cert-manager"
    exit 1
fi
