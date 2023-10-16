*** Settings ***
Library        SeleniumLibrary
Resource       ../Login/LoginPage.robot
Resource       ../Login/ResourceLogin.robot
Resource       ContasPage.robot

*** Keywords ***
#Cenario: Acessar o historico de transacoes com a conta Corporate
Dado que desejo acessar o historico de contas
    Fazer Login    ${usuario}    ${senha}

Quando selecionar a conta Corporate
    Acessa Historico Contas

Entao será exibido o saldo e as trasacoes da conta selecionada
    Valida Historico Contas
    
#Cenario: Acessar o historico de transacoes com a conta Checking
Quando selecionar a conta Checking
    Seleciona Conta Checking
    Acessa Historico Contas

#Cenario: Selecionar a conta Corporate pela tela de historico de transacoes
Dado que acessei o banco digital com a conta Checking
    Fazer Login    ${usuario}    ${senha}      
    Seleciona Conta Checking
    Acessa Historico Contas
    
Quando selecionar a conta Corporate pela tela de historico de transacoes
    Seleciona Conta Corporate
    Btn Seleciona Conta

#Cenario: Selecionar a conta Checking pela tela de historico de transacoes
Dado que acessei o banco digital com a conta Corporate
    Fazer Login    ${usuario}    ${senha}     
    Acessa Historico Contas 

Quando selecionar a conta Checking pela tela de historico de transacoes
    Seleciona Conta Corporate
    Btn Seleciona Conta

#Cenario: Alterar para conta Corporate pela tela de selecao de contas
Quando votar para tela de selecao de contas
    Acessa Tela Bem Vindo

E selecionar a conta Corporate
    Acessa Historico Contas

#Cenario: Alterar para conta Checking pela tela de selecao de contas
E selecionar a conta Checking
    Seleciona Conta Checking
    Acessa Historico Contas
