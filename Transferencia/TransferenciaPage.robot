*** Settings ***
Library        SeleniumLibrary

*** Keywords ***
Btn Tela Transferencia
    Click Element    id:MenuHyperLink3

Valida Tela Transferencia
    [Arguments]    ${msgTransfer}
    Element Text Should Be    xpath://*[@id="tForm"]/h1    ${msgTransfer}

Envia Ted
    [Arguments]    ${contaCorrente}
    Select From List By Value    id:fromAccount    ${contaCorrente}

Recebe Ted
    [Arguments]    ${contaCorrente}
    Select From List By Value    id:toAccount    ${contaCorrente}

Insere valor Ted
    [Arguments]    ${valorEnviado}
    Input Text    id:transferAmount    ${valorEnviado}

Btn Confirma Ted
    Click Element    id:transfer

Valida Ted
    [Arguments]    ${msgTed}
    Element Text Should Not Be    xpath://*[@id="_ctl0__ctl0_Content_Main_postResp"]/span    ${msgTed}