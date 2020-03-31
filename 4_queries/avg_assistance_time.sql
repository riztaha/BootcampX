
-- SELECT ((SELECT (completed_at-started_at) as duration
-- FROM assistance_requests
-- JOIN teachers ON teachers.id = teacher_id
-- JOIN students ON students.id = student_id
-- JOIN assignments ON assignments.id = assignment_id
-- WHERE teachers.name = 'Helmer Rodriguez' AND students.name = 'Maximillian Pfannerstill'
-- ORDER BY duration) - (SELECT (completed_at-started_at) as duration
-- FROM assistance_requests
-- JOIN teachers ON teachers.id = teacher_id
-- JOIN students ON students.id = student_id
-- JOIN assignments ON assignments.id = assignment_id
-- WHERE teachers.name like 'Rosalyn%' AND students.name like 'Wallace%' AND assignments.name = 'Cupiditate explicabo repellendus'
-- ORDER BY duration)) as average_assistance_request_duration

SELECT avg(completed_at - started_at) as average_assistance_request_duration
FROM assistance_requests;