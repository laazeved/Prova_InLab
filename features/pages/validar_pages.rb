class Validar < SitePrism::Page

def produtos_carrinho

       qtde_produtos = find(:css,"#header_cart > a > em.count").text
       k=qtde_produtos.to_f
       produto1 = find(:css, "#checkout_page_container > div.slide1 > table > tbody > tr.product_row.product_row_0.alt > td.wpsc_product_name.wpsc_product_name_0").text
       x=produto1.to_s
       produto2 = find(:css, "#checkout_page_container > div.slide1 > table > tbody > tr.product_row.product_row_1 > td.wpsc_product_name.wpsc_product_name_1").text
       y=produto2.to_s
       produto3 = find(:css,"#checkout_page_container > div.slide1 > table > tbody > tr.product_row.product_row_2.alt > td.wpsc_product_name.wpsc_product_name_2").text
       z=produto3.to_s
       valor_total = find(:css, "#checkout_page_container > div.slide1 > span > span").text.sub! '$',''
       w=valor_total.to_f
       
       puts "Quantidade de produtos no carrinho: #{k}"
       puts "Produto 1: #{x}"
       puts "Produto 2: #{y}"
       puts "Produto 3: #{z}"
       puts "Valor Total dos Produtos: #{w}"
       
end


end
