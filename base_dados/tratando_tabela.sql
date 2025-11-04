-- Alterando o nome da tabela de compras para vendas
ALTER TABLE compras RENAME TO vendas; 

-- Alterando o nome das colunas da tabela vendas
ALTER TABLE vendas RENAME COLUMN customer_id TO id_cliente;  
ALTER TABLE vendas RENAME COLUMN product TO produto;
ALTER TABLE vendas RENAME COLUMN category TO categoria;
ALTER TABLE vendas RENAME COLUMN quantity TO quantidade;
ALTER TABLE vendas RENAME COLUMN discount_percent TO percentual_desconto;
ALTER TABLE vendas RENAME COLUMN total_value TO valor_total;
ALTER TABLE vendas RENAME COLUMN purchase_date TO data_compra;

