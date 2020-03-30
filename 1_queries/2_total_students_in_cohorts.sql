SELECT count(name) as count
FROM students
WHERE cohort_id IN (1, 2, 3);