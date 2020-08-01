-- Ex3. Faça uma query que apresente o tamanho médio, máximo e mínimo do nome do objeto por categoria. Considere apenas os objetos que tenham a descrição maior que 50.

SELECT product_category_name,
    ROUND(AVG( product_name_lenght)) AS avg_name_lenght,
    MAX(product_name_lenght) AS max_name_lenght,
    MIN(product_name_lenght) AS min_name_lenght


FROM tb_products

WHERE product_description_lenght>50

GROUP BY product_category_name