USE gest_contratos;

-- Quantidade de contratos por UGR
SELECT 
	u.descricao AS UGR,
	COUNT(DISTINCT c.idcontrato) AS qtd_contratos
FROM ugr u, contrato c
WHERE c.fk_ugr = u.idugr
GROUP BY u.descricao