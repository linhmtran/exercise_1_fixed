#w205 Project Exercise 1

## Getting Started
Assume that instance setup from lab 2 has been completed. You should have cloned this from my repo: https://github.com/linhmtran/exercise_1.git

Optional: Use clearhdfs.sh and cleartables.sql to reset any existing tables created for exercise 1.

## Loading and Modeling
Go to "exercise_1/loading_and_modeling"

Step 1: chmod +x loading_data_lake.sh
Step 2: ./loading_data_lake.sh
Step 3: hive -f hive_base_ddl.sql

You should see the final renamed csv files and the tables in hive.

## Transforming
Go to "exercise_1/transforming". Transformations here are to change data types and remove unnecessary columns.

Step 1: chmod +x transformall.sh
Step 2: ./transformall.sh

## Investigation
Go to "exercise_1/investigations"

Review and run each of the .sql files in investigations. Results are included in the .txt files.
