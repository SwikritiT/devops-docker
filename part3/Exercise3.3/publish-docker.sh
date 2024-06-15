#!/bin/sh

github_repo=$1
dockerhub_repo=$2

directory_name=${github_repo##*/} #get the name of repo by remving the preceding username

if ! [-d "$directory_name"]; then
    git clone https://github.com/${github_repo}.git --depth=1;
    cd $directory_name || exit 1;
# else 
#     cd $directory_name;
#     git pull origin main; # pull new changes in case there are any
fi

cd $directory_name || exit 1;
docker build . -t $dockerhub_repo;
docker login;
docker push $dockerhub_repo;
docker logout;
