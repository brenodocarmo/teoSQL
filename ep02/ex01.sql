-- Ex1. Faça uma query que apresente o tamanho médio, máximo e mínimo da descrição do objeto por categoria

SELECT 
    product_category_name, 
    MAX(product_description_lenght) as max_description_lenght,
    MIN(product_description_lenght) as min_description_lenght,
    ROUND(AVG(product_description_lenght),2) AS avg_description_lenght

FROM tb_products 

GROUP BY product_category_name
;