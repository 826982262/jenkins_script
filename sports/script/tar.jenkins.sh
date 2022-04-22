#!/bin/sh
path='/docker/sports'
savepath='./docker'

if [ -d $savepath ];then
rm -rf $savepath
fi

if [ ! -d $savepath ];then
mkdir $savepath
fi

cp -r $path/api/config $savepath/api
cp -r $path/docker-compose.yml $savepath
cp -r $path/sports-ai-gateway $savepath
cp -r $path/
# cp -r $path/Dockerfile.json.mock ./docker
cp -r $path/Dockerfile.* $savepath
cp -r $path/sports-json-mock $savepath
cp -r $path/sports-ai-core $savepath
cp -r $path/sports-ai-coach $savepath
cp -r $path/sports-ai $savepath
cp -r $path/sports-gateway $savepath
cp -r $path/*.sh $savepath
#!/bin/sh
tar --ignore-failed-read -zcvf sports.jenkins.$(date "+%Y-%m-%d").tar.gz --exclude=./docker/dist --exclude=*.jar --exclude=*.gz --exclude=./deploy-fatjar.sh --exclude=*.tar.gz --exclude=./dist --exclude=./target .




