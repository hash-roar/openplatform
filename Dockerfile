FROM node:alpine as common

WORKDIR /src

COPY .  .

RUN yarn config set npmRegistryServer https://registry.npm.taobao.org \
    && yarn 

CMD [ "yarn","start" ]
