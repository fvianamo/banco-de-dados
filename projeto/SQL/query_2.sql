USE gest_contratos;

-- UGR que possui a maior quantidade de contratos associados a ela
SELECT u.descricao AS UGR
FROM 
	ugr u, 
	contrato c
WHERE 
	c.fk_ugr = u.idugr
GROUP BY u.idugr
ORDER BY COUNT(*) DESC
LIMIT 1; 