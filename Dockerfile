FROM node:18.10
WORKDIR /root/docs
COPY package.json package-lock.json ./
RUN npm ci --include dev
