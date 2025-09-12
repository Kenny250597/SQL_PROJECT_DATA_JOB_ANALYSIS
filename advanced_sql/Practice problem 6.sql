CREATE TABLE january_2023 AS

SELECT *
FROM job_postings_fact
WHERE
    EXTRACT(MONTH FROM job_posted_date) = 1;

CREATE TABLE february_2023 AS

SELECT *
FROM job_postings_fact
WHERE
    EXTRACT(MONTH FROM job_posted_date) = 2;

CREATE TABLE march_2023 AS

SELECT *  
FROM job_postings_fact
WHERE
    EXTRACT(MONTH FROM job_posted_date) = 3;



