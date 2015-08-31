#!/bin/bash
#
# Setup the the box. This runs as root

apt-get -y update

apt-get -y install curl

# You can install anything you need here.

#Install Ant
wget http://mirror.cogentco.com/pub/apache//ant/binaries/apache-ant-1.9.6-bin.tar.gz && \
	tar xvf apache-ant-1.9.6-bin.tar.gz && \
	mv apache-ant-1.9.6 /usr/local/apache-ant && \
	rm apache-ant-1.9.6-bin.tar.gz && \
	ln -s /usr/local/apache-ant/bin/ant /usr/bin/ant
	
#Install Maven
wget http://archive.apache.org/dist/maven/maven-3/3.2.5/binaries/apache-maven-3.2.5-bin.tar.gz && \
	tar xvf apache-maven-3.2.5-bin.tar.gz && \
	mv apache-maven-3.2.5 /usr/local/apache-maven && \
	rm apache-maven-3.2.5-bin.tar.gz && \
	ln -s /usr/local/apache-maven/bin/mvn /usr/bin/mvn
	
#Install KDE Desktop
sudo apt-get -y install kde-plasma-desktop

#Install Eclipse

