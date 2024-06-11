```bash
$ touch text.log
$ docker run -d -v "$(pwd)/text.log:/usr/src/app/text.log" devopsdockeruh/simple-web-service
$ tail -f ./text.log                 
2024-06-10 08:14:26 +0000 UTC
2024-06-10 08:14:28 +0000 UTC
2024-06-10 08:14:30 +0000 UTC
2024-06-10 08:14:32 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2024-06-10 08:14:34 +0000 UTC
2024-06-10 08:14:36 +0000 UTC
2024-06-10 08:14:38 +0000 UTC
2024-06-10 08:14:40 +0000 UTC
2024-06-10 08:14:42 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2024-06-10 08:14:44 +0000 UTC
```
