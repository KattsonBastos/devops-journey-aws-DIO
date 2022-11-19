#!/bin/bash

echo "Creating Images.."

docker build -t kattsonbastos/projeto-backend:1.0 ./backend/.

docker build -t kattsonbastos/database:1.0 ./database/.

echo "Pushing Images.."

docker push kattsonbastos/projeto-backend:1.0

docker push kattsonbastos/database:1.0

echo "Creating Cluster services.."
kubectl apply -f ./services.yml

echo "Creating deployments.."
kubectl apply -f ./deployment.yml