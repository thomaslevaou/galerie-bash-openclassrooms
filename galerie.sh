#!/bin/bash

# programme présent dans un fichier contenant des images, et créant une page HTML
# affichant toutes les images du dossier en miniature, après avoir généré une miniature de chaque image dans un dossier.
# Un clic sur une image miniaturisée donne l'image en taille originale.
# La page HTML prend par défaut le nom passé en paramètre, mais s'il n'y en a pas, c'est galerie.html


nomFichier=$1
if [ -z $nomFichier ]
then
	nomFichier="galerie.html"
fi

#Création du dossier qui va contenir les miniatures
if [ ! -e miniatures ]
then
	mkdir miniatures
fi
#Creation des miniatures et deplacement vers le dossier
cp *.png miniatures #on peut aussi copier les autres formats d'image si besoin
for f in miniatures/*; do
	convert ./"$f" -thumbnail 50% ./"${f%.png}.png"
done

#Insertion du code html dans un fichier (créé si inexistant)
echo '<!doctype html>
<html>
<head>
    <title>Ma galerie</title>
       <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
       <style type="text/css">
       a img { border:0; }
       </style>
   </head>
   <body>
      <p>

<a href="pikachu.png"><img src="miniatures/pikachu.png" alt="Image de Pikachu" /></a>
<a href="bulbizarre.png">  <img src="miniatures/bulbizarre.png" alt="Image de Bulbizarre" />
</a>
<a href="salameche.png"><img src="miniatures/salameche.png" alt="Image de Salameche" /></a>
<a href="carapuce.png"><img src="miniatures/carapuce.png" alt="Image de Carapuce" /></a>
      </p>
   </body>
</html>' > $nomFichier
