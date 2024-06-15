# Stage 1: Build the Go application
FROM golang:1.16-alpine AS build-stage
WORKDIR /usr/src/app
COPY go.mod go.sum ./
RUN go mod download
COPY . .
# Statically compile the Go application
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o server
RUN chmod +x /usr/src/app/server

# Stage 2: Create the minimal final image
FROM scratch

# Copy the built binary from the build stage
COPY --from=build-stage /usr/src/app/server .

# Set environment variables
ENV REQUEST_ORIGIN="http://localhost:5000"

# Expose the application port
EXPOSE 8080

# Specify the command to run the Go application
CMD ["./server"]