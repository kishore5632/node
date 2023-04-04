FROM node:16

RUN mkdir -p /node_passport_login-master/node_modules && chown -R 777 node:node /node_passport_login-master/node_modules

WORKDIR /home/node/app

COPY ./config    ./

COPY ./models    ./

COPY  ./routes  ./

COPY ./views  ./

USER node

COPY --chown=node:node . .

RUN npm install



EXPOSE 5000

CMD ["node", "app.js"]

