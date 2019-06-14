-- SOMA DOS GASTOS E SEUS TIPOS POR UGR
SELECT 
	SUM(item.valor) AS total, t.descricao, item.fk_localidade, t.und_medida, ugr.descricao
FROM 
	 item_de_despesa item, fatura f, contrato c, tipo_despesa t, ugr ugr
WHERE 
	 f.fk_contrato = c.idcontrato AND item.fk_fatura = f.id_fatura AND item.fk_tipo_de_despesa = t.sigla AND ugr.idugr = c.fk_ugr
GROUP BY t.descricao, item.fk_localidade, t.und_medida, ugr.descricao
ORDER BY fk_localidade