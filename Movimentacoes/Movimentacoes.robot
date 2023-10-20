*** Settings ***
Resource    ResourceMovimentacoes.robot

Test Setup           Acessa Banco Digital
Test Teardown        Encerra Sessao

*** Test Cases ***
Cenario: Consultar o saldo da conta Corporate
    Dado que desejo consultar meu saldo
    Quando acessar a tela de historico de movimentacoes da conta corrente 800000
    Entao será exibido o saldo disponivel na conta corporate

Cenario: Consultar o saldo da conta Checking
    Dado que desejo consultar meu saldo
    Quando acessar a tela de historico de movimentacoes da conta corrente 800001
    Entao será exibido o saldo disponivel na conta checking

Cenario: Verificar as movimentacoes do cartao de credito
    Dado que estou na tela de extrato
    Quando consultar as movimentacoes de credito
    Entao será exibido o historico de transacoes na funcao credito

Cenario: Verificar as movimentacoes do cartao de debito
    Dado que estou na tela de extrato
    Quando consultar as movimentacoes de debito
    Entao será exibido o historico de transacoes na funcao debito

Cenario: Consultar transacoes recentes
    Dado que estou na tela de extrato
    Quando acessar a tela de transacoes recentes 
    E inserir o range de data que desejo ver
    Entao será exibido caso haja movimentacoes no periodo