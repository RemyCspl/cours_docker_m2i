# Exercice dockerfile

On souhaite cree une image docker d'un projet web Github, si vous n'avez pas de repo public contenant un projet web vous pouvez utiliser https://github.com/withaarzoo/3D-Rotate-Tube

- Choisir une image de serveur web nginx

- Cree un dockerfile a partir de cette image qui a la place de sa page par défaut montrera votre projet
```dockerfile
FROM nginx:latest

WORKDIR /usr/share/nginx/html

RUN apt update
RUN apt install git -y
RUN rm -rf ./*
RUN git clone https://github.com/withaarzoo/3D-Rotate-Tube
RUN mv 3D-Rotate-Tube/* ./
RUN rm -rf 3D-Rotate-Tube

# Pour faire l'équivalent des trois dernières commandes d'un coup
RUN git clone https://github.com/withaarzoo/3D-Rotate-Tube .

EXPOSE 80

CMD [ "nginx", "-g", "daemon off;" ] 
```

- lancer un conteneur à partir de cette image et vérifier le bon fonctionnement
```bash
# Création de l'image à partir du dockerfile
docker build -t site-perso:1.0 .

# Lancement d'un container à aprtir de l'image que l'on vient de créer
docker run -d -p 8080:80 --name site1 site-perso:1.0
```

la commande à utiliser à la fin du dockerfile : CMD ["nginx","-g","daemon off;"]