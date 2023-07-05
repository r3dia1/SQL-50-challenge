# Write your MySQL query statement below
SELECT t1.student_id, student_name, t2.subject_name, COUNT(t3.subject_name) as attended_exams
FROM Students t1
CROSS JOIN Subjects t2
LEFT JOIN Examinations t3 ON t1.student_id = t3.student_id AND t2.subject_name = t3.subject_name
GROUP BY student_name, t2.subject_name
ORDER BY t1.student_id, t2.subject_name;