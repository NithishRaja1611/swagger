#!/bin/bash

echo "🚀 Deploying Kubernetes Manifests..."

kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
kubectl apply -f k8s/ingress.yaml

echo "✅ Deployment Complete."
