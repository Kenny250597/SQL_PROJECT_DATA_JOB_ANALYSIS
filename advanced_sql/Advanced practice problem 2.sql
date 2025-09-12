SELECT
    COUNT(job_id) AS job_count,
    EXTRACT(MONTH FROM (job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST')) AS date_month
    
FROM job_postings_fact

WHERE 
    job_posted_date BETWEEN '2023-01-01' AND '2023-12-31'

GROUP BY
    date_month

ORDER BY
    date_month

    





