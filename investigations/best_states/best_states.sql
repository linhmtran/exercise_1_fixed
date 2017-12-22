--Question: What states are models of high-quality care?

--Key Tables and Attributes:
--effective_care$provider_id
--effective_care$score
--hospitals$state
--hospitals$hospital_name

--Desired Output: hospital name | average score of effective care

SELECT state, AVG(score) AS avg_quality_score
FROM hospitals RIGHT JOIN effective_care on
hospitals.provider_id = effective_care.provider_id
GROUP by state
ORDER BY avg_quality_score DESC
LIMIT 10;
