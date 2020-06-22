-- Get all cohorts with 18 or more students.
-- Select the cohort name and the total students.
-- Order by total students from smallest to greatest.

SELECT cohorts.name AS cohort_name, COUNT(*) AS total_students
FROM cohorts
JOIN students ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
HAVING COUNT(*) >= 18
ORDER BY COUNT(*);

/*
--Model Answer--
SELECT cohorts.name as cohort_name, count(students.*) AS student_count 
FROM cohorts
JOIN students ON cohorts.id = cohort_id
GROUP BY cohort_name 
HAVING count(students.*) >= 18
ORDER BY student_count;
*/