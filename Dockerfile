FROM node:8.10.0

RUN mkdir /app
WORKDIR /app

RUN npm uninstall -g yarn && \
  npm install -g yarn && \
  chmod u+x /usr/local/bin/yarn && \
  yarn global add webpack webpack-cli

ADD . /app

EXPOSE 3000
EXPOSE 9229
# CMD ["echo", "hello world"]