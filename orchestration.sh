minikube delete
minikube start
eval $(minikube -p minikube docker-env)

docker build -t local-nginx srcs/Nginx/
docker build -t local-mysql srcs/MySQL/
docker build -t local-wordpress srcs/WordPress/
docker build -t local-phpmyadmin srcs/phpMyAdmin/
docker build -t local-influxdb srcs/InfluxDB/
docker build -t local-grafana srcs/Grafana/
docker build -t local-ftps srcs/FTPS/

# 1 - MetalLB Installation
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"

kubectl apply -f srcs/metallb-configmap.yaml

# 2 - Nginx / MySQL / WordPress
kubectl apply -f srcs/nginx-deplsvc.yaml
kubectl apply -f srcs/mysql-deplsvc.yaml
kubectl apply -f srcs/wordpress-deplsvc.yaml
kubectl apply -f srcs/phpmyadmin-deplsvc.yaml
kubectl apply -f srcs/influxdb-deplsvc.yaml
kubectl apply -f srcs/grafana-deplsvc.yaml
kubectl apply -f srcs/ftps-deplsvc.yaml

kubectl get pods
minikube start