USE gradebook;

SELECT s.fname, s.minit, s.lname
FROM
	students s, enrolls e, courses c
WHERE 
	s.sid = e.students_sid
AND e.courses_secno = c.secno
GROUP BY s.sid
HAVING COUNT(*) >= (SELECT COUNT(*) FROM courses);