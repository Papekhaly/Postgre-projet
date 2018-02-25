#!bin/bash


echo "CREATE DATABASE test" | mysql -u khaly -p 
exec 2> /dev/null


mysql test < /home/faye/Bureau/test_2018-02-25.sql.tar.bz2
echo "Restauration effectué avec succée."


exec 2> /dev/null
