SELECT
    job_schedule_type,
    AVG(salary_year_avg) AS year_average,
    AVG(salary_hour_avg) AS hour_average
FROM job_postings_fact

WHERE
    job_posted_date > '2023-09-01' :: DATE

GROUP BY
    job_schedule_type


