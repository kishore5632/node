FROM node:16

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY ./config    ./

COPY ./models    ./

COPY  ./routes  ./

COPY ./views  ./

USER node

RUN npm install

COPY --chown=node:node . .

EXPOSE 5000

CMD ["node", "app.js"]

