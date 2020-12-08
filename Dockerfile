FROM node:alpine

WORKDIR /poba
ADD . .

ENV PORT=85

RUN npm install
ENTRYPOINT ["node", "app.js"]


