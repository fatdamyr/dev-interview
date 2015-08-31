#!/bin/bash
#

#Run this as the vagrant user
su - vagrant

#Add anything here that is needed specifically for the Sr. Java Developer Interview

#Download the POM file and seed the local maven repo with the needed dependencies
git clone https://github.com/fatdamyr/dev-interview-code.git
cd dev-interview-code
mvn clean package

#Clean up the solution code
cd ..
rm -rf dev-interview-code

#Go back to root
exit