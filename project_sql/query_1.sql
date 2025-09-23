/*

Question: What are the top paying data analyst jobs?
- identity top 10 highest-paying data analyst jobs that are available remotely
- focuses on job postings with specified salaries (remove nulls)
- identify based on company names as well
- why? highlight the top pauing opportunities for data analysts, offering insights

*/

SELECT
    jpf.job_id,
    cd.name AS company_name,
    jpf.job_title,
    jpf.job_location,
    jpf.job_schedule_type,
    jpf.job_work_from_home,
    jpf.salary_year_avg,
    jpf.job_posted_date
FROM job_postings_fact AS jpf

LEFT JOIN company_dim AS cd ON jpf.company_id = cd.company_id

WHERE
    jpf.job_title_short = 'Data Analyst' AND
    jpf.job_work_from_home = TRUE AND
    jpf.salary_year_avg IS NOT NULL

ORDER BY 
    jpf.salary_year_avg DESC

LIMIT 10