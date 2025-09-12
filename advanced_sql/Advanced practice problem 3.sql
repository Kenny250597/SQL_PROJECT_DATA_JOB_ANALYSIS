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
    jpf.job_posted_date;