-- Ex3. Faça uma query que apresente o tamanho médio, máximo e mínimo do nome do objeto por categoria. Considere apenas os objetos que tenham a descrição maior que 50.

SELECT 
    product_category_name,
    COUNT(1) AS qtd_linhas,
    COUNT(DISTINCT product_name_lenght) AS product_category_dstc,
    product_description_lenght AS max_desc_lenght,
    MAX(product_name_lenght) AS max_name_lenght,
    MIN(product_name_lenght) AS max_name_lenght,
    ROUND(AVG(product_name_lenght)) AS avg_name_lenght

FROM tb_products

GROUP BY product_category_name

HAVING product_description_lenght > 50

ORDER BY COUNT(1) 
;