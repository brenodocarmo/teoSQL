SELECT product_id,

    product_category_name,
    product_weight_g ,               
    product_weight_g / 1000 as product_weight_kg,
    product_length_cm,
    product_height_cm,
    product_width_cm,
    
    product_length_cm *  product_height_cm *   product_width_cm  as product_volume_cm3,

    product_length_cm *  product_height_cm *   product_width_cm / 1000 as product_litros_l,

    product_length_cm *  product_height_cm *   product_width_cm / 1000000 as product_volume_m3
  
  FROM tb_products

-- Ex1: Quantos produtos temos da categoria 'artes'?
-- WHERE product_category_name='artes'
-- Resposta: 55

-- Ex2: Quantos produtos tem mais de 5 litros?
-- WHERE product_height_cm * product_length_cm * product_width_cm > 5000
-- -- Resposta: 19407 / 19472

-- Ex3: Crie uma coluna nova que contenha a informação de volume em m3


-- Ex4: Quantos produtos de 'beleza_saude' com menos de 1 litro?
-- WHERE product_length_cm *  product_height_cm *   product_width_cm / 1000 < 1 AND product_category_name='beleza_saude'
-- Resposta: 132

;