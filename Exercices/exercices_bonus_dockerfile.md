# Pour le permier site avec nginx
```dockerfile 
FROM nginx:latest

WORKDIR /usr/share/nginx/html

COPY ./files_tp_conteneur/html5up-editorial-m2i.zip ./

RUN apt update
RUN apt install unzip -y
RUN unzip ./html5up-editorial-m2i.zip -d ./
RUN mv html5up-editorial/* ./
RUN rm -rf html5up-editorial

EXPOSE 80

CMD [ "nginx", "-g", "daemon off;" ] 
```

# Pour le deuxième site avec httpd
```dockerfile
FROM httpd:2.4

WORKDIR /usr/local/apache2/htdocs/

COPY ./files_tp_conteneur/html5up-massively.zip ./

RUN apt update
RUN apt install unzip -y
RUN rm index.html
RUN unzip ./html5up-massively.zip -d ./
RUN rm -rf html5up-massively.zip

EXPOSE 80

# Commande trouvée grâce à la ligne du 'docker inspect httpd':
# "Cmd": [
#                 "httpd-foreground"
#             ],
CMD [ "httpd-foreground" ]
```

# Pour le troisième site avec caddy
```dockerfile
FROM caddy:latest

WORKDIR /usr/share/caddy/

COPY ./files_tp_conteneur/html5up-paradigm-shift.zip ./

RUN apk update
RUN apk add unzip
RUN rm index.html
RUN unzip ./html5up-paradigm-shift.zip -d ./
RUN rm -rf html5up-paradigm-shift.zip

EXPOSE 80

# Commande trouver grâce à la ligne du 'docker inspect caddy':
# "Cmd": [
#                 "caddy",
#                 "run",
#                 "--config",
#                 "/etc/caddy/Caddyfile",
#                 "--adapter",
#                 "caddyfile"
#             ],
CMD [ "caddy", "run", "--config", "/etc/caddy/Caddyfile", "--adapter", "caddyfile" ]
```