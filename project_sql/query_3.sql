/*

QUERY 3 - most in-demand skills for my role
- top skills based on salary for my role
- most optimal skills to learn (high demand and high paying)


*/

/* 

WITH remote_jobs_skills AS (

    SELECT 

        skills_job_dim.skill_id,
        COUNT(*) AS skill_count

    FROM skills_job_dim

    INNER JOIN job_postings_fact ON job_postings_fact.job_id = skills_job_dim.job_id

    WHERE
        job_postings_fact.job_work_from_home = True AND
        job_postings_fact.job_title_short = 'Data Analyst'

    GROUP BY
        skills_job_dim.skill_id
)

SELECT
    remote_jobs_skills.skill_id,
    remote_jobs_skills.skill_count,
    skills_dim.skills
FROM remote_jobs_skills

INNER JOIN skills_dim ON remote_jobs_skills.skill_id = skills_dim.skill_id
ORDER BY
    SKILL_COUNT DESC
LIMIT 5;

*/



SELECT
    skills_dim.skills,
    COUNT(job_table.job_id) AS skill_count
FROM job_postings_fact AS job_table

INNER JOIN skills_job_dim AS skill ON job_table.job_id = skill.job_id
INNER JOIN skills_dim ON skill.skill_id = skills_dim.skill_id

WHERE
    job_table.job_title_short = 'Data Analyst' AND
    job_table.job_work_from_home = True

GROUP BY skills

ORDER BY skill_count DESC

LIMIT 5