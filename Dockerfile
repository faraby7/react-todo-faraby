FROM node:alpine AS builder

WORKDIR /react_todo_app

COPY  . .

RUN rm -rf node_modules && npm install && npm run build

FROM nginx:alpine

COPY --from=builder /react_todo_app/dist /usr/share/nginx/html

EXPOSE 80