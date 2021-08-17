SELECT cohorts.name, COUNT(students.*) AS students_count
FROM students
JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING count(students.*) >= 18
ORDER BY students_count;
