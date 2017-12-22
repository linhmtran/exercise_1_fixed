--select only necessary columns, change type of data

DROP TABLE hospitals;
CREATE TABLE hospitals
  AS SELECT
    cast(provider_id AS INT),
    hospital_name,
    address,
    city,
    state,
    cast(zip_code AS INT),
    county_name,
    phone_number,
    hospital_type,
    hospital_ownership,
    emergency_services,
    meets_criteria_for_meaningful_use_of_ehrs,
    cast(hospital_overall_rating AS INT),
    hospital_overall_rating_footnote,
    mortality_national_comparison,
    mortality_national_comparison_footnote,
    safety_of_care_national_comparison,
    safety_of_care_national_comparison_footnote,
    readmission_national_comparison,
    readmission_national_comparison_footnote,
    patient_experience_national_comparison,
    patient_experience_national_comparison_footnote,
    effectiveness_of_care_national_comparison,
    effectiveness_of_care_national_comparison_footnote,
    timeliness_of_care_national_comparison,
    timeliness_of_care_national_comparison_footnote,
    efficient_use_of_medical_imaging_national_comparison,
    efficient_use_of_medical_imaging_national_comparison_footnote
  FROM hospitals_raw WHERE hospital_name IS NOT NULL AND provider_id IS NOT NULL;

--should see (4812) records
SELECT COUNT(*) FROM hospitals;
