#!/bin/sh

minikube delete
minikube start --vm-driver=virtualbox --extra-config=apiserver.service-node-port-range=1-35000
minikube addons enable metrics-server
minikube addons enable dashboard
minikube dashboard &

eval $(minikube docker-env)
docker pull metallb/speaker:v0.8.2
docker pull metallb/controller:v0.8.2
minikube addons enable metallb
kubectl apply -f ./srcs/metallb_conf.yaml

docker build -t image_nginx ./srcs/nginx
docker build -t image_mysql ./srcs/mysql
docker build -t image_phpma ./srcs/php
docker build -t image_wordpress ./srcs/wordpress
docker build -t image_ftps ./srcs/ftps
docker build -t image_influxdb ./srcs/influxdb
docker build -t image_grafana ./srcs/grafana
docker build -t image_telegraf ./srcs/telegraf

kubectl apply -f  ./srcs/nginx_deploy_service.yaml
kubectl apply -f  ./srcs/mysql_deploy_service.yaml
kubectl apply -f  ./srcs/phpma_deploy_service.yaml
kubectl apply -f  ./srcs/wordpress_deploy_service.yaml
kubectl apply -f  ./srcs/ftps_deploy_service.yaml
kubectl apply -f  ./srcs/influxdb_deploy_service.yaml
kubectl apply -f  ./srcs/grafana_deploy_service.yaml
kubectl apply -f  ./srcs/telegraf_deploy_service.yaml

#kubectl delete -f  ./srcs/nginx_deploy_service.yaml
#kubectl delete -f  ./srcs/mysql_deploy_service.yaml
#kubectl delete -f  ./srcs/phpma_deploy_service.yaml
#kubectl delete -f  ./srcs/wordpress_deploy_service.yaml
#kubectl delete -f  ./srcs/ftps_deploy_service.yaml
#kubectl delete -f  ./srcs/influxdb_deploy_service.yaml
#kubectl delete -f  ./srcs/grafana_deploy_service.yaml
#kubectl delete -f  ./srcs/telegraf_deploy_service.yaml
