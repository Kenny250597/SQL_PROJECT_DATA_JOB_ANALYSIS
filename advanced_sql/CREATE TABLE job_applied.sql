<<<<<<< HEAD
CREATE TABLE job_applied (
    job_id INT,
    application_sent_date DATE,
    custom_resume BOOLEAN,
    resume_file_name VARCHAR (255),
    cover_letter_sent BOOLEAN,
    cover_letter_file_name VARCHAR (255),
    status VARCHAR (50)

);

SELECT *
=======
CREATE TABLE job_applied (
    job_id INT,
    application_sent_date DATE,
    custom_resume BOOLEAN,
    resume_file_name VARCHAR (255),
    cover_letter_sent BOOLEAN,
    cover_letter_file_name VARCHAR (255),
    status VARCHAR (50)

);

SELECT *
>>>>>>> e4a4cfa1904489e32fb6eaa783f986538b47a5d8
FROM job_applied