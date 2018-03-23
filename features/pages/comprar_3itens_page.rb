class Comprar < SitePrism::Page
    
    element :confirma, :css, "#wpsc_shopping_cart_container > form > div.wpsc_make_purchase > div > div > span > input"
    element :frete, :css, "#post-30 > div > div.wpsc-transaction-results-wrap > p:nth-child(5)"

 def comprar_produto
    confirma.click
    frete = find(:css,"#post-30 > div > div.wpsc-transaction-results-wrap > p:nth-child(5)").text
    f=frete.to_s
    puts f
  end
end
