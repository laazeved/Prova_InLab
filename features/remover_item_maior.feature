#language: pt
#utf-8

Funcionalidade: remover produto do carrinho no site store.demoqa.com
Eu como usuário do site store.demoqa.com
Quero identificar produto mais caro do carrinho
Para remover produto do carrinho

Contexto: usuario realiza busca no site store.demoqa.com
Dado que eu esteja na tela principal

@remover
Cenario: remover produto no carrinho
Quando identificar produto mais caro no carrinho
Então remover produto do carrinho