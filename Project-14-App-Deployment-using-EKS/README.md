# Project 14: App Deployment using EKS

## Objective
Deploy an NGINX application on Kubernetes using Amazon Elastic Kubernetes Service (EKS) and expose it publicly.

## Tasks
1. Connect to an EKS cluster.
2. Deploy an NGINX application using Kubernetes.
3. Run two application replicas.
4. Expose the application through a public LoadBalancer Service.
5. Verify public access.

## Environment
- Cloud Provider: AWS
- Region: ap-south-1 (Mumbai)
- Kubernetes Platform: Amazon EKS
- Container Image: nginx
- Replicas: 2
- Service Type: LoadBalancer
- Application Port: 80

## EKS Cluster
The project used the existing `p14-eks-cluster` provided in the training environment. The training account restricted creation of new EKS clusters, so this project connected to the available cluster.

## Deployment Steps

### 1. Configure kubectl
```bash
aws eks update-kubeconfig --region ap-south-1 --name p14-eks-cluster
```

### 2. Verify the Kubernetes node
```bash
kubectl get nodes
```

### 3. Deploy NGINX
```bash
kubectl apply -f deployment.yaml
```

### 4. Verify deployment and pods
```bash
kubectl get deployments
kubectl get pods -o wide
```

Expected result: 2 replicas running.

### 5. Expose the application publicly
```bash
kubectl expose deployment nginx-app \
  --type=LoadBalancer \
  --name=nginx-service \
  --port=80 \
  --target-port=80
```

### 6. Get the public endpoint
```bash
kubectl get services
```

Open the assigned external DNS name in a web browser using HTTP.

### 7. Verify HTTP response
```bash
curl -I http://<LOADBALANCER-DNS>
```

Expected result: `HTTP/1.1 200 OK`.

## Result
The NGINX application was successfully deployed with two running replicas and exposed publicly through an AWS LoadBalancer. The public webpage displayed the NGINX welcome page, and the HTTP request returned `200 OK`.

## Project Files
- `deployment.yaml` - Kubernetes Deployment manifest.
- `service.yaml` - Kubernetes LoadBalancer Service configuration.
- `screenshots/` - Project execution and public-access evidence.

## Cleanup
After capturing the required evidence and pushing the project to GitHub, delete only the NGINX Service and Deployment created for this project. Do not delete the shared EKS cluster or its worker node.
