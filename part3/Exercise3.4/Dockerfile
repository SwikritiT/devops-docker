FROM docker:27.0.0-rc.1-alpine3.20

WORKDIR /usr/src/app

RUN apk update
RUN apk add git
RUN apk add --no-cache bash

COPY ./publish-image.sh .

RUN chmod +x /usr/src/app/publish-image.sh

ENV DOCKER_USER = user
ENV DOCKER_PWD = pass

ENTRYPOINT ["/usr/src/app/publish-image.sh"]