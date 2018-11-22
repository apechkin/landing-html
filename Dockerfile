FROM mhart/alpine-node:10

ENV VIRTUAL_HOST testpage.pechkin.space
ENV LETSENCRYPT_HOST testpage.pechkin.space
ENV LETSENCRYPT_EMAIL anatmozg@mail.ru
ENV TZ=Europe/Moscow

WORKDIR /src
ADD . /src
RUN npm install

EXPOSE 1337
CMD [ "npm", "start" ]
