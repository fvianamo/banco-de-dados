USE mailorder;

SELECT c.cname
FROM 
	customers c
WHERE c.cno IN 	(
					SELECT DISTINCT o.cno
                    FROM
						orders o
					GROUP BY o.cno
					HAVING 
						COUNT(*) = 2
					);