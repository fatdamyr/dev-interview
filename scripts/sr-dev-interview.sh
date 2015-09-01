#!/bin/bash
#

#Add anything here that is needed specifically for the Sr. Java Developer Interview

#Download the POM file and seed the local maven repo with the needed dependencies
git clone https://github.com/fatdamyr/dev-interview-solutions.git
cd dev-interview-solutions
mvn clean package

#Clean up the solution code
cd ..
rm -rf dev-interview-solutions

#Move the maven repository to the
mv ~root/.m2 ~vagrant/.m2
chown -R vagrant:vagrant ~vagrant/.m2