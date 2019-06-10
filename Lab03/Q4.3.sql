USE supplier;

SELECT p.pname
FROM parts p
WHERE p.pno IN (
				SELECT sp.parts_pno
				FROM sppj sp
				GROUP BY sp.parts_pno
				HAVING COUNT(DISTINCT sp.suppliers_sno) = (SELECT COUNT(*) FROM suppliers)
                );