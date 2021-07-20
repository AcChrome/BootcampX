SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration, 
avg(assignments.duration) as average_estimate_duration
from assignment_submissions
JOIN students ON students.id = student_id
join assignments ON assignments.id = assignment_id
WHERE end_date IS NULL 
GROUP By student
HAVING avg(assignment_submissions.duration) < avg(assignments.duration) 
ORDER BY average_estimate_duration;