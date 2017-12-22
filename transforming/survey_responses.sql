DROP TABLE survey_responses;
CREATE TABLE survey_responses
  AS SELECT
    provider_id,
    overall_rating_of_hospital_achievement_points,
    overall_rating_of_hospital_improvement_points,
    overall_rating_of_hospital_dimension_score,
    cast(hcahps_base_score as int),
    cast(hcahps_consistency_score as int)
  FROM survey_responses_raw;

--should see 3074 records
SELECT COUNT(*) FROM survey_responses;
