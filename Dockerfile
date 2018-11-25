FROM mhart/alpine-node:10

ENV TZ=Europe/Moscow

WORKDIR /src
ADD . /src
RUN npm install

EXPOSE 1337
CMD [ "npm", "start" ]
