SELECT teachers.name as teacher,
students.name as student,
assignments.name as assignment,
(completed_at - started_at) as duration
FROM assistance_requests
JOIN students on student_id = students.id
JOIN assignments on assignment_id = assignments.id
JOIN teachers on teacher_id = teachers.id
ORDER BY duration;