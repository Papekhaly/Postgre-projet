#!bin/bash


mysql_config_editor set --login-path=local --host=localhost --user=root --password


databases=`mysql --login-path=local -e "SHOW DATABASES;" | grep  -Ev "(Database|information_schema|performance_schema)"`

exec 2> /dev/null 

for i in $databases; do

mysqldump -uroot-proot ${i} > ${i}_`date +"%Y-%m-%d"`.sql

tar jcf ${i}_`date +"%Y-%m-%d"`.sql.tar.bz2 ${i}_`date +"%Y-%m-%d"`.sql

rm ${i}_`date +"%Y-%m-%d"`.sql


#find ${backupdir} -type f -name "export_mysql*" -mtime +1 -print -exec rm -f {} \; 2>&1 | tee -a$Log



done

