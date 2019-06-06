USE gradebook;

SELECT s.fname, s.minit, s.lname
FROM
	students s
WHERE 
	s.sid NOT IN 	(
					SELECT DISTINCT e.students_sid 
                    FROM
						enrolls e
					)