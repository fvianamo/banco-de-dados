USE bookadoption;
                        
SELECT c.cname
FROM courses c
WHERE c.cnum IN (
					SELECT bu.courses_cnum
					FROM bookuses bu
					GROUP BY bu.courses_cnum
					HAVING COUNT(DISTINCT bu.books_isbn) > 1
                    );