*** Settings ***
Library        SeleniumLibrary
Resource       ../Login/LoginPage.robot
Resource       ../Login/ResourceLogin.robot
Resource       AdmPage.robot

*** Variables ***
${msgTelaAdm}        Edit User Information
${userTuser}         tuser
${userJsmith}        jsmith
${userJdoe}          jdoe
${ccIra}             IRA
${ccSavings}         Savings
${nome}              Eliud
${sobrenome}         Kipchoge
${userNew}           elikip
${novaSenha}         admin123

*** Keywords ***
#Cenario: Acessar tela de edicao de contas 
Dado que desejo acessar a tela de edicao de contas
    Fazer Login    ${usuario}    ${senha} 

Quando selecionar a opcao na aba de administracao
    Btn Editar Usuario

Entao sera apresentada a tela com as opcoes disponiveis
    Valida Tela Usuario    ${msgTelaAdm}

#Cenario: Adicionar conta em um usuario
Dado que desejo adicionar uma nova conta a um cliente especifico
    Fazer Login    ${usuario}    ${senha}
    Btn Editar Usuario

Quando selecionar o cliente que desejo adiconar uma nova conta
    Seleciona Usuario Add Conta    ${userTuser}
E adicionar o tipo de conta desejada
    Seleciona Tipo Conta    ${ccIra}

Entao será realizado a adicao ao usuario
    Btn Adiciona Tipo Conta

#Cenario: Alterar a senha de um cliente
Dado que desejo alterar a senha de um determinado cliente
    Fazer Login    ${usuario}    ${senha}
    Btn Editar Usuario

Quando selecionar o cliente que desejo alterar a senha
    Seleciona Usuario Troca Senha    ${userJdoe}

E realizar a adicao de uma nova senha
    Nova Senha             ${novaSenha}
    Confirma Nova Senha    ${novaSenha}

Entao será realizado a alteracao de senha do usuario
    Btn Altera Senha

#Cenario: Adicionar um novo cliente
Dado que desejo adicionar um novo cliente
    Fazer Login    ${usuario}    ${senha}
    Btn Editar Usuario

Quando preencher os dados necessários
    Nome Novo Usuario                  ${nome}
    Sobrenome Novo Usuario             ${sobrenome}
    Novo Usuario                       ${userNew}
    Senha Novo Usuario                 ${novaSenha}
    Confirma Senha Novo Usuario        ${novaSenha}
Entao será aberta uma nova conta
    Btn Novo Usuario