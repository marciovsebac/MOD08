            #language: pt

            Funcionalidade: Tela de cadastro - Checkout

            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu esteja na página de checkout

            Cenário: Cadastrar usuário válido
            Quando eu informar o <nome>
            E o <sobrenome>
            E o <pais>
            E o <endereco>
            E o <cidade>
            E o <Numero>
            E o <cep>
            E o <telefone>
            E o <email>
            Entao o usuário deve ser cadastrado corretamente

            Exemplos:
            | nome     | sobrenome | pais     | endereco        | Numero   |cidade          | cep           | telefone           | email                     |
            | "Marcio" | "Vicente" | "Brasil" | "Rua dona olga" |   "57"   |"Nova Iguaçu"   | "26013-090"   | "(21)96488-0545"   | "marcio.ebac@hotmail.com" |

            Cenário: Validar mensagens de erro
            Quando eu informar o <nome>
            E o <sobrenome>
            E o <pais>
            E o <endereco>
            E o <cidade>
            E o <Numero>
            E o <cep>
            E o <telefone>
            E o <email>
            Entao deve ser exibida <mensagem>

            Exemplos:
            | nome     | sobrenome | pais     | endereco        | Numero | cidade       | cep         | telefone      | email                     | mensagem                                |
            | "Marcio" | "Vicente" | "Brasil" | "Rua dona olga" |  "57"  |"Nova Iguaçu" | "26013-090" | "21964880545" | "marcio.ebac"             | "E-mail deve possuir um formato válido" |
            |   ""     | "Vicente" | "Brasil" | "Rua dona olga" |  "57"  |"Nova Iguaçu" | "26013-090" | "21964880545" | "marcio.ebac@hotmail.com" | "Nome deve ser informado"               |
            | "Marcio" |     ""    | "Brasil" | "Rua dona olga" |  "57"  |"Nova Iguaçu" | "26013-090" | "21964880545" | "marcio.ebac@hotmail.com" | "Sobrenome deve ser informado"          |
            | "Marcio" | "Vicente" |   ""     | "Rua dona olga" |  "57"  |"Nova Iguaçu" | "26013-090" | "21964880545" | "marcio.ebac@hotmail.com" | "País deve ser informado"               |
            | "Marcio" | "Vicente" | "Brasil" |      ""         |  "57"  |"Nova Iguaçu" | "26013-090" | "21964880545" | "marcio.ebac@hotmail.com" | "Endereço deve ser informado"           |
            | "Marcio" | "Vicente" | "Brasil" | "Rua dona olga" |   ""   |"Nova Iguaçu" | "26013-090" | "21964880545" | "marcio.ebac@hotmail.com" | "Numero deve ser informada"             |
            | "Marcio" | "Vicente" | "Brasil" | "Rua dona olga" |  "57"  |    ""        | "26013-090" | "21964880545" | "marcio.ebac@hotmail.com" | "Cidade deve ser informada"             |
            | "Marcio" | "Vicente" | "Brasil" | "Rua dona olga" |  "57"  |"Nova Iguaçu" |     ""      | "21964880545" | "marcio.ebac@hotmail.com" | "CEP deve ser informada"                |
            | "Marcio" | "Vicente" | "Brasil" | "Rua dona olga" |  "57"  |"Nova Iguaçu" |"26013-090"  | "21964880545" | "marcio.ebac@hotmail.com" | "Telefone com DDD deve ser informado"   |
            | "Marcio" | "Vicente" | "Brasil" | "Rua dona olga" |  "57"  |"Nova Iguaçu" | "26013-090" |      ""       | "marcio.ebac@hotmail.com" | "E-mail deve ser informado"             |
            | "Marcio" | "Vicente" | "Brasil" | "Rua dona olga" |  "57"  |"Nova Iguaçu" | "26013-090" | "21964880545" |         ""                | "E-mail deve ser informado"             |