#!/usr/bin/env bash

kubectl create -f rbac-config.yaml
helm init --service-account tiller
