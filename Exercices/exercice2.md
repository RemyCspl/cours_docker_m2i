
**Exercice : Gestion d'images Docker**

En ligne de commande on souhaite :

1. **Téléchargement d'une image :**
   - Recherchez et téléchargez l'image Docker officielle pour le serveur web Nginx.
```bash
# Rechercher les images officielles
docker search nginx

docker pull nginx
```

2. **Liste d'images :**
   - Affichez la liste des images Docker présentes sur votre machine.
```bash
docker images

# Retour de la commande 
# nginx:latest    8541484afbc9        241MB           66MB
```

3. **Suppression d'une image :**
   - Supprimez l'image Nginx que vous venez de télécharger de votre machine.
```bash
docker rm id-nginx

# Si je veux supprimer tous les containers qui sont en status exited
docker rm $(docker ps --filter status=exited -q)

docker rmi nginx

# Si je veux supprimer toutes les images dans mon docker
docker rmi -f $(docker images -aq)
```

4. **Téléchargement de plusieurs images :**
   - Téléchargez les images Docker officielles pour MySQL et Redis sur votre machine.
```bash
docker pull mysql
docker pull redis
```

5. **Liste d'images après téléchargement :**
   - Affichez à nouveau la liste des images Docker sur votre machine pour vérifier que les images de MySQL et Redis ont été téléchargées avec succès.
```bash
docker images

# Lignes de retour de commande :
# mysql:latest    66aec17cd21a        1.3GB          290MB
# redis:latest    344e3945a0b4        212MB         57.4MB
```

6. **Affichage détaillé d'une image :**
   - Affichez les détails (metadata) de l'image Mysql que vous avez téléchargée précédemment.
```bash
# Lister les différentes options de la commande image pour trouver celle qui affiche les détails
docker image --help

docker image inspect mysql
```

7. **Historique d'une image :**
   - Affichez l'historique de l'image MySQL pour voir les différentes couches qui la composent.
```bash
# Lister les différentes options de la commande image pour trouver celle qui affiche l'historique de l'image
docker image --help

docker image history mysql
```

8. **Recherche d'images :**
   - Rechercher une image Docker liée à un service ou une technologie de votre choix. Choisissez une image intéressante et affichez quelques informations à son sujet.
```bash
# Recherche d'une image docker pour une version de retroarch
docker search retroarch

# On récupère l'image
docker pull inglebard/retroarch-web 

# On regarde les metadata de cette image
docker image inspect inglebard/retroarch-web 

# On regarde l'historique de cette image
docker image history inglebard/retroarch-web 
```

Cet exercice devrait vous permettre de vous familiariser avec la manipulation d'images Docker à un niveau basique. N'hésitez pas à consulter la documentation Docker au besoin.