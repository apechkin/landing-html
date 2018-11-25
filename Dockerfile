FROM mhart/alpine-node:10
WORKDIR /src
ADD . /src
RUN npm install

EXPOSE 1337
CMD [ "npm", "start" ]
