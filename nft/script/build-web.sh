image='allin-web:build-dist-1'

## build jar
docker build -f Dockerfile.web.build . --force-rm --no-cache -t $image
if [ $? != 0 ];then 
  echo build $image failure !
  exit
fi

if [ -d dist ];then
	echo rm -rf dist
	rm -rf dist
fi

echo docker run --rm -v ${PWD}/dist:/var/dist $image
docker run --rm -v ${PWD}/dist:/var/dist $image

if [ $? != 0 ];then 
  echo build $image failure !
  exit
fi
ls dist/*

## clean up
#docker image rm $image 2> /dev/null
