#!/bin/bash

# get file from my github repo
# wget 'https://github.com/linhmtran/exercise_1/raw/master/loading_and_modeling/hospital_data.zip' -o hospital_data.zip
# unzip hospital_data.zip
# note: I ended up just loading the original csv files into the git repo from my local repo because I used the latest 'Complications_and_Deaths_-_Hospital' file.

# remove headers and change name
tail -n +2 Hospital_General_Information.csv > hospitals.csv
tail -n +2 hvbp_hcahps_05_28_2015.csv > survey_responses.csv
tail -n +2 Measure_Dates.csv > measures.csv
tail -n +2 Complications_and_Deaths_-_Hospital.csv > complications.csv
tail -n +2 Timely_and_Effective_Care_-_Hospital.csv > effective_care.csv
rm Hospital_General_Information.csv
rm hvbp_hcahps_05_28_2015.csv
rm Measure_Dates.csv
rm Complications_and_Deaths_-_Hospital.csv
rm Timely_and_Effective_Care_-_Hospital.csv
ls

# remove line breaksin quote blocks for certain files
# gawk -v RS='"' 'NR % 2 == 0 { gsub(/[\r\n]+/, " ") }' hospitals.csv
# gawk -v RS='"' 'NR % 2 == 0 { gsub(/[\r\n]+/, " ") }' complications.csv
# gawk -v RS='"' 'NR % 2 == 0 { gsub(/[\r\n]+/, " ") }' effective_care.csv

# create hdfs directory and put files there
hdfs dfs -mkdir /user/w205/hospital_compare

hdfs dfs -mkdir /user/w205/hospital_compare/hospitals
hdfs dfs -put hospitals.csv /user/w205/hospital_compare/hospitals

hdfs dfs -mkdir /user/w205/hospital_compare/survey_responses
hdfs dfs -put survey_responses.csv /user/w205/hospital_compare/survey_responses

hdfs dfs -mkdir /user/w205/hospital_compare/measures
hdfs dfs -put measures.csv /user/w205/hospital_compare/measures

hdfs dfs -mkdir /user/w205/hospital_compare/complications
hdfs dfs -put complications.csv /user/w205/hospital_compare/complications

hdfs dfs -mkdir /user/w205/hospital_compare/effective_care
hdfs dfs -put effective_care.csv /user/w205/hospital_compare/effective_care

exit
