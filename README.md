# Gowiki-demo

Golang wiki web app with dockerize

## Docker

```bash
docker build . -t gowiki-demo
docker run -it --rm -p 8000:8000 gowiki-demo
```

http://localhost:8000


### Publish to docker hub

```bash
docker tag gowiki-demo:latest hanksudo/gowiki-demo:1.0.0
docker push hanksudo/gowiki-demo:1.0.0
```

https://hub.docker.com/r/hanksudo/gowiki-demo

## Start kubernetes pod

```bash
kubectl create -f pod.yaml
kubectl get pods
kubectl describe pod myapp-pod
kubectl delete pod myapp-pod
```

```bash
# method 1. forward port 
kubectl port-forward myapp-pod 8088:8000
open http://localhost:8088

# method 2. create service
kubectl expose pod myapp-pod --type=NodePort --name=myapp-pod-service
minikube service myapp-pod-service --url
```