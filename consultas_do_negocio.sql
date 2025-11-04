-- Vizualizando a tabela inteira
SELECT * FROM vendas; 

-- Número total de vendas da tabela
SELECT COUNT(*) AS total_vendas FROM vendas;

-- Selecionando os 5 clientes que mais fizeram compras
SELECT id_cliente, COUNT (*) AS compras FROM vendas GROUP BY id_cliente ORDER BY compras DESC LIMIT 5; 

-- Frequência de compras (quantas vezes o mesmo cliente voltou)
SELECT id_cliente, COUNT(*) AS qtd_compras FROM vendas GROUP BY id_cliente HAVING COUNT (*) > 1 ORDER BY qtd_compras DESC;

-- Calculando o faturalmento total
SELECT SUM(valor_total) AS receita_total FROM vendas; 

-- Agrupando por categoria e mostrando o valor da receita total de cada uma ordenando da que teve a receita mais alta para a que teve menos
SELECT categoria, SUM(valor_total) AS receita FROM vendas GROUP BY categoria ORDER BY receita DESC; 

-- Selecionando os 10 produtos que mais geraram receita total
SELECT produto, SUM(valor_total) AS receita_produto FROM vendas GROUP BY produto ORDER BY receita_produto DESC LIMIT 10;

-- Calculando o Ticket Médio (quanto vale cada venda em média)
SELECT AVG(valor_total) AS ticket_medio FROM vendas;






