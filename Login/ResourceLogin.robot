*** Settings ***
Library        SeleniumLibrary
Resource       LoginPage.robot

*** Variables ***
${usuario}             admin
${senha}               admin
${userErro}            userErro
${senhaErro}           pswdErro
${telaLogin}           ONLINE BANKING LOGIN
${bemVindo}            Hello Admin User
${erroLogin}           Login Failed: We're sorry, but this username or password was not found in our system. Please try again.

*** Keywords ***
#Cenario: Login com usuario e senha validos
Dado que desejo acessar o IB da Altoro
    Acessa Tela Login

Quando digitar meu usuario e senha
    Usuario            ${usuario}
    Senha              ${senha}
    Botao Login

Entao sera exibido uma mensagem de boas vindas
    Valida Login        ${bemVindo}

#Cenario: Login com usuario invalido
Quando digitar o usuario invalido
    Usuario            ${userErro}
    Senha              ${senha}
    Botao Login
Entao sera exibido uma mensagem solicitando a correcao do acesso
    Valida Erro Login       ${erroLogin}

#Cenario: Login com senha invalida
Quando digitar a senha invalida
    Usuario            ${usuario}
    Senha              ${senhaErro}
    Botao Login

#Cenario: Login com usuario e senha invalidas
Quando digitar usuario e senha invalidos
    Usuario            ${userErro}
    Senha              ${senhaErro}
    Botao Login

#Cenario: Logout do Internet Banking
Dado que estou logado no IB
    Acessa Tela Login
    Usuario            ${usuario}
    Senha              ${senha}
    Botao Login

Quando clicar no botao de logoff
    Logout

Entao sera exibido a tela home do Altoro Mutual
    Valida Logout    ${telaLogin}