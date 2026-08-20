FROM alpine:latest

# Infos
LABEL org.opencontainers.image.title="DEMO Alpine Dockerfile"
LABEL org.opencontainers.image.description="Image Alpine perso avec Git et Nano"
LABEL org.opencontainers.image.author="Rémy C"

# Commandes lancées au moment de la construction de l'image (on peut en mettre autant que l'on veut)
RUN apk update
RUN apk add git
RUN apk add nano

# Commande lancée au démarrage du conteneur (une seule et unique commande possible) => Au moment du docker run
# Le CMD arrive toujours en dernier dans le Dockerfile, il ne peut y avoir qu'un seul CMD par Dockerfile
CMD [ "sleep", "infinity" ]

# Commande pour éxecuter le docker file et donc créer son image
# docker build -t mon-image:remy .

# Commande pour éxecuter le conteneur à partir de l'image créée (on peut lui ajouter tous les paramètres habituels que l'on veut)
# docker run -d mon-image:remy