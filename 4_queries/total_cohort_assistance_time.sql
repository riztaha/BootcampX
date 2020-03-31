SELECT avg(avg_total.total_duration) as average_total_duration
FROM (SELECT SUM(completed_at - started_at) as total_duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY total_duration) as avg_total;