Funcionalidade: Login na Plataforma
    Como cliente da EBAC-SHOP
    Quero fazer o login (autenticação) na plataforma
    Para visualizar meus pedidos

    Contexto:
        Dado Que eu acesse a página de Login na plataforma EBAC-SHOP

    Cenario: 1 – Ao inserir dados válidos deve ser direcionado para a tela de checkout
        Quando Eu digitar o Username "marcio.ebac@ebac.com.br"
        E a senha  "123!@#"
        Entao deve direcionar para a tela de checkout

    Cenario: 2 – Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”
        Quando Eu digitar o <usuario>
        E o Password <senha>
        Entao deve mostrar uma mensagem de alerta <mensagem>
        Examplo:
            | usuario                     | senha    | mensagem                            |
            | "marcio.ebac@ebac.com.br" | "123"    | "Usuário ou Senha não correspondem" |
            | "marcio.ebac@ebac.com.br" | "123!@#" | "Usuário não encontrado"            |

