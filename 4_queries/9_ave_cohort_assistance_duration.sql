SELECT AVG(total_duration) AS average_total_duration
FROM (
  SELECT cohort_id AS cohort, SUM(completed_at - started_at) AS total_duration
  FROM assistance_requests
  JOIN students ON student_id = students.id
  JOIN cohorts ON cohort_id = cohorts.id
  GROUP BY cohort_id
  ORDER BY total_duration
) AS total_durations;
