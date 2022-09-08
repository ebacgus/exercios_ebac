#language: pt

Funcionalidade: Tela de cadastro - Checkout
Como cliente da EBAC - SHOP
Quero concluir meu cadastro
Para finalizar minha comprar

Cenário: Deve ser cadastro com todos os dados obrigatorio, marcado com asteriscos
Dado que eu cadastre meu produto
Quando eu não colocar o nome "Gustavo"
E sobrenome "Pereira"
Então deve exibir uma mensagem de alerta "campo obrigatório"

Cenário: Não deve permitir campo e-mail com formato invalido. Sistema deve inserir uma mensagem de erro
Dado que eu cadastre meu produto
Quando eu inserir o e-mail "gus.ebac@.com"
E não colocar a plataforma de comunicação "outlook"
Então deve ixibir um alerta "erro"

Cenário: Ao tentar cadastrar com campos vazios, deve exibir uma mensagem de alerta 
Dado que eu cadastre meu produto
Quando eu inserir a cidade "São Paulo"
E não inserir o CEP "08490-330"
Então deve exebir uma mensagem de alerta "campo vazio "

