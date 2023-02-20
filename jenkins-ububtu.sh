#!/bin/bash

#Author  : O.S
#Date    : Feb 20 23
#Descr   : Installing jenkins on ubuntu

#System update
sudo apt-get update

#Installing java
sudo apt-get install openjdk-11-jdk -y
wget -q -o - https://pkg.jenkins.io.debian-stable/jenkins.io.key | sudo apt-key add -y
sudo apt-get update
sudo apt-get install jenkins -y 
sudo apt-get install git -y
sudo systemctl start jenkins 
sudo systemctl enable jenkins

