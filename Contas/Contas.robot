*** Settings ***
Resource       ResouceContas.robot

Test Setup           Acessa Banco Digital
Test Teardown        Encerra Sessao

*** Test Cases ***
Cenario: Acessar o historico de transacoes com a conta Corporate
    Dado que desejo acessar o historico de contas
    Quando selecionar a conta Corporate
    Entao será exibido o saldo e as trasacoes da conta selecionada

Cenario: Acessar o historico de transacoes com a conta Checking
    Dado que desejo acessar o historico de contas
    Quando selecionar a conta Checking
    Entao será exibido o saldo e as trasacoes da conta selecionada

Cenario: Selecionar a conta Corporate pela tela de historico de transacoes
    Dado que acessei o banco digital com a conta Checking
    Quando selecionar a conta Corporate pela tela de historico de transacoes
    Entao será exibido o saldo e as trasacoes da conta selecionada


Cenario: Selecionar a conta Checking pela tela de historico de transacoes
    Dado que acessei o banco digital com a conta Corporate
    Quando selecionar a conta Checking pela tela de historico de transacoes
    Entao será exibido o saldo e as trasacoes da conta selecionada


Cenario: Alterar para conta Corporate pela tela de selecao de contas
    Dado que acessei o banco digital com a conta Checking
    Quando votar para tela de selecao de contas 
    E selecionar a conta Corporate
    Entao será exibido o saldo e as trasacoes da conta selecionada

Cenario: Alterar para conta Checking pela tela de selecao de contas
    Dado que acessei o banco digital com a conta Corporate
    Quando votar para tela de selecao de contas 
    E selecionar a conta Checking
    Entao será exibido o saldo e as trasacoes da conta selecionada