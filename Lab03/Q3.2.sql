USE gradebook;

SELECT e.students_sid
FROM 
	courses c, enrolls e
WHERE 
	c.secno = e.courses_secno
AND(	c.cno = 'csc226'
	OR  c.cno = 'csc227')
GROUP BY e.students_sid
HAVING COUNT(*) = 2;