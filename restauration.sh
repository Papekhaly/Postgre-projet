#!bin/bash


echo "CREATE DATABASE baseArestaurer" | mysql -u root -p 


mysql baseArestaurer < /home/faye/Bureau/test3_2018-02-15.sql.tar.bz2


