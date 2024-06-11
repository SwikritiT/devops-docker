FROM golang:1.16

EXPOSE 8080

WORKDIR /usr/src/app

COPY go.mod go.sum ./
RUN go mod download

COPY . .

RUN go build -o server

ENV PORT=8080

# set frontend url for cors
ENV REQUEST_ORIGIN="http://localhost:5000"

CMD ["./server"]

