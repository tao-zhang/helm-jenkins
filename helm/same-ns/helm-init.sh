#!/usr/bin/env bash

kubectl create namespace tiller-world
kubectl create serviceaccount tiller --namespace tiller-world
kubectl create -f rbac-config.yaml
helm init --service-account tiller --tiller-namespace tiller-world
#helm install nginx --tiller-namespace tiller-world --namespace tiller-world
