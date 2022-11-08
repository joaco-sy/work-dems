FROM node:12

WORKDIR /usr/src/app
COPY package*.json
RUN npm ci
COPY . .
RUN npm run build
CMD ["/usr/local/bin/npm", "run", "start"]
EXPOSE 3000
