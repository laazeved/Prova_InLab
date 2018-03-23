class Remover < SitePrism::Page


    element :remover_produto1, :css, "#checkout_page_container > div.slide1 > table > tbody > tr.product_row.product_row_0.alt > td.wpsc_product_remove.wpsc_product_remove_0 > form > input[type='submit']:nth-child(4)"
    element :remover_produto2, :css, "#checkout_page_container > div.slide1 > table > tbody > tr.product_row.product_row_1 > td.wpsc_product_remove.wpsc_product_remove_1 > form > input[type='submit']:nth-child(4)"
    element :remover_produto3, :css, "#checkout_page_container > div.slide1 > table > tbody > tr.product_row.product_row_2.alt > td.wpsc_product_remove.wpsc_product_remove_2 > form > input[type='submit']:nth-child(4)"

   def remover_item 
       
       produto1 = find(:css, " #checkout_page_container > div.slide1 > table > tbody > tr.product_row.product_row_0.alt > td.wpsc_product_price.wpsc_product_price_0 > span > span").text.sub! '$',''
       x=produto1.to_f 
       puts x
       produto2 = find(:css, "#checkout_page_container > div.slide1 > table > tbody > tr.product_row.product_row_1 > td.wpsc_product_price.wpsc_product_price_1 > span > span").text.sub! '$',''
       y=produto2.to_f
       puts y
       produto3 = find(:css, "#checkout_page_container > div.slide1 > table > tbody > tr.product_row.product_row_2.alt > td.wpsc_product_price.wpsc_product_price_2 > span > span").text.sub! '$',''
       z=produto3.to_f
       puts z

        lista = [x,y,z]
        caro = lista.max
       if x==caro
        remover_produto1.click
        elsif y==caro
        remover_produto2.click
       else
        remover_produto3.click
       end
       
   end

end