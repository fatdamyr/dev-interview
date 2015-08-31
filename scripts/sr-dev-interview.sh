#!/bin/bash
#

#Run this as the vagrant user
su - vagrant

#Add anything here that is needed specifically for the Sr. Java Developer Interview

#Download the POM file and seed the local maven repo with the needed dependencies
curl -L https://github.com/fatdamyr/dev-interview-code/archive/master.zip > master.zip
unzip master.zip
cd dev-interview-code-master
mvn clean package

#Clean up the solution code
cd ..
rm -rf dev-interview-code
rm master.zip

#Go back to root
exit