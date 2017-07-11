#!/bin/bash

if [ -f /opt/app-bamboo/app-bamboo.pid ]
then
if [ $(ps -o pid h $(cat /opt/app-bamboo/app-bamboo.pid) | wc -l) == 1 ]
then
kill $(cat /opt/app-bamboo/app-bamboo.pid)
fi
rm -rf /opt/app-bamboo/app-bamboo.pid
fi
