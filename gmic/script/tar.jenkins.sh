#!/bin/sh
path='/docker/gmic'
savepath='./docker'

if [ -d $savepath ];then
rm -rf $savepath
fi

if [ ! -d $savepath ];then
mkdir $savepath
fi




cp -r $path/* $savepath
#!/bin/sh
tar --ignore-failed-read -zcvf gmic.jenkins.$(date "+%Y-%m-%d").tar.gz --exclude=./docker/dist --exclude=*.jar --exclude=*.gz --exclude=./deploy-fatjar.sh --exclude=*.tar.gz --exclude=./dist --exclude=./target .




