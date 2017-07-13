#!/bin/bash

is_run=$(ps x | grep -v grep | grep -c java)

if [ $is_run -eq 0 ]; then
  /opt/java/jdk1.8.0_131/bin/java -cp $(JARS=(/opt/app-bamboo/install/current/*.jar); IFS=:; echo "${JARS[*]}") -DdeployedBy=$1 org.kkrzysiu.tools.Servlet 1>/dev/null 2>&1 &
  echo $! > /opt/app-bamboo/app-bamboo.pid
fi
