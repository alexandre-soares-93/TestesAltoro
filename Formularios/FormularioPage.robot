*** Settings ***
Library        SeleniumLibrary

*** Keywords ***
Btn Feedback
    Click Element    id:HyperLink4

Valida Tela Feedback
    [Arguments]    ${msgTelaFeedbak}
    Element Text Should Be    xpath:/html/body/table/tbody/tr[2]/td[2]/div/h1    ${msgTelaFeedbak}

Insere Nome 
    [Arguments]    ${nome}
    Input Text    name:name    ${nome}

Valida Nome Preenchido
    [Arguments]    ${nomeLogado}
    Textfield Should Contain    name:name    ${nomeLogado}

Insere Email
    [Arguments]    ${email}
    Input Text    name:email_addr    ${email}

Insere Assunto
    [Arguments]    ${assunto}
    Input Text    name:subject    ${assunto}

Insere Texto
    [Arguments]    ${texto}
    Input Text     name:comments  ${texto}

Btn Enviar
    Click Element    name:submit

Btn Limpar Formulario
    Click Element    xpath://Input[@type='reset']

Valida Envio Feedback
    [Arguments]    ${msgEnvio}
    Element Text Should Be    xpath:/html/body/table/tbody/tr[2]/td[2]/div/h1    ${msgEnvio}
