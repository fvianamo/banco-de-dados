-- SALDO ATUAL DOS CONTRATOS
SELECT 
	c.valor_total - SUM(item.valor) AS saldo_atual, c.valor_total AS saldo_inicial, c.data_inicio, c.data_vigencia, c.idcontrato
FROM 
	contrato c, fatura f, item_de_despesa item
WHERE 
	c.idcontrato = f.fk_contrato AND f.id_fatura = item.fk_fatura
GROUP BY 
	c.idcontrato, c.data_inicio, c.data_vigencia, c.idcontrato
