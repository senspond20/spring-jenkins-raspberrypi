#!/bin/bash
# bash Call
# sudo bash {PATH}/deploy.sh 8080 spring-boot-jenkins

# Field
PROJECT_NAME=myapp
BUILD_NAME=springmyapp
SERVER_PORT=8080

PROJECT_PATH=/var/lib/jenkins/workspace/$PROJECT_NAME/target
JAR_FILE=$PROJECT_PATH/$BUILD_NAME.jar
TMP_PATH_NAME=/tmp/$PROJECT_NAME-pid


sudo echo "> 현재 구동중인 애플리케이션 pid 확인 "
CURRENT_PID = $(pgrep -fl $PROJECT_NAME | grep jar | awk '{print $1}')

sudo echo "현재 구동중인 애플리케이션 pid : " + $CURRENT_PID"

if [ -z "$CURRENT_PID"]; then
    sudo echo "현재 구동중인 애플리케이션이 없으므로 종료하지 않습니다."
else
    echo "> kill -15 $CURRENT_PID"
    kill -15 $CURRENT_PID
    sleep 5
fi

 sudo echo "Stoping process on port: $SERVER_PORT"
 sudo fuser -n tcp -k $SERVER_PORT # tcp $serverPort에 해당하는 port를 Kill함.

if [ -f $TMP_PATH_NAME ]; then
    sudo rm $TMP_PATH_NAME
fi

sudo echo " "
