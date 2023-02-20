#!/bin/bash

#Author  : O.S
#Date    : Feb 20 2023
#Descr   : Installing docker on centOS

#Removing old version of docker if present
sudo yum remove docker docker-common docker-selinux docker-engine

#Now installing required packages
sudo yum install -y yum-utils device-mapper-persistent-date lvm2

#Now installing docker repositories
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo 

#Now installing docker-ce
yum install docker-ce -y

#Starting and enabling docker
sudo systemctl start docker
sudo systemctl enable docker
