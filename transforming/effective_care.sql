--select necessary columns
--cast score into decimal datatype
--filter out line breaks from an extra column
--notice: there are 56313 records with null score,

DROP TABLE effective_care;
CREATE TABLE effective_care
  AS SELECT
    cast(provider_id AS INT),
    condition,
    measure_id,
    measure_name,
    cast(score AS INT),
    sample
  FROM effective_care_raw WHERE measure_id IS NOT NULL;

--should see 105864 records
SELECT COUNT(*) FROM effective_care;
