SELECT students.name AS student_name, count(assistance_requests) AS total_requests
FROM students
JOIN assistance_requests ON students.id = student_id
WHERE name = 'Elliot Dickinson'
GROUP BY students.name;
