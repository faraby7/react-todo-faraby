FROM node:alpine

WORKDIR /react_todo_faraby	

COPY  . .

RUN rm -rf node_modules && npm install && npm run build