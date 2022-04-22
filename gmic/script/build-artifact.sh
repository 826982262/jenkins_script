image='allin-web:build-artifact-1'

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

## clean up
docker image rm $image 2> /dev/null
