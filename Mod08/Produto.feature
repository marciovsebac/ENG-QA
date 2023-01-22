 Funcionalidade: Configurar produto
    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    e escolher a quantidade
    Para depois inserir no carrinho

    Contexto: 
    Dado Que eu queira configurar meu produto

    Cenario: 1 – Seleções de cor, tamanho e quantidade devem ser obrigatórios
        Quando eu escolher <cor> e <tamanho>
        E selecionar <quantidade>
        Então deve exbir uma <mensagem>
        Examples:
            | cor    | tamanho | quantidade | mensagem                       |
            | ""     | "P"     | "1"        | "Informe Cor"                  |
            | "AZUL" | ""      | "1"        | "Informe Tamanho"              |
            | "AZUL" | "P"     | ""         | "Informe Quantidade"           |
            | "AZUL" | "P"     | "1"        | "Produto inserido no carrinho" |

    Cenario: 2 – Deve permitir apenas 10 produtos por venda
        Quando selecionar a quantidade "11"
        Então deve exibir uma mensagem de alerta "Quantidade acima do limite"

    Cenario: 3 –Quando eu clicar no botão “limpar” deve voltar ao estado original
        Quando Estiver Tamanho e Cor selecionado
        E clicar no botão "limpar"
        Então deve voltar para o estado original (nenhum selecionado)

