*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${url}                 http://altoromutual.com:8080/index.jsp
${browser}             chrome 

*** Keywords ***
Acessa Banco Digital
    Open Browser        ${url}    ${browser}

Encerra Sessao
    Capture Page Screenshot
    Close Browser

Acessa Tela Login
    Click Element    id:AccountLink

Usuario
    [Arguments]    ${user}
    Input Text    id:uid    ${user}

Senha 
    [Arguments]    ${pswd}
    Input Password    id:passw    ${pswd}

Botao Login
    Click Element    name:btnSubmit

Valida Login
    [Arguments]    ${msgBemVindo}
    Element Text Should Be    xpath://h1   ${msgBemVindo}

Valida Erro Login
    [Arguments]    ${msgErro}
    Element Text Should Be    id:_ctl0__ctl0_Content_Main_message    ${msgErro}

Logout
    Click Element    id:LoginLink

Valida Logout
    [Arguments]    ${msgTelaLogin}
    Element Text Should Be    id:AccountLink    ${msgTelaLogin}


Fazer Login
    [Arguments]    ${user}    ${pswd}
    Acessa Tela Login
    Usuario    ${user}
    Senha      ${pswd}
    Botao Login