USE bookadoption;

SELECT DISTINCT s.name
FROM students s, enrolls e, courses c, bookuses bu
WHERE 
	s.ssn = e.students_ssn
AND e.courses_cnum = c.cnum
AND bu.courses_cnum = c.cnum
AND bu.books_isbn IN (
						SELECT b.isbn
						FROM books b
						WHERE b.publisher = 'Addison Wesley'
						);