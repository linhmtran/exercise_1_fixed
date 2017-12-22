--Question: Are average scores for hospital quality or procedural variability correlated with patient survey responses?

--Key Tables and Attributes:
--effective_care$provider_id
--effective_care$score
--survey_responses$provider_id
--survey_responses$hcahps_base_score

--Part 1: create table for average score and survey hcahps_base_score. Output:
--hospital name | ave score | survey base score

DROP TABLE quality_survey;
CREATE TABLE quality_survey
  AS SELECT
    provider_id,
    AVG(score) AS ave_score,
    VARIANCE(score) AS var_score,
    hcahps_base_score
  FROM effective_care LEFT JOIN survey_responses
  ON effective_care.provider_id = survey_responses.provider_id
  GROUP BY effective_care.provider_id, hcahps_base_score;

--Part 2: Calculate the correlation between score variance and survey scores
SELECT corr(ave_score,hcahps_base_score), corr(var_score,hcahps_base_score) FROM quality_survey;
