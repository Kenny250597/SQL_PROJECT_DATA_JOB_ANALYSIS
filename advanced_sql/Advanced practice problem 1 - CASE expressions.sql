<<<<<<< HEAD
SELECT
    job_title_short,
    salary_year_avg,

    CASE
        WHEN salary_year_avg < 100000 THEN 'low_salary'
        WHEN salary_year_avg BETWEEN 100000 AND 300000 THEN 'standard_salary'
        ELSE 'high_salary'
    END AS salary_range

FROM job_postings_fact

WHERE
    salary_year_avg IS NOT NULL AND
    job_title_short = 'Data Analyst'

ORDER BY
=======
SELECT
    job_title_short,
    salary_year_avg,

    CASE
        WHEN salary_year_avg < 100000 THEN 'low_salary'
        WHEN salary_year_avg BETWEEN 100000 AND 300000 THEN 'standard_salary'
        ELSE 'high_salary'
    END AS salary_range

FROM job_postings_fact

WHERE
    salary_year_avg IS NOT NULL AND
    job_title_short = 'Data Analyst'

ORDER BY
>>>>>>> e4a4cfa1904489e32fb6eaa783f986538b47a5d8
    salary_year_avg DESC