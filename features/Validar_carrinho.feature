#language: pt
#utf-8

Funcionalidade: Validar produtos do carrinho no site store.demoqa.com
Eu como usuário do site store.demoqa.com
Quero incluir produtos no carrinho 
Para validar se todos foram incluidos


Contexto: usuario inclui produtos no carrinho
Dado que eu esteja na tela principal

@validar
Cenario: Incluir produtos no carrinho
Quando incluo produtos no carrinho
Então valido que produtos foram incluidos
