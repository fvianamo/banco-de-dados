USE gest_contratos;

-- Lista de contratos que não possuem lançamento de fatura
SELECT c.idcontrato
FROM 
	contrato c
WHERE c.idcontrato NOT IN 	(
								SELECT DISTINCT f.fk_contrato 
                                FROM fatura f
							);