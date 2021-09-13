# :white_check_mark: Services
## Description

You will discover cluster deployment and management with Kubernetes. You are going to do what is called "clustering".
The project consists of implementing an infrastructure with different services. For this, we will use ```Kubernetes```, therefore, we will install a cluster that groups several service containers. Each service works in a dedicated container, and the containers have the same name as the associated service. For performance reasons the containers are built on ```Alpine Linux```. To complete the project we need the next components:

### Components

- ```MetalLB```: Is a Load Balancer that manages external access to its services. It is the only entrance to the cluster.

- ```Nginx```: Is an HTTP and reverse proxy server, a mail proxy server, and a generic TCP/UDP proxy server.

- ```vsFTPd```: [very secure FTP daemon] Is an FTP server for Unix-like system, including Linux.

- ```MariaDB```: Is a database management system derived from MySQL with a GPL (General Public License).

- ```Wordpress```: Is a CMS(Content Managament System) focused on the creation of any type of web page.

- ```phpMyAdmin```: Is a free software tool intended to handle the administration of MySQL over the web.

- ```InfluxDB```: Is a open-source time series database developed by InfluxData

- ```Telegraf```: Is the open-source server agent to help you collect metrics from your stacks, sensors and systems.

- ```Grafana```: Is a open-source graphing and analisys software. Allows you to query, view, alert, and explore your metrics from Time Series Database Storage(TSDB)

### Technologies

- ```Docker```: Is a open-source project that automates the deployment of applications within software containers.

- ```Kubernetes```: Is an open-source system for automating the deployment, scaling, and handling of containerized applications.

- ```Minikube```: Is a tool that lets you run kubernetes locally. minikube runs a single-node kubernetes cluster on your personal computer.

- ```VirtualBox```: Is virtualization software for x86/amd64 architectures.

- ```Alpine Linux```: Is a Linux distribution based on musl and BusyBox, which aims to be lightweigth and secure by default.


### What are Docker and Kubernetes 🐳

Docker is a software that allow users to run lightweight virtual machines. You can build Docker "containers" with a Dockerfile. A container is a single lightweight virtual machine running an os, with its own memory space and storage. It is created on an image, which is a template with preconfigured software. A container differs from a virtual machine because it uses the same kernel as the host computer, whereas a virtual machine has its own kernel. Containers are faster and lighter.

If you're running big apps that needs lot of containers/services, such as a database, web servers, monitoring tools, ftp, ssh..., you'll need a way to properly manage multiple Docker containers. It's not an easy task; you need to restart automatically crashed containers, to share data between them, to make sure some are fetchable from outside and some not... That's what Kubernetes does.

In Kubernetes, you have:

Deployment: an object that runs and manages N instances of a given Docker image. For example, you can have a deployment that will launch and manage 10 Apache servers.
Service: an object that links a deployment externally or to other containers. For exemple, a deployment that will link the IP 192.168.0.1 to the 10 Apache servers and pick the one that has the least work load.
Pod: A pod is a running instance of a deployment, you can run a shell into it. It has its own IP and its own memory space.
All the above objects are described in YAML files.

Minikube is the software that we use to create a virtual machine that runs Kubernetes, and insures compatibility with VirtualBox. It features many tools, such as a dashboard to see how are you'r pods going.
