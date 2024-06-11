FROM node:16.20.2

WORKDIR /usr/src/app/

# copy package.json and package-lock,json
COPY package*.json ./

RUN npm install

# copy rest of the project
COPY . .

# Set environment variable
ENV REACT_APP_BACKEND_URL="http://localhost:8080"

RUN npm run build

RUN npm install -g serve

EXPOSE 5000

CMD ["serve","-s","-l","5000","build"]
