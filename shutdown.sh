#SAFE SHUT DOWN--------------------------------------------
exit #exit w205 user back to root

#stop hive metastore
ps -ef|grep metastore
#kill <get exact process number>

#shut down hadoop and postgres
/root/stop-hadoop.sh
/data/stop_postgres.sh
