-- MOSTRA OS DIAS E MESES RESTANTES DO CONTRATO JUNTO COM SUA UGR E SEU FISCAL
SELECT 
	DATEDIFF(data_vigencia, now()) dias_restantes, CEILING(DATEDIFF(data_vigencia, now())/12) as meses_restantes, 
    u.descricao as ugr, f.nome 
FROM 
	contrato c, ugr u, fiscal f
WHERE 
	c.fk_ugr = u.idugr AND f.matricula = c.fk_fiscal