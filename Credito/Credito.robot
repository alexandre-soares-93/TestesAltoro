*** Settings ***
Resource             ResourceCredito.robot

Test Setup           Acessa Banco Digital
Test Teardown        Encerra Sessao

*** Test Cases ***
Cenario: Solicitar cartao de credito
    Dado que desejo um upgrade do cartao de credito
    Quando acessar a tela de credito
    E inserir os dados necessários
    Entao será solicitado o novo cartao ao meu endereco

Cenario: Inserir senha invalida ao solicitar novo cartao de credito
    Dado que desejo um upgrade do cartao de credito
    Quando acessar a tela de credito
    E inserir senha invalida
    Entao sera exibido uma mensagem solicitando a correcao da senha

Cenario: Nao inserir senha ao solicitar novo cartao de credito
    Dado que desejo um upgrade do cartao de credito
    Quando acessar a tela de credito
    E manter o campo de senha em branco
    Entao sera exibido uma mensagem solicitando a correcao da senha