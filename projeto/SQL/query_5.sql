USE gest_contratos;

-- gasto total por localidade
SELECT 
	l.sigla,
    l.descricao,
    SUM(i.valor) AS valor_gasto
FROM 
	localidade l,
    item_de_despesa i
WHERE
	l.sigla = i.fk_localidade
GROUP BY l.sigla