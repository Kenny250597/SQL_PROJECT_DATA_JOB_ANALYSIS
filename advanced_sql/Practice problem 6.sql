<<<<<<< HEAD
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



=======
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



>>>>>>> e4a4cfa1904489e32fb6eaa783f986538b47a5d8
