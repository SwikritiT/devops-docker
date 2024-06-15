#!/bin/sh

github_repo=$1
dockerhub_repo=$2

directory_name=${github_repo##*/} #get the name of repo by remving the preceding username

if ! [-d "$PWD/$directory_name"]; then
    git clone https://github.com/${github_repo}.git --depth=1;
    cd $PWD/$directory_name || exit 1;
else 
    cd $PWD/$directory_name|| exit 1;
    git pull origin main; # pull new changes in case there are any
fi

docker build . -t $dockerhub_repo;
echo "__________________________";
# Display Docker user for verification
echo "Logging in " $DOCKER_USER $DOCKER_PWD;
echo "_______________________________";
docker login --username=$DOCKER_USER --password=DOCKER_PWD;
docker push $dockerhub_repo;
docker logout;
