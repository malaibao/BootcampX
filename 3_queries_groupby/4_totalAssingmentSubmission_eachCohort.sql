-- Get the total number of assignment submissions for each cohort.
-- Select the cohort name and total submissions.
-- Order the results from greatest to least submissions.

SELECT cohorts.name AS cohort_name, COUNT(assignment_submissions.*) AS total_submission
FROM assignment_submissions
JOIN students ON students.id = assignment_submissions.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY total_submission desc;