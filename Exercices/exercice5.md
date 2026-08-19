# Exercice — Réutiliser un volume nommé avec plusieurs serveurs web

## Objectif

Mettre en pratique les **volumes nommés Docker** en déployant un même site statique successivement avec **Nginx**, **Apache HTTP Server** puis **Caddy**.

Le site statique sera fourni sous la forme d'une **archive ZIP**.

Le même volume nommé devra être conservé pendant tout l'exercice.

---

## Étape 1 — Nginx

### 1. Créer le volume et le conteneur

Créez un volume nommé :

```text
static-site
```

```bash
docker volume create static-site
```

Créez ensuite un conteneur **Nginx** utilisant ce volume pour stocker les fichiers du site.

```bash
docker run -d -v static-site:/usr/share/nginx/html/ -p 8080:80 --name nginx-website nginx
```

### 2. Ajouter le site dans le volume

Décompressez l'archive ZIP fournie sur votre machine.

Copier les fichiers du site dans le conteneur Nginx, directement dans le répertoire associé au volume `static-site`.
```bash
docker cp C:/Users/Administrateur/Documents/.repos/cours_docker_m2i/Exercices/files_tp_conteneur/html nginx-website:/usr/share/nginx
```

Vérifiez que le site est accessible depuis votre navigateur.

### 3. Supprimer Nginx

Arrêtez puis supprimez complètement le conteneur Nginx.

```bash
docker stop nginx-website
docker rm nginx-website
```

Le volume `static-site` ne doit pas être supprimé.

Vérifiez que le volume existe toujours après la suppression du conteneur.
```bash
docker volume ls

#  Retour de la commande: 
# DRIVER    VOLUME NAME
# local     static-site
```

---

## Étape 2 — Apache HTTP Server

### 1. Créer le conteneur Apache

Créez un nouveau conteneur utilisant l'image **Apache HTTP Server (`httpd`)**.

Réutilisez le volume :

```text
static-site
```

et montez-le dans le répertoire utilisé par Apache pour servir les fichiers web.

```bash
docker run -d -v static-site:/usr/local/apache2/htdocs/ -p 8081:80 --name apache-website httpd
```

### 2. Vérifier le site

Démarrez le conteneur et vérifiez que le site est accessible depuis votre navigateur.

Vous ne devez **pas recopier les fichiers du site**.

Apache doit directement utiliser les fichiers déjà présents dans le volume.

```bash
docker exec -it apache-website  bash

ls /usr/local/apache2/htdocs/

# Retour de la commande:
# 50x.html  LICENSE.txt  README.txt  assets  elements.html  generic.html  images  index.html  untitled.pdf
```

```
Le localhost:8081 affiche bien le contenu du website contenu dans le volume lié !
```

### 3. Supprimer Apache

Arrêtez puis supprimez complètement le conteneur Apache.

Conservez une nouvelle fois le volume `static-site`.

Vérifiez que le volume existe toujours.

```bash
docker stop apache-website
docker rm apache-website

docker volume ls

# DRIVER    VOLUME NAME
# local     static-site
```

---

## Étape 3 — Caddy

### 1. Créer le conteneur Caddy

Créez un nouveau conteneur utilisant l'image **Caddy**.

Réutilisez encore une fois le volume :

```text
static-site
```

```bash
docker run -d -v static-site:/usr/share/caddy/ -p 8081:80 --name caddy-website caddy
```

et configurez Caddy afin qu'il serve les fichiers présents dans ce volume.
```bash
docker exec -it caddy-website /bin/sh

ls /usr/share/caddy/

# Retour de la commande:
# 50x.html       LICENSE.txt    README.txt     assets         elements.html  generic.html   images         index.html     untitled.pdf
```

### 2. Vérifier le site

Démarrez le conteneur Caddy et vérifiez que le même site est toujours accessible depuis votre navigateur.

```
Le site situé à localhost:8081 affiche toujours bien le bon website avec les modifications du volume !
```

Aucune nouvelle copie du site ne doit être effectuée.

 