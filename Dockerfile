FROM node:16

WORKDIR /usr/bin/app

COPY ./config    ./

COPY ./models    ./

COPY ./node_modules ./

COPY  ./routes  ./

COPY ./views   ./

COPY . .

EXPOSE 8080

CMD ["node", "app.js"]

