SELECT cohorts.name as cohort, COUNT(assignment_submissions) as total_submissions
FROM assignment_submissions
JOIN students on student_id = students.id
JOIN cohorts on cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;