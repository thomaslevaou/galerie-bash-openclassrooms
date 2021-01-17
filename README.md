# TP du générateur de galerie d'images, du cours en ligne OpenClassrooms

TP du générateur de galerie d'images, réalisé dans le cadre de la formation sur Linux et le shell proposée par le
site OpenClassrooms, à l'adresse suivante : https://openclassrooms.com/fr/courses/43538-reprenez-le-controle-a-laide-de-linux/43536-tp-generateur-de-galerie-dimages

Ce projet consiste à écrire un script bash générant un fichier HTML affichant 4
images en taille réduite dans le navigateur. Cliquer sur une des images permet
d'afficher le fichier correspondant dans sa taille originale.

Une fois cloné, ce projet peut être exécuté via la commande suivante à la racine
(ImageMagick doit préalablement être installé) :
```
chmod 700 galerie.sh
./galerie.sh galerieImages.html
```
Ce qui génère alors un fichier galerieImages.html, qu'il suffit d'ouvrir avec un
navigateur, par exemple ici FireFox:
```
firefox galerieImages.html
```
