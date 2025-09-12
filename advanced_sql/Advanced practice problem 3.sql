<<<<<<< HEAD
SELECT
    cd.name,
    jpf.job_posted_date,
    jpf.job_health_insurance

FROM job_postings_fact AS jpf

LEFT JOIN
    company_dim AS cd

ON jpf.company_id = cd.company_id

WHERE
    EXTRACT(MONTH FROM jpf.job_posted_date) BETWEEN 4 AND 6 AND
    jpf.job_health_insurance = 'TRUE'

ORDER BY
=======
SELECT
    cd.name,
    jpf.job_posted_date,
    jpf.job_health_insurance

FROM job_postings_fact AS jpf

LEFT JOIN
    company_dim AS cd

ON jpf.company_id = cd.company_id

WHERE
    EXTRACT(MONTH FROM jpf.job_posted_date) BETWEEN 4 AND 6 AND
    jpf.job_health_insurance = 'TRUE'

ORDER BY
>>>>>>> e4a4cfa1904489e32fb6eaa783f986538b47a5d8
    jpf.job_posted_date;