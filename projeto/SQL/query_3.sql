USE gest_contratos;

-- Valor quasto por UGR por mês
SELECT 
	u.descricao AS UGR, 
	f.mes_referencia, 
    SUM(i.valor) AS valor_gasto
FROM 
	ugr u, 
	contrato c, 
	fatura f,  
    item_de_despesa i
WHERE 
	c.fk_ugr = u.idugr
AND c.idcontrato = f.fk_contrato
AND i.fk_fatura = f.id_fatura
GROUP BY u.descricao, f.mes_referencia;