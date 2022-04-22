#!/usr/env/env bash

if [ ! -f deploy-fatjar.sh ];then
   curl -sLO https://gitee.com/smallsaas/jenkins_scripts/raw/master/deploy-fatjar.sh
   chmod +x deploy-fatjar.sh
fi

if [ ! -f deploy-fatjar.sh ];then
   echo "fail to get deploy-fatjar.sh" > /dev/stderr
   exit
fi

CONTAINER='auto_api_1' ./deploy-fatjar.sh

