USE supplier;

SELECT s.sname
FROM suppliers s
WHERE s.sno IN (
				SELECT qtPecas.sno
                FROM(
						SELECT sp.suppliers_sno AS sno, sp.projects_pjno AS pjno, COUNT(DISTINCT sp.parts_pno) AS qtdPecas 
						FROM sppj sp
						GROUP BY sp.suppliers_sno, sp.projects_pjno
						HAVING COUNT(DISTINCT sp.parts_pno) >= 2
					) qtPecas
				GROUP BY qtPecas.sno
                HAVING COUNT(DISTINCT qtPecas.pjno) >= 2
				);