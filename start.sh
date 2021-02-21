#!/bin/bash

# Field
PROJECT_NAME=myapp
BUILD_NAME=springmyapp
SERVER_PORT=8080

PROJECT_PATH=/var/lib/jenkins/workspace/$PROJECT_NAME/target
JAR_FILE=$PROJECT_PATH/$BUILD_NAME.jar

sudo nohup java -jar $JAR_FILE  --spring.profiles.active=dev > /dev/null 2>&1 &


sudo echo "java -jar $JAR_FILE start on $SERVER_PORT"
sudo echo "RUN!!"