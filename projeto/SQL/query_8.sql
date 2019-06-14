-- VALOR TOTAL FISCALIZADO POR FISCAL
SELECT 
	SUM(item.valor) AS valor_fiscalizado, fis.nome
FROM 
	fiscal fis, item_de_despesa item, fatura f, contrato c
WHERE 
	fis.matricula = c.fk_fiscal AND f.fk_contrato = c.idcontrato AND item.fk_fatura = f.id_fatura
GROUP BY fis.nome
