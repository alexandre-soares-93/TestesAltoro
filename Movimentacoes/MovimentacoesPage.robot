*** Settings ***
Library        SeleniumLibrary

*** Keywords ***
Valida Saldo 
    [Arguments]        ${vlsaldo}
    Element Text Should Be    xpath:/html/body/table[2]/tbody/tr/td[2]/div/table/tbody/tr[1]/td/table/tbody/tr[3]/td[2]    ${vlsaldo}
    Element Text Should Be    xpath:/html/body/table[2]/tbody/tr/td[2]/div/table/tbody/tr[1]/td/table/tbody/tr[4]/td[2]    ${vlsaldo}


Valida Historico Credito
    [Arguments]       ${tipoTransacao}
    Element Text Should Be    xpath:/html/body/table[2]/tbody/tr/td[2]/div/table/tbody/tr[3]/td/b    ${tipoTransacao}

Valida Movimentacoes Credito
    [Arguments]    ${idTransacao}    ${data}    ${descricao}    ${valor}
    Element Text Should Be    xpath://*[@id="credits"]/table/tbody/tr[1]/td[1]    ${idTransacao}
    Element Text Should Be    xpath://*[@id="credits"]/table/tbody/tr[1]/td[2]    ${data}
    Element Text Should Be    xpath://*[@id="credits"]/table/tbody/tr[1]/td[3]    ${descricao}
    Element Text Should Be    xpath://*[@id="credits"]/table/tbody/tr[1]/td[4]    ${valor}

Valida Historico Debito
    [Arguments]    ${tipoTransacao}
    Scroll Element Into View      xpath:/html/body/table[2]/tbody/tr/td[2]/div   
    Element Text Should Be        xpath:/html/body/table[2]/tbody/tr/td[2]/div/table/tbody/tr[4]/td/b    ${tipoTransacao}

Valida Movimentacoes Debito
    [Arguments]    ${idTransacao}    ${data}    ${descricao}    ${valor}
    Element Text Should Be    xpath://*[@id="debits"]/table/tbody/tr[1]/td[1]    ${idTransacao}
    Element Text Should Be    xpath://*[@id="debits"]/table/tbody/tr[1]/td[2]    ${data}
    Element Text Should Be    xpath://*[@id="debits"]/table/tbody/tr[1]/td[3]    ${descricao}
    Element Text Should Be    xpath://*[@id="debits"]/table/tbody/tr[1]/td[4]    ${valor}

Btn Trasacoes recentes
    Click Element    id:MenuHyperLink2

Valida Tela Trasacoes Recentes
    [Arguments]    ${msgTrasacoesRecentes}
    Element Text Should Be    xpath:/html/body/table[2]/tbody/tr/td[2]/div/h1    ${msgTrasacoesRecentes}

Insere Data Transacao Antiga
    [Arguments]    ${dataInicial}
    Input Text    id:startDate    ${dataInicial}

Insere Data Transacao Recente
    [Arguments]    ${dataFinal}
    Input Text    id:endDate    ${dataFinal}

Btn Pesquisar Trasacoes
    Click Element    xpath://*[@id="Form1"]//input[@value='Submit']

Valida Transacoes Recentes
    [Arguments]    ${id}    ${hora}    ${conta}    ${acao}    ${valor}
    Element Text Should Be    xpath://*[@id="_ctl0__ctl0_Content_Main_MyTransactions"]/tbody/tr[1]/td[1]    ${id}
    Element Text Should Be    xpath://*[@id="_ctl0__ctl0_Content_Main_MyTransactions"]/tbody/tr[1]/td[2]    ${hora}
    Element Text Should Be    xpath://*[@id="_ctl0__ctl0_Content_Main_MyTransactions"]/tbody/tr[1]/td[3]    ${conta}
    Element Text Should Be    xpath://*[@id="_ctl0__ctl0_Content_Main_MyTransactions"]/tbody/tr[1]/td[4]    ${acao}
    Element Text Should Be    xpath://*[@id="_ctl0__ctl0_Content_Main_MyTransactions"]/tbody/tr[1]/td[5]    ${valor}