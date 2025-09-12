-- COMMON TABLE EXPRESSIONS (CTEs) = define a temporary result set that you can reference, defined with WITH


-- PRACTICE 1

WITH january_jobs AS (
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 1

)

SELECT *
FROM january_jobs


-- PRACTICE 2

/*

Find companies that have the most job openings
- Get total number of job postings per company id
- Return the total number of jobs the the company name

*/

WITH company_job_count AS (

    SELECT 
        company_id,
        COUNT(*) AS number_of_jobs
    FROM job_postings_fact
    GROUP BY
        company_id

)


SELECT
    name AS company_name,
    number_of_jobs

FROM company_dim
LEFT JOIN company_job_count ON company_job_count.company_id = company_dim.company_id
ORDER BY
    number_of_jobs DESC