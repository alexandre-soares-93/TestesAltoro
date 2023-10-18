*** Settings ***
Resource    ResourceTransferencia.robot

Test Setup           Acessa Banco Digital
Test Teardown        Encerra Sessao

*** Test Cases ***
Cenario: Acessar a tela de Transferencia
    Dado que desejo realizar um Ted
    Quando clicar na opcao de tranferencia de fundos 
    Entao sera apresentado a tela com as opcoes disponiveis

Cenario: Realizar uma tranferencia da conta corporate para conta checking
    Dado que estou na tela de tranferencia
    Quando selecionar a conta checking como favorecido
    E informar o valor que desejo enviar
    Entao será feita a operacao para conta checking

Cenario: Realizar uma tranferencia da conta checking para conta corporate
    Dado que estou na tela de tranferencia
    Quando selecionar a conta corporate como favorecido
    E informar o valor que desejo enviar
    Entao será feita a operacao para conta corporate 