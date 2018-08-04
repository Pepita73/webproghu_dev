- docker-compose up
- Nekem egyszer fagyott / nem jött vissza prompt, úgyhogy CTRL + C
- docker-compose start
- http://localhost
- Örül. :)


- DB_HOST: 10.0.75.1 (Illetve aszerint, amit látsz Dockerben belső switch, see: ipconfig /all)
  (drupal-apache konténer egyelőre nem látja localhoston, kliens (pl Navicat) viszont igen. Links?)


- Konténerek listája: docker ps -a
- Leállítás: docker-compose stop
- Törlés (pl): docker rmi -f webproghudev_drupal (muszáj force, mert van pár reference)
- Rebuild: docker-compose up --build
- Benézni konténerbe (Powershell): docker exec -it drupal-apache /bin/bash
- Ha netán valami fájl / könyvtár jogosultság gond lenne, az innen kezelhető

# Container indítás

Detached mód, hogy visszakapjuk a promptot:

``` sh
docker-compose up -d
```

# Drupal telepítés

Első `clone` (vagy később `composer.json` módosítás, esetleg `git clean` és hasonlók után) így lehet a szükséges fájlokat telepíteni:

``` sh
docker exec -it drupal-apache sh -c "composer install"
```
