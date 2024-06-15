FROM node:16.20.2-alpine

WORKDIR /usr/src/app/

# copy package.json and package-lock,json
COPY package*.json ./

RUN npm install

# copy rest of the project
COPY . .

RUN npm run build && \
    npm install -g serve && \
    apk update && apk add --no-cache bash && \
    addgroup -S appgroup && adduser -S appuser -G appgroup && \
    chown -R appuser:appgroup /usr/src/app && \
    rm -rf /var/cache/apk/*

# Switch to the non-root user
USER appuser

# Set environment variable
ENV REACT_APP_BACKEND_URL="http://localhost:8080"

EXPOSE 5000

CMD ["serve","-s","-l","5000","build"]
