FROM golang:1.16

WORKDIR /usr/src/app

COPY go.mod go.sum ./
RUN go mod download

COPY . .

RUN go build -o server

# add all of the necessary ENV's
ENV PORT=8080
ENV REQUEST_ORIGIN="http://localhost:5000"
ENV REDIS_HOST=redis
ENV POSTGRES_HOST=postgres
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres
ENV POSTGRES_DATABASE=postgres
EXPOSE 8080
CMD ["./server"]

