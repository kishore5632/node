FROM node:16

WORKDIR /usr/bin/app

COPY package*.json  ./

COPY . .

EXPOSE 8080

CMD ["node", "app.js"]

