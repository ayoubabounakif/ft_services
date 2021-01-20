# 42cursus-ft_services

**1 - Kubernetes Tutorial:**
https://www.youtube.com/watch?v=X48VuDVv0do

**2 - Kubernetes YAML File Explained - Deployment and Service:**
https://www.youtube.com/watch?v=qmDzcu5uY1I

**3 - Extra Ressources:**<br/>
> *MySQL:* https://linuxize.com/post/mysql-remote-access/<br/>
> *MySQL:* https://linuxize.com/post/how-to-show-databases-in-mysql/<br/>
> *Mysql:* https://gridscale.io/en/community/tutorials/mysql-datenbank-erstellen-loeschen/#:~:text=To%20do%20delete%20a%20database,database%20you%20want%20to%20delete.<br/>
> *MetalLB Installation:* https://metallb.universe.tf/installation/<br/>
> *MetalLB Configuration:* https://metallb.universe.tf/configuration/<br/>
> ~~Supervisor: http://supervisord.org/configuration.html~~<br/>
> *Grafana:* https://grafana.com/docs/grafana/latest/getting-started/getting-started/<br/>

**4 - StackOverFlow:**<br/>
> *Bash:* https://stackoverflow.com/questions/43801947/bash-get-return-value-of-a-command-and-exit-with-this-value<br/>
> *InfluxDB -p 8088:*https://stackoverflow.com/questions/40844762/influxdb-port-8088<br/>

**5 - Basic Docker Commands:**
```
# Build a docker image from a Dockerfile
docker build -t {IMAGE_NAME} {DOCKERFILE_DIR}
# Start an instance of a docker image
docker run -it -p {SPECIFY_PORT} -d {IMAGE_NAME}
(-it stands for --> interactive terminal)
(-d stands for ---> detached mode)
# See all images
docker images
# Start a container
docker start {CONTAINER ID}
# See running containers
docker ps
# See unrunning container
docker ps -a
# Get a shell in a container
docker exec -it {CONTAINER ID} sh
# Stop a container
docker kill {CONTAINER ID}
# Delete all unused Docker images and cache
docker system prune
```
**6 - Managing Pods With Kubernetes:**
```
# Create a pod from a YAML file
kubectl create -f {FILE_NAME.yaml}
# Delete a pod
kubectl delete deployment {DEPLOYMENT}
kubectl delete service {SERVICE}
# Get a shell in a pod
kubectl exec -it <POD_NAME> -- /bin/sh
# Restart a deployment
kubectl rollout restart deployment {NAME}
# Launch minikube dashboard
minikube dashboard
# Get cluster external IP
minikube ip
# Reset Minikube VM
minikube delete
```
