#!/bin/sh
path='/docker/nft'
savepath='./docker'

if [ -d $savepath ];then
rm -rf $savepath
fi

if [ ! -d $savepath ];then
mkdir $savepath
fi


# cp -r $path/api/config ./docker/api
# cp -r $path/docker-compose.yml ./docker
# cp -r $path/gateway.conf/* ./docker/gateway
# cp -r $path/Dockerfile.json.mock ./docker
cp -r $path/* $savepath

tar --ignore-failed-read -zcvf nft.jenkins.$(date "+%Y-%m-%d").tar.gz --exclude=./docker/dist --exclude=*.jar --exclude=*.gz --exclude=./deploy-fatjar.sh --exclude=*.tar.gz --exclude=./dist --exclude=./target .

