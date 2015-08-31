#!/bin/bash
#
# Setup the the box. This runs as root

apt-get -y update

apt-get -y install curl

# You can install anything you need here.

#Install Java
apt-get -y install openjdk-8-jdk

#Install Ant
curl http://mirror.cogentco.com/pub/apache//ant/binaries/apache-ant-1.9.6-bin.tar.gz > apache-ant-1.9.6-bin.tar.gz
tar xvf apache-ant-1.9.6-bin.tar.gz
mv apache-ant-1.9.6 /usr/local/apache-ant
rm apache-ant-1.9.6-bin.tar.gz
ln -s /usr/local/apache-ant/bin/ant /usr/bin/ant
	
#Install Maven
curl http://archive.apache.org/dist/maven/maven-3/3.3.3/binaries/apache-maven-3.3.3-bin.tar.gz > apache-maven-3.3.3-bin.tar.gz
tar xvf apache-maven-3.3.3-bin.tar.gz
mv apache-maven-3.3.3 /usr/local/apache-maven
rm apache-maven-3.3.3-bin.tar.gz
ln -s /usr/local/apache-maven/bin/mvn /usr/bin/mvn
	
#Install KDE Desktop
apt-get -y install kde-plasma-desktop

#Install Eclipse
curl https://eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/mars/R/eclipse-jee-mars-R-linux-gtk.tar.gz&mirror_id=1135 > eclipse.tar.gz
tar xvf eclipse.tar.gz
mv eclipse /usr/local/eclipse
rm eclipse.tar.gz
