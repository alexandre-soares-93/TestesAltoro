*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${contaCorporate}        800000
${contaChecking}         800001
${msgCorporate}          Account History - 800000 Corporate
${msgChecking}           Account History - 800001 Checking
${contaSelecionada}

*** Keywords ***
Seleciona Conta Corporate
    ${contaSelecionada} =    Select From List By Value    id:listAccounts    ${contaCorporate}

Seleciona Conta Checking
    ${contaSelecionada} =    Select From List By Value    id:listAccounts    ${contaChecking}

Acessa Historico Contas
    Click Element    id:btnGetAccount

Valida Historico Contas
    IF    "${contaSelecionada}" == "${contaChecking}"
        Element Text Should Be    xpath:/html/body/table[2]/tbody/tr/td[2]/div/h1    ${msgChecking}
    ELSE IF    "${contaSelecionada}" == "${contaCorporate}"
        Element Text Should Be    xpath:/html/body/table[2]/tbody/tr/td[2]/div/h1    ${msgCorporate}
    END

Btn Seleciona Conta
    Click Element    id:btnGetAccount

Acessa Tela Bem Vindo
    Click Element    id:AccountLink



Escolhe e Acessa com Conta Corporate
    Acessa Historico Contas

Escolhe e Acessa com Conta Checking
    Seleciona Conta Checking
    Acessa Historico Contas