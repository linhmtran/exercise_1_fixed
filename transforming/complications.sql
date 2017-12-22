--select necessary columns
--cast score, lower_estimate, higher_estimate into decimal datatype
--filter out null or invalid provider_id records (this will correct for line breaks from 'location' column)
--notice: there are 38467 records with null score; 175047 with null provider_id that need to be filtered

DROP TABLE complications;
CREATE TABLE complications
  AS SELECT
    cast(provider_id as INT),
    measure_id,
    measure_name,
    compared_to_national,
    cast(denominator AS DECIMAL (5,1)),
    cast(score AS DECIMAL(5,1)),
    cast(lower_estimate AS DECIMAL(5,1)),
    cast(higher_estimate AS DECIMAL(5,1))
  FROM complications_raw WHERE measure_id IS NOT NULL;

--see 91428 records
SELECT COUNT(*) FROM complications;
