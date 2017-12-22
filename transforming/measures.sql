DROP TABLE measures;
CREATE TABLE measures
  AS SELECT
    measure_id,
    measure_name,
    measure_start_quarter,
    measure_start_date,
    measure_end_quarter,
    measure_end_date
  FROM measures_raw WHERE measure_name iS NOT NULL;

-- CREATE TABLE date_temp AS
-- SELECT
-- cast(
--   concat (substr(measure_start_date, 7, 4),
--    '-',
--    substr(measure_start_date,1,2),
--    '-',
--    substr(measure_start_date, 4, 2),
--  )
--  AS date) AS my_date,
--  measure_start_date
--  FROM measures;

--should see 163 records
SELECT COUNT(*) FROM measures;
