USE bookadoption;

SELECT DISTINCT c.dept
FROM courses c, bookuses bu, books b
WHERE 
	bu.courses_cnum = c.cnum
AND bu.books_isbn = b.isbn
AND b.publisher = 'Addison Wesley'
AND c.dept IN (
				SELECT c.dept
				FROM courses c, bookuses bu, books b
				WHERE 
					bu.courses_cnum = c.cnum
				AND bu.books_isbn = b.isbn
				GROUP BY c.dept
				HAVING 
					COUNT(DISTINCT b.publisher) = 1
);

