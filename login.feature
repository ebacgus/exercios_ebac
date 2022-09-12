            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o Login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto: Dado que eu acesse a pagina de autenticação Ebac-SHOP

            Cenario: Ao inserir dados válidos deve ser direcionado para a tela de checkout
            Quando eu digitar o <usuario>
            E <senha> 
            Então deve exibir uma mensagem de boas vindas "Ola gus"

            Cenário: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta "Usuário ou senha inválidos"
            Quando eu digitar o <usuario>
            E <senha> inválidos
            Então deve exibir uma mensagem de alerta "Usuário ou senha Inválido"

            Esquema do Cenário: Autenticação de usuarios vàlidos e inválidos

            Exemplos:

            | Usuário   | senha      | mensagem         |
            | @gus.Ebac | gusebac123 | "Ola gus"        |
            | @gs.eba   | gusebac123 | Usuário Inválido |
