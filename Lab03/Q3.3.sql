USE gradebook;

SELECT DISTINCT s.sid
FROM
	students s, enrolls e, courses c
WHERE 
	s.sid = e.students_sid
AND e.courses_secno = c.secno
AND c.cno IN ('csc226', 'csc227');