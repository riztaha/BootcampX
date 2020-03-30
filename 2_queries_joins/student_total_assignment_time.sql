SELECT sum(duration)
FROM assignment_submissions
JOIN students ON student_id = students.id
where name = 'Ibrahim Schimmel';