FROM node:carbon-alpine AS node_builder

WORKDIR /app/webreactjs
COPY . .
RUN npm install
LABEL name="webreactjs" version="1.0"
CMD ["npm", "start"]