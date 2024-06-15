FROM golang:1.16-alpine

WORKDIR /usr/src/app

COPY go.mod go.sum ./
RUN go mod download

COPY . .

RUN go build -o server

# add all of the necessary ENV's
ENV REQUEST_ORIGIN="http://localhost:5000"
# ENV REDIS_HOST=redis
# ENV POSTGRES_HOST=postgres
# ENV POSTGRES_USER=postgres
# ENV POSTGRES_PASSWORD=postgres
# ENV POSTGRES_DATABASE=postgres

# Install bash and other necessary packages
RUN apk update && apk add --no-cache bash

# Create a non-root user and group
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

# Change ownership of the application directory to the new user
RUN chown -R appuser:appgroup /usr/src/app

# Switch to the non-root user
USER appuser

EXPOSE 8080
CMD ["./server"]