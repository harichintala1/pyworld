# PYWORLD - Python based Hello-World Microservice

Source code has a basic Python code that exposes service endpoint (port:3000) with 'Hello World' page,

Python Requirements:
- flask
- flask-restful

## How to Deploy

You can use either of 2 methods,

### Using Template

We have pyworld.yaml that consists of deployment and svc template, it deploys a pyworld program into 2 replicas (Load Balanced):

To deploy using Template,

```bash
kubectl create -f templates/pyworld.yaml
```

To Clean the Template Deployments,

```bash
kubectl delete -f templates/pyworld.yaml
```

### Bash Script

You could also test this deployment by sourcing local docker image, by running bash script from the root of this repository,

```bash
./pyworld.sh
```


To Cleanup:  
```bash
kubectl delete deployments,svc al-helloworld
```

## Requirements
- Docker
- Minikube
- Python
