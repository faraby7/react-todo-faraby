FROM node:alpine AS builder

WORKDIR /react_todo_faraby

COPY  . .

RUN rm -rf node_modules && npm install && npm run build

FROM nginx:alpine

COPY --from=builder /react_todo_faraby/build /usr/share/nginx/html

COPY ./nginx.conf /etc/nginx