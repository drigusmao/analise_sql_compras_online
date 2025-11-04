SELECT * FROM vendas; -- Vizualizando a tabela inteira

SELECT COUNT(*) AS total_vendas FROM vendas; -- Número total de vendas da tabela

SELECT id_cliente, COUNT (*) AS compras FROM vendas GROUP BY id_cliente ORDER BY compras DESC LIMIT 5; -- Selecionando os 5 clientes que mais fizeram compras



