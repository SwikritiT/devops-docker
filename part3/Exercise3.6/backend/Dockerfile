FROM golang:1.16-alpine

WORKDIR /usr/src/app

COPY go.mod go.sum ./
RUN go mod download

COPY . .

RUN go build -o server && \
    apk update && apk add --no-cache bash && \
    addgroup -S appgroup && adduser -S appuser -G appgroup && \
    chown -R appuser:appgroup /usr/src/app && \
    rm -rf /var/cache/apk/*

# Switch to the non-root user
USER appuser

# add all of the necessary ENV's
ENV REQUEST_ORIGIN="http://localhost:5000"
# ENV REDIS_HOST=redis
# ENV POSTGRES_HOST=postgres
# ENV POSTGRES_USER=postgres
# ENV POSTGRES_PASSWORD=postgres
# ENV POSTGRES_DATABASE=postgres

EXPOSE 8080
CMD ["./server"]

