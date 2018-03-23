#language: pt
#utf-8

Funcionalidade: realizar compra de produtos no site store.demoqa.com
Eu como usuário do site store.demoqa.com
Quero realizar um cadastro
Para comprar produtos

Contexto: usuario realiza busca no site store.demoqa.com
Dado que eu esteja na tela principal

@comprar
Esquema do Cenario: Realizar compra no site
Quando realizar cadastro '<email>' '<nome>' '<sobrenome>' '<endereco>' '<cidade>' '<estado>' '<pais>' '<telefone>'
Então realizo uma compra no site

Exemplos:

|          email         | nome | sobrenome |  endereco | cidade | estado |  pais  | telefone  |
| teste@inmetrics.com.br | Lais |  Azevedo  | Rua Teste | Osasco |   SP   | Brazil | 998877665 |