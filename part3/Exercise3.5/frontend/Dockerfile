FROM node:16.20.2-alpine

WORKDIR /usr/src/app/

# copy package.json and package-lock,json
COPY package*.json ./

RUN npm install

# copy rest of the project
COPY . .

RUN npm run build

RUN npm install -g serve

# Set environment variable
ENV REACT_APP_BACKEND_URL="http://localhost:8080"

# Install bash and other necessary packages
RUN apk update && apk add --no-cache bash

# Create a non-root user and group
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

# Change ownership of the application directory to the new user
RUN chown -R appuser:appgroup /usr/src/app

# Switch to the non-root user
USER appuser

EXPOSE 5000

CMD ["serve","-s","-l","5000","build"]
