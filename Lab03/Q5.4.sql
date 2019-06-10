USE bookadoption;

SELECT c.dept
FROM 
	courses c,
    bookuses bu, 
    books b
WHERE 
	c.cnum = bu.courses_cnum
AND bu.books_isbn = b.isbn
AND b.author = 'Navathe'
AND b.publisher = 'Addison Wesley'
GROUP BY c.dept
HAVING COUNT(DISTINCT b.isbn) = (
									SELECT COUNT(*)
									FROM books b1
									WHERE 
										b1.author = 'Navathe'
									AND b1.publisher = 'Addison Wesley'
								);