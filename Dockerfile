FROM nginx:1.18-alpine

COPY ./build /usr/share/nginx/html

WORKDIR /usr/share/nginx/html

RUN mv Mishimash.html index.html

EXPOSE 80