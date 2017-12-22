#!/bin/bash

# remove files
hdfs dfs -rm /user/w205/hospital_compare/hospitals/hospitals.csv
hdfs dfs -rm /user/w205/hospital_compare/survey_responses/survey_responses.csv
hdfs dfs -rm /user/w205/hospital_compare/measures/measures.csv
hdfs dfs -rm /user/w205/hospital_compare/complications/complications.csv
hdfs dfs -rm /user/w205/hospital_compare/effective_care/effective_care.csv



#remove directory
hdfs dfs -rmdir /user/w205/hospital_compare/hospitals
hdfs dfs -rmdir /user/w205/hospital_compare/survey_responses
hdfs dfs -rmdir /user/w205/hospital_compare/measures
hdfs dfs -rmdir /user/w205/hospital_compare/complications
hdfs dfs -rmdir /user/w205/hospital_compare/effective_care
hdfs dfs -rmdir /user/w205/hospital_compare
