#!/bin/sh

# Start minikube
echo "Start Minikube"
minikube start

# docker env
echo "Setting Docker environment..."
eval $(minikube docker-env)

# Build image (increment Tag Version as Appropriate)
echo "Building Docker Image..."
docker build -t pyworld:0.0.3 .

# Run in minikube using the local image 
echo "Running container"
kubectl create deployment pyworld --image=pyworld:0.0.3

# Expose the deployment
echo "Exposing Deployment"
kubectl expose deployment pyworld --port=3050 --target-port=3000 --name=pyworld --type=NodePort
sleep 5

# Verify the Service and Pods
echo "Confirming pods and Service deployed..."
kubectl get pods

sleep 2

kubectl get svc

# Get url
echo "Application URL:"
#minikube service pyworld
minikube service pyworld --url
sleep 10

# Cleanup
echo "Use below, Commands to Cleanup once you complete with the tests"
sleep 1
echo "kubectl delete deployments,svc pyworld"
