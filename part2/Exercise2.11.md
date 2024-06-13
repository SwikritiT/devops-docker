## Description

I setup a small dockerized dev env in my personal [react todo app](https://github.com/SwikritiT/todo)

Just like in the example exercise I created a [Dockerfile](https://github.com/SwikritiT/todo/blob/master/Dockerfile) setting up the workdir and copying the necessary config files and installing the required dependencies.

After that I created the [docker-compose](https://github.com/SwikritiT/todo/blob/master/docker-compose.yml) that sould build the dockerfile and start the project in dev env. Like in the exercise I created necessary volumes to make the project work in dev env.
