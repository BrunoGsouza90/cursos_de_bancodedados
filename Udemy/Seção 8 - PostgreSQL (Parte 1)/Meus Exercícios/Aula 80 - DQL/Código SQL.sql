USE secao_04;

-- Select
SELECT * FROM tipos_produto;

SELECT codigo, descricao FROM tipos_produto;

SELECT * FROM produtos;

SELECT codigo, descricao, codigo_tipo FROM produtos;

SELECT codigo, descricao, preco, codigo_tipo FROM produtos;

-- Alias 
SELECT 
p.codigo AS cod, 
p.descricao AS descr, 
p.preco AS pre, 
p.codigo_tipo AS ctp 
FROM produtos AS p;