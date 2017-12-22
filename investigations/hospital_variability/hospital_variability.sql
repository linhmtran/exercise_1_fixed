--Question: Which procedures have the greatest variability between hospitals?

--Key Tables and Attributes:
--effective_care$measure_name
--effective_care$score
--complications$score
--complications$lower_estimate
--complications$higher_estimate

--Steps:
-- I. Look at variability in effective care
-- II. Look at variability in complications

--Desired Output:
-- I. Measure Name | effective score Variance
-- II. Measure Name | complications score variance

SELECT measure_name, VARIANCE(score) AS var_score
FROM effective_care
GROUP BY measure_name
ORDER BY var_score DESC
LIMIT 5;

SELECT measure_name, VARIANCE(score) AS var_score
FROM complications
GROUP BY measure_name
ORDER BY var_score DESC
LIMIT 5;
