FROM node:16

WORKDIR /usr/bin/app

COPY package*.json  ./

copy node_modules ./

COPY . .

EXPOSE 8080

CMD ["node", "app.js"]

