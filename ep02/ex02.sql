--Ex2. Faça uma query que apresente o tamanho médio, máximo e mínimo do nome do objeto por categoria

SELECT DISTINCT 
    product_category_name, 
    MAX(product_name_lenght) as max_name_lenght,
    MIN(product_name_lenght) as min_name_lenght,
    ROUND(AVG(product_name_lenght),2) AS avg_name_lenght

FROM tb_products 

GROUP BY product_category_name