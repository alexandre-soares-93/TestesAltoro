*** Settings ***
Resource    ResouceAdm.robot

Test Setup           Acessa Banco Digital
Test Teardown        Encerra Sessao

*** Test Cases ***
Cenario: Acessar tela de edicao de contas 
    Dado que desejo acessar a tela de edicao de contas
    Quando selecionar a opcao na aba de administracao
    Entao sera apresentada a tela com as opcoes disponiveis

Cenario: Adicionar conta em um usuario
    Dado que desejo adicionar uma nova conta a um cliente especifico
    Quando selecionar o cliente que desejo adiconar uma nova conta
    E adicionar o tipo de conta desejada 
    Entao será realizado a adicao ao usuario

Cenario: Alterar a senha de um cliente
    Dado que desejo alterar a senha de um determinado cliente
    Quando selecionar o cliente que desejo alterar a senha
    E realizar a adicao de uma nova senha
    Entao será realizado a alteracao de senha do usuario

Cenario: Adicionar um novo cliente
    Dado que desejo adicionar um novo cliente
    Quando preencher os dados necessários
    Entao será aberta uma nova conta   