USE gradebook;

SELECT s.fname, s.minit, s.lname 
FROM 
	students s, enrolls e, courses c, catalogue ca
WHERE 
	s.sid = e.students_sid
AND e.courses_secno = c.secno
AND c.cno = ca.cno
AND ca.ctitle = 'Automata'
AND c.term = 'f96';