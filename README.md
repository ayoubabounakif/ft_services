# 42cursus-ft_services

**1 - Kubernetes Tutorial:**
Nana: https://www.youtube.com/watch?v=X48VuDVv0do<br/>
Important Kuberetes Concepts: https://kubernetes.io/docs/concepts/<br/>

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
> *FTPS:* https://wiki.alpinelinux.org/wiki/FTP#vsftpd_Configuration<br/>
> *PASV:* https://www.webopedia.com/definitions/pasv/<br/>
> *Reverse Proxy (Theory):* https://www.nginx.com/resources/glossary/reverse-proxy-vs-load-balancer/<br/>
> *Reverse Proxy (Execution):* https://www.linode.com/docs/guides/use-nginx-reverse-proxy/<br/>

**4 - StackOverFlow:**<br/>
> *Bash:* https://stackoverflow.com/questions/43801947/bash-get-return-value-of-a-command-and-exit-with-this-value<br/>
> *InfluxDB -p 8088:* https://stackoverflow.com/questions/40844762/influxdb-port-8088<br/>

**5 - Digital Ocean:**<br/>
> *FTPS:* https://www.digitalocean.com/community/tutorials/how-to-set-up-vsftpd-on-ubuntu-12-04<br/>
> *FTPS SSL:* https://www.digitalocean.com/community/tutorials/how-to-configure-vsftpd-to-use-ssl-tls-on-an-ubuntu-vps<br/>
> *FTPS:* https://www.digitalocean.com/community/questions/cannot-connect-to-ftp-through-filezilla<br/>

**6 - Basic Docker Commands:**
```
# Build a docker image from a Dockerfile
docker build -t {IMAGE_NAME} {DOCKERFILE_DIR}<br/>
# Start an instance of a docker image
docker run -it -p {SPECIFY_PORT} -d {IMAGE_NAME}<br/>
(-it stands for --> interactive terminal)<br/>
(-d stands for ---> detached mode)<br/>
# See all images
docker images<br/>
# Start a container
docker start {CONTAINER ID}<br/>
# See running containers
docker ps<br/>
# See unrunning container
docker ps -a<br/>
# Get a shell in a container
docker exec -it {CONTAINER ID} sh<br/>
# Stop a container
docker kill {CONTAINER ID}<br/>
# Delete all unused Docker images and cache
docker system prune<br/>
```
**7 - Managing Pods With Kubernetes:**
```
# Create a pod from a YAML file
kubectl create -f {FILE_NAME.yaml}<br/>
# Delete a pod
kubectl delete deployment {DEPLOYMENT}
kubectl delete service {SERVICE}<br/>
# Get a shell in a pod
kubectl exec -it <POD_NAME> -- /bin/sh<br/>
# Restart a deployment
kubectl rollout restart deployment {NAME}<br/>
# Launch minikube dashboard
minikube dashboard<br/>
# Get cluster external IP
minikube ip<br/>
# Reset Minikube VM
minikube delete<br/>
```

**Extra - For more information about the project and more ressources, visit Jean-Xavierre's github:**
> https://github.com/Jean-xavierr/42Ft_services/blob/master/README.md<br/>
