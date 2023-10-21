*** Settings ***
Library        SeleniumLibrary

*** Keywords ***
Btn Tela Credito
    Click Element    xpath://*[@id="_ctl0__ctl0_Content_Main_promo"]/table/tbody/tr[3]/td/a

Valida Tela Credito
    [Arguments]    ${msgTelaCredito}
    Element Text Should Be    xpath:/html/body/table[2]/tbody/tr/td[2]/div/h1    ${msgTelaCredito}

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
    