<<<<<<< HEAD
SELECT
    job_schedule_type,
    AVG(salary_year_avg) AS year_average,
    AVG(salary_hour_avg) AS hour_average
FROM job_postings_fact

WHERE
    job_posted_date > '2023-09-01' :: DATE

GROUP BY
    job_schedule_type


=======
SELECT
    job_schedule_type,
    AVG(salary_year_avg) AS year_average,
    AVG(salary_hour_avg) AS hour_average
FROM job_postings_fact

WHERE
    job_posted_date > '2023-09-01' :: DATE

GROUP BY
    job_schedule_type


>>>>>>> e4a4cfa1904489e32fb6eaa783f986538b47a5d8
