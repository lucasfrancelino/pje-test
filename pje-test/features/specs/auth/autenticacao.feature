#language:pt
@login
Funcionalidade: Login Keycloack
    Para que eu possa ter acesso as funcionalidades
    Sendo um usuario cadastrado
    Posso logar no sistema com meus dados de acesso previamente cadastrados

    Contexto: Tela de login
        Dado que eu acesso o sistema

    @logout
    Cenário: Login - Administrador de sistema
        Quando faco login com "dipla" e "dipla"
        Entao sou autenticado com sucesso

    @tentativa_login
    Esquema do Cenário: Tentativa de login
        Quando faco login com "<username>" e "<password>"
        Entao devo ver a mensagem "<mensagem>"
            Exemplos:
                | username | password | mensagem                      |
                | diplas   | dipla    | Invalid username or password. |
                |          | dipla    | Invalid username or password. |
                | dipla    | diplas   | Invalid username or password. |
                | dipla    |          | Invalid username or password. |