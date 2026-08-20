FROM nginx

# Définit le dossier de travail dans le conteneur (équivalent à un cd dans un terminal)
WORKDIR /usr/share/nginx/html

# Le '.' de la commande devient donc ici le chemin spécifié dans le WORKDIR, donc le dossier /usr/share/nginx/html
RUN rm -rf ./*

COPY ./index.html .

# On expose le port 80 du conteneur pour pouvoir y accéder depuis l'extérieur, si l'app travaille sur plusieurs ports, on peut en exposer plusieurs avec plusieurs EXPOSE les uns à la suite des autres
EXPOSE 80

# Le CMD suivant fait l'équivalent en commande Linux de : nginx -g daemon off
CMD [ "nginx", "-g", "daemon off;" ]