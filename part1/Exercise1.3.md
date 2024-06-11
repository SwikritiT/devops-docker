$ docker run -d  -it --name secretmessage devopsdockeruh/simple-web-service:ubuntu



$ docker exec -it secretmessage bash
root@56cd9a3fbdd3:/usr/src/app# ls
server  text.log
root@56cd9a3fbdd3:/usr/src/app# tail -f ./text.log 
2024-06-09 09:50:10 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
