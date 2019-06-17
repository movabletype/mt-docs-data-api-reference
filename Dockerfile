FROM node:8.16
WORKDIR /root/docs
COPY package.json yarn.lock ./
RUN yarn && yarn cache clean

