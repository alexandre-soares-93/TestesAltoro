*** Settings ***
Library        SeleniumLibrary
Resource       ../Login/LoginPage.robot
Resource       ../Login/ResourceLogin.robot
Resource       CreditoPage.robot

*** Variables ***
${msgTelaCredito}         Altoro Mutual Gold Visa Application
${msgCreditoAprov}        Your new Altoro Mutual Gold VISA with a $10000 and 7.9% APR will be sent in the mail.
${msgCreditoErro}         Login Failed: We're sorry, but this username or password was not found in our system. Please try again.

*** Keywords ***
#Cenario: Solicitar cartao de credito
Dado que desejo um upgrade do cartao de credito
    Fazer Login    ${usuario}    ${senha}

Quando acessar a tela de credito
    Btn Tela Credito

E inserir os dados necessários
    Fornece Senha    ${senha}
    Btn Confirma Credito

Entao será solicitado o novo cartao ao meu endereco
    Valida Aprovacao Credito    ${msgCreditoAprov}


#Cenario: Inserir senha invalida ao solicitar novo cartao de credito
E inserir senha invalida
    Fornece Senha    ${senhaErro}
    Btn Confirma Credito

Entao sera exibido uma mensagem solicitando a correcao da senha
    Valida Erro Credito    ${msgCreditoErro}

#Cenario: Nao inserir senha ao solicitar novo cartao de credito
E manter o campo de senha em branco
    Btn Confirma Credito
    