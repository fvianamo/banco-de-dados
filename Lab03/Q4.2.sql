USE supplier;

SELECT s.sname
FROM suppliers s 
WHERE s.sno IN (
				SELECT sp.suppliers_sno
				FROM sppj sp
				WHERE sp.projects_pjno = 'J1'
				GROUP BY sp.suppliers_sno
				HAVING COUNT(DISTINCT sp.parts_pno) > 2
                );