FROM caddy:latest

WORKDIR /usr/share/caddy/

COPY ./files_tp_conteneur/html5up-paradigm-shift.zip ./

RUN apk update
RUN apk add unzip
RUN rm index.html
RUN unzip ./html5up-paradigm-shift.zip -d ./
RUN rm -rf html5up-paradigm-shift.zip

EXPOSE 80

CMD [ "caddy", "run", "--config", "/etc/caddy/Caddyfile", "--adapter", "caddyfile" ]