!/bin/sh
if [ ! -f deploy-fatjar.sh ];then
   curl -sLO https://gitee.com/smallsaas/jenkins_scripts/raw/master/deploy-fatjar.sh
   mv deploy-fatjar.sh .deploy-fatjar.sh
   chmod +x .deploy-fatjar.sh
fi
if [ ! -f deploy-fatjar.sh ];then
   echo "fail to get deploy-fatjar.sh" > /dev/stderr
   exit
fi


#CONTAINER='demo_web_1' ./.deploy-fatjar.sh dist
CONTAINER='demo-gw' ./deploy-fatjar.sh dist