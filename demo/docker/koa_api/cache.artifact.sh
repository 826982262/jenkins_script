image='allin-koa:cache-install-npm'

docker build -f Dockerfile.artifact.cache . --force-rm --no-cache -t allin-koa:cache-install-npm

docker run --rm -v ${PWD}/node_modules:/var/node_modules $image

if [ $? != 0 ];then 
  echo build $image failure !
  exit
fi


if [ $? != 0 ];then 
  echo build $image failure !
  exit
fi


## clean up
docker image rm $image 2> /dev/null