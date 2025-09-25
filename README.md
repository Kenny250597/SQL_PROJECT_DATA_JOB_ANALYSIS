# Introduction
Dive into the data job market! Focusing on data analyst roles, this project explores top-paying jobs, in-demand skills, where high demand meets high salary in data analytics.

SQL queries? Can check them out here: [project_sql folder](/project_sql/)

# Background
Driven by a quest to navigate the dara analyst job market more effectively, this project was born from a desire to pinpoint top-paid and in-demand skills, streamlining others work to find optimal jobs.

Data hails from my [SQL Course](). It's gacked with insights on job titles, salaries, locations and essential skills.

### The questions I wanted to answer through my SQL queries were:

1. What are the top-paying data analyst jobs?
2. What skills are required for these top-paying jobs?
3. What skills are most in demand for data analysts?
4. Which skills are associated with higher salaries?
5. What are the most optimal skills to learn?

# Tools used

For my deep dive into the data analyst job market, I harnessed the power of several key tools:

- SQL: The backbone of my analysts, allowing me to query the database and unearth critical insights.
- PostgreSQL: The chosen database management system, ideal for handling the job posting data.
- Visual Studio Code: My go-to for database management and executing SQL queries.
- Git & GitHub: Essential for version control ad sharing my SQL scripts and analysism ensuring collaboration and project tracking.

# Analysis
Each query for this project aimed at investigating specific aspects of the data analyst job market. Here's how I approached each question:

### 1. Top Paying Data Analyst Jobs
To identify the highest-payng roles. I filtered data analyst positions by average yaerly salary and location, focusing on remote jobs. This query highlight the high paying opportunities in the field.

```SQL
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

```
Here's the breakdown of the top data analyst jobs in 2023:
- **Wide Salary Range** : Top 10 paying data analyst roles span from $184,000 to $650,000, indicating significant salary potential in the field.
- **Diverese Employers**: Companies like SmartAsset, Meta and AT&T are among those offering high salaries, showing a broad interest across different industries.
- **Job Title Variety**: There's a high diversity in job titles, from Data Analyst to Director of Analytics, reflecting varied roles and specialization witin data analystics.

![Title of image](url/pathway)

*Bar graph visualizig the salary for the top 10 salaries for data analyst; ChatGPT generated this raph from my SQL query results*
# What can be learned
Throughout this adventure, I've turbocharged my SQL toolkit with some serious firepower:

- **Complex Query Crafting**: Mastered the art of advanced SQL, merging tables like a pro and wielding WITH clauses for ninja-level temp table maneuvers.
- **Data Aggregation**: Got cozy with GROUP BY and turned aggregate functions like COUNT() and AVG() into my data-summarizing sidekicks.
- **Analytical Wizardry**: Leveled up my real-world puzzle-solving skills, turning questions into actionable, insightful

# Conclusion

### Insights

From the analysis, several general insights emerged:
1. **Top-Paying Data Analyst**: The highest-paying jobs for data analysis that allow remote work offer a wide range of as salaries, the highest at $650,000.
2. **Skills for Top-Paying Jobs**: High-paying data analyst jobs require advanced proficiency in SQL, suggesting it's a critical skill for earning a top salary.
3. **Most In-Demand Skills**: SQL is also the most demanded skill in the data analyst job market, thus making it essential for job seekers.
4. **Skills with Higher Salaries**: Specialized skills, such as SVN and Solidity, are associated with the highest salaries, indicating a premium on niche expertise.
5. **Optimal Skills for Job Market Value**: SQL leads in demand and offers fora high average salary, positioning it as one of the most optimal skills for data analysts to learn to maximum their market value.

### Closing Thoughts

This project enhanced my SQL skils and provided valuable insights into the data analysts job market. The findings from the analysis serve as a guide to prioritizing skill development and job search efforts. Aspiring data analysts can better position themselves in a competitive job market by focusing on high-demand, high-salary skills. This exploration highlights the importance of continous learning and adaptation to emerging trends in the field of data analytics.