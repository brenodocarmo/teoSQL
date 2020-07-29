SELECT 
    product_category_name,
    count(1) as qdt_linhas, 
    count(product_category_name) as qtd_categorias, -- Contar linhas nao nulas no campo categoria
    count(distinct product_category_name) as qtd_categoria_dst, -- Contar linhas distintas para o campo categoria
    max(product_photos_qty) as max_photo_qy, -- Maior valordo campos fotos
    min(product_photos_qty) as min_photo_qty, -- Menor valor do campos de fotos
    round(avg(product_photos_qty),2) as avg_phots_qty, -- valor media de qtd do campos photos
    sum(product_photos_qty) as sum_pothos_qty, -- Soma todos os valores dos campos quantidades de photos
    round(sum(product_photos_qty) / count(product_photos_qty),2) as avg_unha_photo_qty -- Divisao entre soma de valores e contagem nao nula de qtd fotos

FROM tb_products 
;