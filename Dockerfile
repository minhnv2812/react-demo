FROM node:alpine

WORKDIR /app
COPY package.json ./
COPY package-lock.json ./
COPY ./ ./
RUN npm install
LABEL name="webreactjs" version="1.0"
CMD ["npm", "run", "start"]