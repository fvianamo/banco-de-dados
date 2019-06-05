USE mailorder;

SELECT DISTINCT e.ename, z.city
FROM employees e, orders ox, zipcodes z
WHERE e.zip = z.zip
	AND e.eno = ox.eno
    AND ox.ono IN (
		SELECT o.ono
		FROM orders o, odetails od, parts p
		WHERE o.ono = od.ono
			AND od.pno = p.pno
		GROUP BY o.ono
		HAVING SUM(od.qty * p.price) > 50 
    );
    