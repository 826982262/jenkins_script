###########################################
image='allin-web:build-demo-artifact'
###########################################
docker build -f Dockerfile.artifact.build . --force-rm -t $image --no-cache
if [ $? != 0 ];then 
  echo build $image failure !
  exit
fi

docker run --rm -v ${PWD}/target:/var/webapps $image
if [ $? != 0 ];then 
  echo build $image failure !
  exit
fi

## show
ls target/*-standalone.jar

## clean up
docker image rm $image 2> /dev/null
