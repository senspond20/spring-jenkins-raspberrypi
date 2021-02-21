#!/bin/bash
# bash Call
# sudo bash {PATH}/deploy.sh 8080 spring-boot-jenkins

# Field
PROJECT_NAME=springmyapp

PROJECT_PATH=/var/lib/jenkins/workspace/$PROJECT_NAME/target
JAR_FILE=$PROJECT_PATH/demodock-springboot.jar
TMP_PATH_NAME=/tmp/$PROJECT_NAME-pid



sudo echo " "
sudo echo "Stoping process on port: $SERVER_PORT"
sudo fuser -n tcp -k $SERVER_PORT # tcp $serverPort에 해당하는 port를 Kill함.

if [ -f $TMP_PATH_NAME ]; then
    sudo rm $TMP_PATH_NAME
fi

sudo echo " "
