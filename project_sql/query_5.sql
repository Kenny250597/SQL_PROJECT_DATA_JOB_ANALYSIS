/*

QUERY 5 - most optimal skills to learn (high demand and high paying)

*/

WITH skills_demand AS (

    SELECT
        skills_dim.skill_id,
        skills_dim.skills,
        COUNT(job_table.job_id) AS skill_count
    FROM job_postings_fact AS job_table

    INNER JOIN skills_job_dim AS skill ON job_table.job_id = skill.job_id
    INNER JOIN skills_dim ON skill.skill_id = skills_dim.skill_id

    WHERE
        job_table.job_title_short = 'Data Analyst' AND
        job_table.salary_year_avg IS NOT NULL AND
        job_table.job_work_from_home = True

    GROUP BY skills_dim.skill_id

), average_salary AS (

    SELECT
        skill.skill_id,
        ROUND(AVG(job_table.salary_year_avg),0) AS avg_salary
    FROM job_postings_fact AS job_table

    INNER JOIN skills_job_dim AS skill ON job_table.job_id = skill.job_id
    INNER JOIN skills_dim ON skill.skill_id = skills_dim.skill_id

    WHERE
        job_table.job_title_short = 'Data Analyst' AND
        job_table.salary_year_avg IS NOT NULL AND
        job_table.job_work_from_home = True

    GROUP BY skill.skill_id

)

SELECT
    skills_demand.skill_id,
    skills_demand.skills,
    skill_count,
    avg_salary
FROM skills_demand

INNER JOIN average_salary ON skills_demand.skill_id = average_salary.skill_id

WHERE
    skill_count > 10

ORDER BY
    skill_count DESC,
    avg_salary DESC

LIMIT 25