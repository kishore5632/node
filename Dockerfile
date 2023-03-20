FROM node:16

WORKDIR /usr/src/app

COPY ./config    ./

COPY ./models    ./

COPY  ./routes  ./

COPY ./views  ./

COPY . .

EXPOSE 5000

CMD ["node", "app.js"]

