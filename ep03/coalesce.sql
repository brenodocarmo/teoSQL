SELECT *,
       CASE WHEN product_category_name IS NULL THEN 'ISSO E NULO' ELSE product_category_name END AS categoria_nova
        COALESCE(product_category_name, 'ISSO E NULO') AS categoria_nova_coalesce

FROM tb_products

;