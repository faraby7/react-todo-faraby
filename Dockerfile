FROM node:alpine

WORKDIR /react_todo_faraby

COPY package*.json ./

RUN npm install

COPY  . .

CMD [ "node", "./server.js" ]