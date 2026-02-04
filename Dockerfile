FROM node:lts
WORKDIR /root/docs
COPY package.json package-lock.json ./
RUN npm ci --include dev
