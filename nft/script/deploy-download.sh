#############################
path='/docker/nginx/html/dl/'
############################
if [ -d dist ];then
    if [ -f dist.zip ];then
        echo rm -rf dist.zip
        rm -rf dist.zip
    fi
    echo zip -r dist.zip ./dist/*
	zip -r dist.zip ./dist/*
    
fi

if [ -f dist.zip ];then
        echo cp -r ./dist.zip $path
        cp -r ./dist.zip $path
         echo DOWNLOAD: http://api.dev.smallsaas.cn/dl/dist.zip
fi
   
    