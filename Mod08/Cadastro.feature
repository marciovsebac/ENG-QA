 Funcionalidade: Tela de cadastro - Checkout
    Como cliente da EBAC-SHOP
    Quero fazer concluir meu cadastro
    Para finalizar minha compra

    Contexto:
        Dado Que eu queira concluir minha compra

    Cenario: 1 – Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
        Quando preencher os seguintes campos obrigatórios:
            | Nome               | "Marcio"                 |
            | Sobrenome          | "Vicente"                 |
            | País               | "Brasil"                 |
            | Endereço           | "Rua Dois"               |
            | Cidade             | "nova iguacu"            |
            | CEP                | "26013-090"              |
            | Telefone           | "(55) 9 9999-9999"       |
            | Endereço de e-mail | "marcio.ebac@ebac.com.br" |
        Entao Será feito o cadastro

    Cenario: 2 – Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
        Quando Eu informar o e-mail "marcio.ebac.com"
        Entao O sistema deve mostrar um alerta: "Formato de e-mail inválido!"

    Cenario: 3 – Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.
        Quando tentar cadastrar com campos vazios:
            | Nome               | "Marcio"                 |
            | Sobrenome          | ""                       |
            | País               | "Brasil"                 |
            | Endereço           | ""                       |
            | Cidade             | "Nova Iguaçu"            |
            | CEP                | "26013-090"              |
            | Telefone           | "(55) 9 9999-9999"       |
            | Endereço de e-mail | "marcio.ebac@ebac.com.br" |
        Então O sistema deve mostrar um alerta: "Há campos obrigatórios vazios, verifique."


