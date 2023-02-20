#!/bin/bash

#Author  : O.S
#Date    : Feb 20 2023
#Descr   : Intalling jenkins on centos

#Firstly, update server
sudo yum update -y

#Installing java
sudo yum install java-1.8.0-openjdk-devel
sleep 3

#Enabling jenkins repository
curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo

#Adding the just enabled repo to your system 
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key

#Installing latest jenkins package after repo is enabled
sudo yum install jenkins -y

#Starting jenkins after download is complete
sudo systemsctl start jenkins

#Verifying jenkins status after a successful download
systemctl status jenkins
sleep 3

#Setting up firewall
sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp
sudo firewall-cmd --reload


