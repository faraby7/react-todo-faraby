FROM node:alpine

WORKDIR /react_todo_app

COPY  . .

RUN npm install

CMD ["npm", "start"]
