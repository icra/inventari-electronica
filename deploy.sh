#!/bin/bash

#git
git add *
git commit -am 'update'
git push

#desplega al servidor
# -h  human readable format
# -P  mostra progrés
# -vv incrementa verbositat
# -r  actua recursivament
rsync -hPvr \
  --exclude "deploy.sh" \
  --exclude ".git" \
  . root@icra.loading.net:/var/www/vhosts/icradev.cat/inventari-electronica.icradev.cat
