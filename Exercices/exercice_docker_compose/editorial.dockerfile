FROM nginx

WORKDIR /usr/share/nginx/html

COPY ./html5up-editorial/ .

CMD ["nginx", "-g", "daemon off;"]