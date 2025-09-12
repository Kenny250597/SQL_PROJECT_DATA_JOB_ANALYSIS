<<<<<<< HEAD
-- CASE expression = IF condition 

SELECT
    COUNT(job_id) AS number_of_jobs,

    CASE
        WHEN job_location = 'Anywhere' THEN 'Remote'
        WHEN job_location = 'New York, NY' THEN 'Local'
        ELSE 'Onsite'
    END AS location_category

FROM job_postings_fact

WHERE
    job_title_short = 'Data Analyst'

GROUP BY
    location_category

ORDER BY
=======
-- CASE expression = IF condition 

SELECT
    COUNT(job_id) AS number_of_jobs,

    CASE
        WHEN job_location = 'Anywhere' THEN 'Remote'
        WHEN job_location = 'New York, NY' THEN 'Local'
        ELSE 'Onsite'
    END AS location_category

FROM job_postings_fact

WHERE
    job_title_short = 'Data Analyst'

GROUP BY
    location_category

ORDER BY
>>>>>>> e4a4cfa1904489e32fb6eaa783f986538b47a5d8
    number_of_jobs DESC;