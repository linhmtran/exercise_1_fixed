# EC2 INSTANCE FIRST TIME SETUP--------------------------

# Find the volume location, what file systems are mounted
fdisk -l
df -k

#read/write/executable permission setup for /data
ls -l / | grep -i data
chmod a+rwx /data

#download UCB script
wget https://s3.amazonaws.com/ucbdatasciencew205/setup_ucb_complete_plus_postgres.sh
#make executable
chmod +x ./setup_ucb_complete_plus_postgres.sh
#run the script
./setup_ucb_complete_plus_postgres.sh /dev/xvdf

# SET UP SPARK (if new instance), ensure at home/w205 directory
# wget https://s3.amazonaws.com/ucbdatasciencew205/setup_spark.sh
# bash ./setup_spark.sh
# /data/start_metastore.sh
# sudo -u w205 /data/start_metastore.sh
# #start spark sql CLI:
# /data/spark15/bin/spark-sql
#
# cd $SPARK_HOME
# export SPARK=/home/w205/spark15
# export SPARK_HOME=$SPARK
# export PATH=$SPARK/bin:$PATH

#pull github folder for exercise 1
git clone https://github.com/linhmtran/exercise_1.git

#RE-START INSTANCE----------------------------------------
#Mount the volume as follows (volume name included already)
#mount -t ext4 /dev/xvdf /data

#Start HDFS, Hadoop Yarn and Hive; start postgres
#/root/start-hadoop.sh
#/data/start_postgres.sh

# Change to the w205 user:
#su - w205
#hadoop create and remove directories:
# hdfs dfs -mkdir <>
# hdfs dfs -ls <>
# hdfs dfs -rmdir <>
# hdfs dfs -rm <>

#Check to see if the previously created tables are present. Type:
#hive
#show tables;

#force update my repo:
#git fetch origin
#git reset --hard origin/master
