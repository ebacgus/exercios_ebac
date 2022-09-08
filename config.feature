            #language: pt

            Funcionalidade: Configurar Produto
            Como cliente EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            e ecolher a quantidade
            para depois inserir no carrinho

            Contexto:
            Dado que eu configure meu produto



            Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
            Quando eu selecionar a cor "vermelho", tamanho "M"
            E a quantidade "0"
            Então deve exibir a mensagem de alerta "campo obrigatório"

            Cenário: Deve permitir apenas 10 produtos por venda
            Quando eu selecionar a quantidade "18"
            E colocar no carrinho "comprar"
            Então deve exibir uma mensagem de alerta "quantidade invalida"

            Cenário: Quando eu clicar no botão "limpar" deve voltar o estado original
            Quando eu selecionar o tamanho "G"
            E clicar no botão "limpar"
            Então deve exibir a mensagem de alerta "selecionar tamanho"

            Esquema do Cenário: Deve permitir apenas 10 peodutos por venda
            Quando eu selecionar <quantidade>
            E colocar no <carrinho>
            Então deve exibir a <mensagem> de alerta

            Exemplos:

            | quantidade | carrinho | mensagem            |
            | 17         | comprar  | quantidade invalida |
            | 8          | comprar  | quantidade válida   |
