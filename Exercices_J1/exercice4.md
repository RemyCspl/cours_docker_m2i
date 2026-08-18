# Exercice

## Partie 1

- En utilisant votre machine Windows, lancez le service Docker, s’il n’est pas lancé.

- Créer une image Docker sur votre machine du jeu 2048 (voir screen jeux_2048).
```bash
docker search 2048
docker pull quchaonet/2048
docker run -d --name game2048 -p 8080:8080 quchaonet/2048
```

- Vérifier que l’image est bien présente sur votre machine.
```bash
docker images
```

- Lancer ce jeu sur un port disponible au travers d’un conteneur que vous allez appeler «jeu-votre-nom ». 
```bash

```

- Vérifier que le conteneur est bien lancé avec la commande adaptée.
```bash

```

- Créer un second conteneur qui va lancer le même jeu mais avec un nom différent «jeu2-votre-nom ».
```bash

```

- Les 2 jeux sont fonctionnels en même temps sur votre machine, effectuez la commande pour vérifier la présence des conteneurs.
```bash

```

- Ouvrez les 2 jeux sur votre navigateur. 
```bash

```

- Stopper les 2 conteneurs et assurez-vous que ces 2 conteneurs sont arrêtés.
```bash

```

- Relancez le conteneur «jeu2-votre-nom » et aller vérifier dans votre navigateur s’il fonctionne bien. Effectuez la commande pour voir s’il a bien été relancé. Puis stopper le. 
```bash

```

- Supprimez l’image du jeu 2048 et les conteneurs associés.
```bash

```

- Vérifiez que les suppressions ont bien été faite.
```bash

```


## Partie 2


- Récupérer une image docker nginx.
```bash

```

- Créer un conteneur en vous basant sur cette image en lui attribuant le nom suivant : « nginx-web».
```bash

```

- Assurez-vous que l’image est bien présente et que le conteneur est bien lancé.
```bash

```

- Ce serveur nginx web (nginx-web) devra être lancé sur un port disponible.
```bash

```

- Vérifier que le serveur est bien lancé au travers du navigateur.
```bash

```

- Une page web avec «Welcome to nignx » devrait s'afficher (voir nginx.png). 
```bash

```

- Effectuer la commande vous permettant de rentrer à l’intérieur de votre serveur nginx.
```bash

```

- Une fois à l’intérieur, aller modifier la page html par défaut de votre serveur nginx en changeant le titre de la page en :  
Welcome «votre prenom ».
```bash

```

- Relancez votre serveur et assurez-vous que le changement à bien été pris en compte, en relançant votre navigateur.
```bash

```

- Refaite la même opération mais en utilisant le serveur web apache et donc il faudra créer un autre conteneur.
```bash

```

- Il faut supprimer le contenu complet de l'index.html et y mettre : "Je suis heureux et je m'appelle votre prenom".
```bash

```

- Le changement doit appaître dans votre navigateur.
```bash

```

## Partie 3


- Répétez 3 fois la même opération que pour le début de la partie 2, il faudra juste appelez vos conteneurs :
```bash

```

- « nginx-web3 ».
```bash

```

- « nginx-web4 ».
```bash

```

- « nginx-web5 ».
```bash

```

- Il faudra faire en sorte que les pages html présente dans les fichiers ci-dessous s’affiche dans chacun des navigateurs en lien avec vos conteneurs :
```bash

```

- html5up-editorial-m2i.zip pour nginx-web3
```bash

```

- html5up-massively.zip pour nginx-web4
```bash

```

- html5up-paradigm-shift.zip pour nginx-web5
```bash

```

- Stopper, ensuite, ces différents conteneurs.
```bash

```
