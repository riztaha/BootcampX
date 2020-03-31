SELECT cohorts.name, count(students.name)
FROM students
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING count(students.name) >= 18
ORDER BY count(students.name);