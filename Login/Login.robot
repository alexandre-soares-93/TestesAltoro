*** Settings ***
Resource             ResourceLogin.robot
Resource             LoginPage.robot

Test Setup           Acessa Banco Digital
Test Teardown        Encerra Sessao

*** Test Cases ***
Cenario: Login com usuario e senha validos
    Dado que desejo acessar o IB da Altoro
    Quando digitar meu usuario e senha
    Entao sera exibido uma mensagem de boas vindas

Cenario: Login com usuario invalido
    Dado que desejo acessar o IB da Altoro
    Quando digitar o usuario invalido 
    Entao sera exibido uma mensagem solicitando a correcao do acesso

Cenario: Login com senha invalida
    Dado que desejo acessar o IB da Altoro
    Quando digitar a senha invalida
    Entao sera exibido uma mensagem solicitando a correcao do acesso

Cenario: Login com usuario e senha invalidas
    Dado que desejo acessar o IB da Altoro
    Quando digitar usuario e senha invalidos
    Entao sera exibido uma mensagem solicitando a correcao do acesso

Cenario: Logout do Internet Banking
    Dado que estou logado no IB
    Quando clicar no botao de logoff
    Entao sera exibido a tela home do Altoro Mutual