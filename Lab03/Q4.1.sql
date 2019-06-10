USE supplier;

SELECT p.pname
FROM parts p
WHERE p.pno IN (
				SELECT spp.parts_pno
				FROM 
					sppj spp
				GROUP BY 
					spp.parts_pno
				HAVING COUNT(DISTINCT spp.projects_pjno) = 2
				);