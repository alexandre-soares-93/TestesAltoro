*** Settings ***
Resource        ResourceFormulario.robot

Test Setup           Acessa Banco Digital
Test Teardown        Encerra Sessao

*** Test Cases ***
Cenario: Envio de Feedback sem acesso a conta
    Dado que desejo enviar um email ao sac da Altoro sem estar logado na conta
    Quando preencher os dados do formulario
    Entao sera enviado o email ao time responsavel

Cenario: Limpar o formulario sem acesso a conta
    Dado que desejo enviar um email ao sac da Altoro sem estar logado na conta
    Quando preencher os dados do formulario
    E clicar no botao que apaga as informacoes preenchidas
    Entao formulario estara sem os dados fornecidos

Cenario: Envio de Feedback com acesso a conta
    Dado que desejo enviar um email ao sac da Altoro depois de ter acessado minha conta
    Quando validar que o nome ja vira preenchido
    E preencher os dados restantes do formulario
    Entao sera enviado o email ao time responsavel 

Cenario: Limpar o formulario com acesso a conta
    Dado que desejo enviar um email ao sac da Altoro depois de ter acessado minha conta
    Quando validar que o nome ja vira preenchido
    E preencher os dados restantes do formulario
    E clicar no botao que apaga as informacoes preenchidas
    Entao estara com nome preenchido mas sem o restante das informacoes

