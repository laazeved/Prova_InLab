Dado("que eu esteja na tela principal") do                              
    @busca=Busca.new
    @busca.load
    @busca.procurar_produto
 
 end                                                                             
 Quando("realizar cadastro {string} {string} {string} {string} {string} {string} {string} {string}") do |email, nome, sobrenome, endereco, cidade, estado, pais, telefone|
     @cadastrar=Cadastro.new
     @cadastrar.cadastrar(email, nome, sobrenome, endereco, cidade, estado, pais, telefone)                                                                                                                                                         
                                                                                           
 end                                                                                                                                                                     
                                                                                                                                                                         
 Então("realizo uma compra no site") do                                                  
     @comprar=Comprar.new
     @comprar.comprar_produto
 
 end          