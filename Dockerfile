FROM node:18.10
WORKDIR /root/docs
COPY package.json yarn.lock ./
RUN yarn && yarn cache clean

