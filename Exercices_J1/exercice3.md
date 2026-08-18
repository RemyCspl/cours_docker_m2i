**Exercice : Utilisation basique de conteneurs Docker**

**Objectif :** Créer, exécuter et explorer des conteneurs Docker.

**Étapes :**

1. **Vérification de l'installation :**
   - Assurez-vous d'avoir Docker installé sur votre machine.

2. **Recherche d'une image sur le hub Docker :**
   - Rechercher l' image nginx sur le hub Docker.Par exemple, recherchons une image "nginx" :
```bash
docker search nginx
```

3. **Téléchargement d'une image :**
   - téléchargez l'image nginx sur votre machine.
```bash
docker pull nginx
```

4. **Exécution d'un conteneur :**
   - Exécutez un conteneur basé sur l'image que vous avez téléchargée.
     Démarrer un conteneur détaché, expose le port 80 du conteneur sur le port 8080 de votre machine, et donne un nom au conteneur.
```bash
docker run -d -p 8080:80 --name personal-nginx nginx
```

5. **Vérification du conteneur en cours d'exécution :**
   - Avec une commande vérifiez que le conteneur est en cours d'exécution.
```bash
docker images

# Retour de la commande qui confirme que notre ngixn est bien fonctionnel: 
#3b6af4d8471c   nginx     "/docker-entrypoint.…"   2 seconds ago   Up 2 seconds   0.0.0.0:8080->80/tcp, [::]:8080->80/tcp   personal-nginx
```
   - Ouvrez un navigateur web et accédez à `http://localhost:8080` pour voir si la page d'accueil de Nginx s'affiche.
```
L'adresse http://localhost:8080 affiche bien la page d'accueil par défaut de nginx
```


6. **Exploration du conteneur :**
   - Utilisez une commande pour accéder à une session interactive à l'intérieur du conteneur.
```bash
docker exec -it personal-nginx bash
```
   - Explorez le système de fichiers à l'intérieur du conteneur.
```
Les fichiers HTML sont stocké au niveau de /usr/share/nginx/html dans l'arborescence nginx
```
   - Modifier la page index.html du serveur nginx.
```bash
apt upgrade
apt update
apt install nano

nano /usr/share/nginx/html/index.html
```

   Note : le gestionnaire de package sur nging est apt
   ```
   apt upgrade
   apt update
   apt install nom_du_package
   ```

7. **Arrêt et suppression du conteneur :**
   - Arrêtez le conteneur.
   - Supprimez le conteneur.
```bash
exit

# Supprimer le container lié à notre image nginx
docker rm 55e6

# Supprimer l'image de nginx
docker rmi nginx
```

Cet exercice devrait vous donner une idée de base de la création, de l'exécution, et de l'exploration de conteneurs Docker sans se concentrer sur les Dockerfiles ou Docker Compose.