/*

SUBQUERIES

SELECT final_q.emp_name, final_q.dept_name, s.salary
FROM (
    SELECT e.id AS emp_id, e.name AS emp_name, d.dept_name
    FROM (
        SELECT id, name, dept_id
        FROM employees
    ) e
    JOIN departments d ON e.dept_id = d.id
) final_q
JOIN salaries s ON final_q.emp_id = s.emp_id;

*/

/*

CTE

WITH emp_q AS (
    SELECT id, name, dept_id
    FROM employees
),
emp_dept_q AS (
    SELECT e.id AS emp_id, e.name AS emp_name, d.dept_name
    FROM emp_q e
    JOIN departments d ON e.dept_id = d.id
)
SELECT ed.emp_name, ed.dept_name, s.salary
FROM emp_dept_q ed
JOIN salaries s ON ed.emp_id = s.emp_id;

*/





WITH remote_jobs_skills AS (

    SELECT 
        -- skills_job_dim.job_id,
        skills_job_dim.skill_id,
        -- job_postings_fact.job_work_from_home,
        COUNT(*) AS skill_count

    FROM skills_job_dim

    INNER JOIN job_postings_fact ON job_postings_fact.job_id = skills_job_dim.job_id

    WHERE
        job_postings_fact.job_work_from_home = True

    GROUP BY
        skills_job_dim.skill_id
)

SELECT *
FROM remote_jobs_skills


