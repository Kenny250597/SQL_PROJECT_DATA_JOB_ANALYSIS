/*

QUERY 4 - top skills based on salary for my role
- most optimal skills to learn (high demand and high paying)

*/


SELECT
    skills_dim.skills,
    ROUND(AVG(job_table.salary_year_avg),0) AS avg_salary
FROM job_postings_fact AS job_table

INNER JOIN skills_job_dim AS skill ON job_table.job_id = skill.job_id
INNER JOIN skills_dim ON skill.skill_id = skills_dim.skill_id

WHERE
    job_table.job_title_short = 'Data Analyst' AND
    job_table.salary_year_avg IS NOT NULL AND
    job_table.job_work_from_home = True

GROUP BY skills

ORDER BY avg_salary DESC

LIMIT 25