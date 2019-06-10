USE bookadoption;

SELECT DISTINCT s.name
FROM
	students s,
	enrolls e, 
    courses c,
    bookuses bu
WHERE 
	s.ssn = e.students_ssn
AND e.courses_cnum = c.cnum
AND c.cnum = bu.courses_cnum
AND bu.books_isbn NOT IN (
							SELECT b.isbn
							FROM books b
							WHERE 
								b.author = 'Navathe'
							AND b.publisher = 'Addison Wesley'
						);