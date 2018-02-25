# Postgre-projet

POUR LANCER CHAQUE SCRIPT SE PLACER DANS LE DOSSIER LES CONTENANTS ET FAIRE LA COMMANDE "sh script.sh"

Script de sauvegarde de bases de données : save _dbs 2.sh
Tout d'abord s'assurer d'avoir installé les prérequis (apache2, mysql, Phpmyadmin) se référer à la documentation, ainsi que " apt-get install mysql -client" ainsi que les paquets de compression "tar et gzip2".
Ouvrir le script dans un éditeur de texte, tout d'abord l'utilisateur "usé" à la deuxième ligne est "root" par défaut changer l'en fonction du vôtre. Le changer aussi au niveau de la sixième ligne "mysqldump -uroot" root est mis par défaut le remplacer par le vôtre.
NB: Si vous n'avez pas changé votre nom d'utilisateur au départ, il reste "root" le mot de passe aussi donc vous n'aurez aucune modification à faire.

Script de restauration d'une base précise: restauration sh
Pour ce script remplaçait tous les endroits avec "basearestaurer" par celle que vous voulez restaurer.
ensuite copier le chemin du backup de cette base "mysql basearestaurer chemin du backup".
Pour vérifize votre restauration ouvrir mysql sur votre terminal "mysql -user -p" et faire "show databases" et vérifier si votre base s'affiche.


Script de gestion des backups les plus anciens : rétention .sh
Ce script va vous permettre de supprimer les backups de vos choix, de plus d'un jour, deux ou comme vous le souhaitez.
le script actuel supprime les backups vieux de 4 jours, donc en modifiant "+4" vous choisissez le nombre de jours que vous voulez.
ensuite coller le chemin du backup que vous souhaiter supprimer ou le dossier contenant plusieurs backups à la place du chemin présent.
