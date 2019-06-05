USE mailorder;

SELECT DISTINCT c.cname
FROM customers c, orders o, employees e, zipcodes z
	WHERE o.cno = c.cno
		AND o.eno = e.eno
        AND e.zip = z.zip
        AND z.city LIKE '%Wichita%';