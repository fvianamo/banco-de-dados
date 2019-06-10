USE supplier;

SELECT pr.pjname
FROM projects pr
WHERE pr.pjno IN (
					SELECT sp.projects_pjno
					FROM sppj sp
					GROUP BY sp.projects_pjno
					HAVING COUNT( DISTINCT sp.suppliers_sno) = 1
					);