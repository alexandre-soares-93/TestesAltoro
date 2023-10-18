*** Settings ***
Library        SeleniumLibrary
Resource       ../Login/LoginPage.robot
Resource       ../Login/ResourceLogin.robot
Resource       ../Contas/ContasPage.robot
Resource       TransferenciaPage.robot

*** Variables ***
${msgTelaTranferencia}    Transfer Funds
${msgTedCorporate}        500.0 was successfully transferred from Account 800000 into Account 800001
${msgTedChecking}         500.0 was successfully transferred from Account 800001 into Account 800000
${valorlTed}                  500
${ccCorporate}            800000
${ccChecking}             800001

*** Keywords ***
#Cenario: Acessar a tela de Transferencia
Dado que desejo realizar um Ted
    Fazer Login    ${usuario}    ${senha}
    Escolhe e Acessa com Conta Corporate

Quando clicar na opcao de tranferencia de fundos
    Btn Tela Transferencia

Entao sera apresentado a tela com as opcoes disponiveis
    Valida Tela Transferencia    ${msgTelaTranferencia}


#Cenario: Realizar uma tranferencia da conta corporate para conta checking
Dado que estou na tela de tranferencia
    Fazer Login    ${usuario}    ${senha}
    Escolhe e Acessa com Conta Corporate
    Btn Tela Transferencia

Quando selecionar a conta checking como favorecido
    Recebe Ted    ${ccChecking}

E informar o valor que desejo enviar
    Insere valor Ted    ${valorlTed}
    Btn Confirma Ted

Entao será feita a operacao para conta checking
    Valida Ted    ${msgCorporate}

#Cenario: Realizar uma tranferencia da conta checking para conta corporate
Quando selecionar a conta corporate como favorecido
    Envia Ted    ${ccChecking}

Entao será feita a operacao para conta corporate
    Valida Ted    ${msgChecking}
    