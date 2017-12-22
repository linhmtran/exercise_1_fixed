--Question: What hospitals are models of high-quality care?

--Key Tables and Attributes:
--effective_care$provider_id
--effective_care$score
--hospitals$hospital_name
--hospitals$hospital_overall_rating

--Desired Output: hospital name | average score of effectice care

SELECT hospital_name, AVG(score) AS avg_quality_score
FROM hospitals RIGHT JOIN effective_care on
hospitals.provider_id = effective_care.provider_id
GROUP BY hospital_name 
ORDER BY avg_quality_score DESC
LIMIT 10;
