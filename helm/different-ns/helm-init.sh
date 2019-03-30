#!/usr/bin/env bash

kubectl create namespace jenkins
kubectl create namespace tiller
kubectl create serviceaccount tiller --namespace tiller
kubectl create -f rbac-config.yaml
helm init --service-account tiller --tiller-namespace tiller
#export TILLER_NAMESPACE=tiller
#helm install -f values.yaml --name jenkins --tiller-namespace tiller --namespace jenkins stable/jenkins
