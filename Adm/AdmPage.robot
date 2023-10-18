*** Settings ***
Library        SeleniumLibrary

*** Keywords ***
Btn Editar Usuario
    Click Element    xpath://*[@id="_ctl0__ctl0_Content_Administration"]/ul/li/a

Valida Tela Usuario
    [Arguments]        ${msgTelaAdm}
    Element Text Should Be    xpath:/html/body/table[2]/tbody/tr/td[2]/div/h1    ${msgTelaAdm}

Seleciona Usuario Add Conta
    [Arguments]        ${opcaoUsuario}
    Select From List By Value    xpath:/html/body/table[2]/tbody/tr/td[2]/div/table/tbody/tr[3]/td[1]/select        ${opcaoUsuario}

Seleciona Tipo Conta
    [Arguments]        ${opcaoConta}
    Select From List By Value    name:accttypes    ${opcaoConta}

Btn Adiciona Tipo Conta
    Click Element    xpath:/html/body/table[2]/tbody/tr/td[2]/div/table/tbody/tr[3]/td[4]/input


Seleciona Usuario Troca Senha
    [Arguments]        ${opcaoUsuario}
    Select From List By Value    xpath:/html/body/table[2]/tbody/tr/td[2]/div/table/tbody/tr[6]/td[1]/select[@id='username']    ${opcaoUsuario}  

Nova Senha
    [Arguments]        ${newpswd}
    Input Text        xpath:/html/body/table[2]/tbody/tr/td[2]/div/table/tbody/tr[6]/td[2]/input[@name='password1']    ${newpswd}

Confirma Nova Senha
    [Arguments]        ${newpswd}
    Input Text        xpath:/html/body/table[2]/tbody/tr/td[2]/div/table/tbody/tr[6]/td[3]/input[@name='password2']    ${newpswd}

Btn Altera Senha
    Click Element    name:change

Nome Novo Usuario
    [Arguments]    ${novoNome}
    Input Text     name:firstname    ${novoNome}

Sobrenome Novo Usuario
    [Arguments]    ${novoSobrenome}
    Input Text     name:lastname        ${novoSobrenome}

Novo Usuario
    [Arguments]    ${novoUsuario}
    Input Text     xpath:/html/body/table[2]/tbody/tr/td[2]/div/table/tbody/tr[9]/td[2]/input[@name='username']    ${novoUsuario}

Senha Novo Usuario
    [Arguments]    ${novaSenha}
    Input Text     xpath:/html/body/table[2]/tbody/tr/td[2]/div/table/tbody/tr[9]/td[3]/input[@name='password1']    ${novaSenha}

Confirma Senha Novo Usuario
    [Arguments]    ${novaSenha}
    Input Text     xpath:/html/body/table[2]/tbody/tr/td[2]/div/table/tbody/tr[9]/td[3]/input[@name='password2']   ${novaSenha}


Btn Novo Usuario
    Click Element    name:add