# Stage 1: Build the application
FROM node:16.20.2-alpine as build-stage

WORKDIR /usr/src/app/

COPY package*.json ./
RUN npm install

COPY . .

# Build the project
RUN npm run build && \
    rm -rf /var/cache/apk/*

# Set environment variable
ENV REACT_APP_BACKEND_URL="http://localhost:8080"

# Expose a port for build-stage testing (if needed, can be removed in production)
EXPOSE 5000

# Stage 2: Create the final image
FROM nginx:1.19-alpine

# Copy the build output from the previous stage to the nginx html directory
COPY --from=build-stage /usr/src/app/build/ /usr/share/nginx/html

# Expose port 80 for the HTTP server
EXPOSE 80

# Default command to run nginx
CMD ["nginx", "-g", "daemon off;"]
