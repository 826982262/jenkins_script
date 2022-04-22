#!/bin/sh
path='/docker/auto'
savepath='./docker'

if [ -d $savepath ];then
rm -rf $savepath
fi

if [ ! -d $savepath ];then
mkdir $savepath
fi

cp -r $path/api/config $savepath/api
cp -r $path/*.yml $savepath
#!/bin/sh
tar --ignore-failed-read -zcvf auto.jenkins.$(date "+%Y-%m-%d").tar.gz --exclude=./docker/dist --exclude=*.jar --exclude=*.gz --exclude=./deploy-fatjar.sh --exclude=*.tar.gz --exclude=./dist --exclude=./target .




