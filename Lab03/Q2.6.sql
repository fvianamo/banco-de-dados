USE mailorder;

SELECT c.cname
FROM 
	customers c
WHERE c.cno NOT IN 	(
					SELECT DISTINCT o.cno
                    FROM
						orders o
					);