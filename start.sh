#!/bin/bash
# bash Call
# sudo bash {PATH}/deploy.sh 8080 spring-boot-jenkins

# Field
PROJECT_NAME=springmyapp

PROJECT_PATH=/var/lib/jenkins/workspace/$PROJECT_NAME/target
JAR_FILE=$PROJECT_PATH/demodock-springboot.jar
TMP_PATH_NAME=/tmp/$PROJECT_NAME-pid

sudo echo " "
sudo nohup java -jar $JAR_FILE /tmp 2>> /dev/null >> /dev/null &
sudo echo "java -jar $JAR_FILE /tmp 2>> /dev/null >> /dev/null &"

sudo echo $! > $TMP_PATH_NAME
sudo echo "RUN"