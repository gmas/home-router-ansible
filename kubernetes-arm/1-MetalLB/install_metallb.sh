#! /bin/bash

kubectl apply -f ./metallb-namespace.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"

kubectl apply -f ./metallb.yaml
kubectl apply -f ./metallb-conf.yaml
