FROM node:carbon-alpine AS node_builder

WORKDIR /app/webreactjs
COPY /webreactjs/package.json .
RUN npm install
COPY . .
LABEL name="webreactjs" version="1.0"
CMD ["npm", "start"]