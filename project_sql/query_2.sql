/*

QUERY 2
- top paying jobs for my role
- skills required for these roles
- most in-demand skills for my role
- top skills based on salary for my role
- most optimal skills to learn (high demand and high paying)

*/

WITH top_paying_jobs AS (

    SELECT
        jpf.job_id,
        cd.name AS company_name,
        jpf.job_title,
        jpf.salary_year_avg
    FROM job_postings_fact AS jpf

    LEFT JOIN company_dim AS cd ON jpf.company_id = cd.company_id

    WHERE
        jpf.job_title_short = 'Data Analyst' AND
        jpf.job_work_from_home = TRUE AND
        jpf.salary_year_avg IS NOT NULL

    ORDER BY 
        jpf.salary_year_avg DESC

    LIMIT 10

)

SELECT
    tpj.*,
    sd.skills
    
FROM top_paying_jobs AS tpj

INNER JOIN skills_job_dim AS sjd ON tpj.job_id = sjd.job_id
INNER JOIN skills_dim AS sd ON sjd.skill_id = sd.skill_id

ORDER BY tpj.salary_year_avg DESC