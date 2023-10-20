*** Settings ***
Library        SeleniumLibrary
Resource       ../Login/LoginPage.robot
Resource       ../Login/ResourceLogin.robot
Resource       ../Contas/ContasPage.robot
Resource       MovimentacoesPage.robot

*** Variables ***
${saldoCorporate}            $52394533.61
${saldoChecking}             $94020.44
${idTransac}                 1001160140
${credData}                  12/29/2004
${credDesc}                  Paycheck
${credValor}                 1200
${debitData}                 01/17/2005
${debitDesc}                 Withdrawal
${debitValor}                2.85
${msgTransacRecentes}        Recent Transactions
${dtAfter}                   2023-01-01
${dtBefore}                  2023-10-01
${credito}                   Credits
${debito}                    Debits
${recenteId}                 Transaction ID
${recenteHour}               Transaction Time
${recenteConta}              Account ID
${recenteAcao}               Action
${recenteValor}              Amount                    

*** Keywords ***
#Cenario: Consultar o saldo da conta Corporate
Dado que desejo consultar meu saldo
    Fazer Login    ${usuario}    ${senha}
    
Quando acessar a tela de historico de movimentacoes da conta corrente 800000
    Escolhe e Acessa com Conta Corporate
    Valida Historico Contas

Entao será exibido o saldo disponivel na conta corporate
    Valida Saldo    ${saldoCorporate}

#Cenario: Consultar o saldo da conta Checking
Quando acessar a tela de historico de movimentacoes da conta corrente 800001
    Escolhe e Acessa com Conta Checking
    Valida Historico Contas

Entao será exibido o saldo disponivel na conta checking
    Valida Saldo    ${saldoChecking}

#Cenario: Verificar as movimentacoes do cartao de credito
Dado que estou na tela de extrato
    Fazer Login    ${usuario}    ${senha}
    Escolhe e Acessa com Conta Corporate

Quando consultar as movimentacoes de credito
    Valida Historico Credito    ${credito}
    
Entao será exibido o historico de transacoes na funcao credito
    Valida Movimentacoes Credito    ${idTransac}    ${credData}    ${credDesc}    ${credValor}

#Cenario: Verificar as movimentacoes do cartao de debito
Quando consultar as movimentacoes de debito
    Valida Historico Debito    ${debito}

Entao será exibido o historico de transacoes na funcao debito
    Valida Movimentacoes Debito    ${idTransac}    ${debitData}    ${debitDesc}    ${debitValor}

#Cenario: Consultar transacoes recentes
Quando acessar a tela de transacoes recentes
    Btn Trasacoes recentes
    Valida Tela Trasacoes Recentes    ${msgTransacRecentes}
E inserir o range de data que desejo ver
    Insere Data Transacao Antiga         ${dtAfter}
    Insere Data Transacao Recente        ${dtBefore}
    Btn Pesquisar Trasacoes
    
Entao será exibido caso haja movimentacoes no periodo
    Valida Transacoes Recentes    ${recenteId}    ${recenteHour}    ${recenteConta}    ${recenteAcao}    ${recenteValor}