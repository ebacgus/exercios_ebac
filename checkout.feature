#language: pt

Funcionalidade: Tela de cadastro - Checkout
Como cliente da EBAC - SHOP
Quero concluir meu cadastro
Para finalizar minha comprar

Cenário: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
Dado que eu cadastre meu produto
Quando eu deixar de preencher o "campo nome" 
Então deve exibir uma mensagem de alerta "campo obrigatório"

Cenário: Não deve permitir campo e-mail com formato invalido. Sistema deve inserir uma mensagem de erro
Dado que eu cadastre meu produto
Quando eu preencher o campo email de forma invalida, como no exemplo "gus.ebac@.com"
Então deve exibir um alerta de erro "email inválido"

Cenário: Ao tentar cadastrar com campos vazios, deve exibir uma mensagem de alerta 
Dado que eu cadastre meu produto
Quando eu preencher o campo "cidade", como no exemplo "SÃO PAULO"
E deixar de preencher o "CEP" 
Então deve exebir uma mensagem de alerta "campo vazio "

