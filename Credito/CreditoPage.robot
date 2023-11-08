*** Settings ***
Library        SeleniumLibrary

*** Keywords ***
Btn Tela Credito
    Click Element    xpath://a[@href="apply.jsp"]

Valida Tela Credito
    [Arguments]    ${msgTelaCredito}
    Element Text Should Be    xpath://div//h1     ${msgTelaCredito}

Fornece Senha
    [Arguments]    ${senha}
    Input Text    name:passwd    ${senha}

Btn Confirma Credito
    Click Element    name:Submit

Valida Aprovacao Credito
    [Arguments]    ${msgCredAprov}
    Element Text Should Be    id:_ctl0__ctl0_Content_Main_lblMessage    ${msgCredAprov}

Valida Erro Credito
    [Arguments]    ${msgCredErro}
    Element Text Should Be    id:_ctl0__ctl0_Content_Main_message    ${msgCredErro}
    