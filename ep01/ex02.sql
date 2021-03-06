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

  Ex2: Quantos produtos tem mais de 5 litros?
WHERE product_height_cm * product_length_cm * product_width_cm > 5000
-- Resposta: 19407
;