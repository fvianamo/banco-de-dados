USE gest_contratos;

-- localidades 	que já gastaram mais de um mil reais
SELECT 
	l.sigla,
    l.descricao
FROM 
	localidade l,
    item_de_despesa i
WHERE
	l.sigla = i.fk_localidade
GROUP BY l.sigla
HAVING SUM(i.valor) > 1000