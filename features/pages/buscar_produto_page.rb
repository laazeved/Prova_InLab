class Busca < SitePrism::Page
    set_url"http://store.demoqa.com/"
  
    element :menu, :css,"#menu-item-33 > a"
    element :selecionar_produto1, :css, "#default_products_page_container > div.default_product_display.product_view_32.product-category.group > div.productcol > form > div.wpsc_buy_button_container.group > div.input-button-buy > span > input"
    element :selecionar_produto2, :css, "#default_products_page_container > div.default_product_display.product_view_40.product-category.group > div.productcol > form > div.wpsc_buy_button_container.group > div.input-button-buy > span > input"
    element :selecionar_produto3, :css, "#default_products_page_container > div.default_product_display.product_view_64.product-category.group > div.productcol > form > div.wpsc_buy_button_container.group > div.input-button-buy > span > input"
    element :selecionar_carrinho, :css, "#header_cart > a > span.icon"
    element :x, :css, "#default_products_page_container > div.default_product_display.product_view_32.product-category.group > div.productcol > form > div.wpsc_buy_button_container.group > div.input-button-buy > div.alert.addtocart > p"
    
  
    def procurar_produto
  
     menu.click
     selecionar_produto1.click
     wait_for_x
     selecionar_produto2.click
     wait_for_x
     selecionar_produto3.click
     wait_for_x
     selecionar_carrinho.click
     
    
    end
  end