CREATE EXTERNAL TABLE test (
  name string,
  dob string,
  age string,
  job string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
  "separatorChar" = ",",
  "quoteChar" = "''",
  "escapeChar" = '""'
)
STORED AS TEXTFILE
LOCATION '/user/w205/test';

create table test1 as select name, dob, age from test where dob IS NOT NULL;
