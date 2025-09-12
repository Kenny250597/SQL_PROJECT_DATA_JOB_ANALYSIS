<<<<<<< HEAD
-- SUBQUERY/CTE PRACTICE --

/* Practice Problem 1

- identify top 5 skills most frequently used in job postings
- find skill IDs with highest count
- find skill name associated with those skill IDs

*/

WITH top_skills AS (

    SELECT 
        skill_id,
        COUNT(job_id) AS skill_count
    FROM skills_job_dim
    GROUP BY skill_id
    
)

SELECT
    ts.skill_id,
    ts.skill_count,
    sd.skills AS skill_name
FROM skills_dim AS sd
LEFT JOIN top_skills AS ts ON ts.skill_id = sd.skill_id
ORDER BY
        skill_count DESC
LIMIT 5;



/* Practice Problem 2

- determine size category (small, medium, large) for each company by identifying number of job postings
- find total jobs per postings for each company
- small < 10 job postings
- medium BETWEEN 10 AND 50 job postings
- large > 50 job postings
- use subquery/cte to aggregate job counts before classifying based on size

*/

WITH size_category AS (

    SELECT
        company_id,
        COUNT(*) AS number_of_jobs

    FROM job_postings_fact

    GROUP BY company_id
    

)

SELECT
    sc.company_id,
    CASE
        WHEN number_of_jobs < 10 THEN 'small'
        when number_of_jobs BETWEEN 10 and 50 THEN 'medium'
        ELSE 'large'
    END AS category,
    cd.name

FROM size_category AS sc
INNER JOIN company_dim AS cd ON cd.company_id = sc.company_id
ORDER BY 
        company_id
=======
-- SUBQUERY/CTE PRACTICE --

/* Practice Problem 1

- identify top 5 skills most frequently used in job postings
- find skill IDs with highest count
- find skill name associated with those skill IDs

*/

WITH top_skills AS (

    SELECT 
        skill_id,
        COUNT(job_id) AS skill_count
    FROM skills_job_dim
    GROUP BY skill_id
    
)

SELECT
    ts.skill_id,
    ts.skill_count,
    sd.skills AS skill_name
FROM skills_dim AS sd
LEFT JOIN top_skills AS ts ON ts.skill_id = sd.skill_id
ORDER BY
        skill_count DESC
LIMIT 5;



/* Practice Problem 2

- determine size category (small, medium, large) for each company by identifying number of job postings
- find total jobs per postings for each company
- small < 10 job postings
- medium BETWEEN 10 AND 50 job postings
- large > 50 job postings
- use subquery/cte to aggregate job counts before classifying based on size

*/

WITH size_category AS (

    SELECT
        company_id,
        COUNT(*) AS number_of_jobs

    FROM job_postings_fact

    GROUP BY company_id
    

)

SELECT
    sc.company_id,
    CASE
        WHEN number_of_jobs < 10 THEN 'small'
        when number_of_jobs BETWEEN 10 and 50 THEN 'medium'
        ELSE 'large'
    END AS category,
    cd.name

FROM size_category AS sc
INNER JOIN company_dim AS cd ON cd.company_id = sc.company_id
ORDER BY 
        company_id
>>>>>>> e4a4cfa1904489e32fb6eaa783f986538b47a5d8
