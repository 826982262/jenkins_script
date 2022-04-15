path='/docker/demo'

if [ -f docker ];then
	mkdir docker
fi
mkdir ./docker/web


mkdir ./docker/api


cp -r $path/api/config ./docker/api
cp -r $path/koa_api ./docker
cp -r $path/docker-compose.yml ./docker
cp -r $path/web/conf.d $path/web/config ./docker/web

#!/bin/sh
tar --ignore-failed-read -zcvf demo.jenkins.$(date "+%Y-%m-%d").tar.gz --exclude=./.deploy-fatjar.sh --exclude=*.tar.gz --exclude=dist --exclude=./target .

