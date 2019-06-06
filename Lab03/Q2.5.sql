USE mailorder;
    
SELECT c.cname
FROM customers c, orders o, odetails od
WHERE 
	c.cno = o.cno
AND o.ono = od.ono
AND od.pno IN	(
				SELECT p.pno
				FROM 
					parts p
				WHERE 
					p.price < 20
				)
GROUP BY c.cno
HAVING COUNT(od.pno) >= (SELECT COUNT(*) FROM parts p1 WHERE p1.price < 20) ;