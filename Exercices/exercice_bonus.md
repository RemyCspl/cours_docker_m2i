## Création d'un site web basique tournant sur nginx via un dockerfile copiant les fichiers du website et lançant le serveur nginx

Création du Dockerfile

```dockerfile
FROM nginx:latest

COPY ./files_tp_conteneur/html /usr/share/nginx/html

EXPOSE 8080

CMD [ "nginx", "-g", "daemon off;" ]
```

Commande pour créer mon image depuis mon Dockerfile

```bash
# Le terminal est placé dans le dossier contenant le Dockerfile
docker build -t nginx-website:remy .
```

Création d'un conteneur depuis notre image créée grâce au Dockerfile
```bash
docker run -d -p 8080:80 --name nginx-website nginx-website:remy
```