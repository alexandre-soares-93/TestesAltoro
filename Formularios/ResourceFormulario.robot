*** Settings ***
Library        SeleniumLibrary
Resource       ../Login/LoginPage.robot
Resource       ../Login/ResourceLogin.robot
Resource       FormularioPage.robot

*** Variables ***
${msgTelaFeedback}        Feedback
${nomeConta}              Admin User
${nome}                   Eliud Kipchoge
${email}                  eliud_kipchoge@gmail.com
${assunto}                Investimentos - Teste
${texto}                  Compre tudo em PETR3
${msgEnvio}               Thank You

*** Keywords ***
#Cenario: Envio de Feedback sem acesso a conta
Dado que desejo enviar um email ao sac da Altoro sem estar logado na conta
    Btn Feedback
    Valida Tela Feedback    ${msgTelaFeedback}
Quando preencher os dados do formulario
    Insere Nome           ${nome}
    Insere Email          ${email}
    Insere Assunto        ${assunto}
    Insere Texto          ${texto}
Entao sera enviado o email ao time responsavel
    Btn Enviar
    Valida Envio Feedback    ${msgEnvio}

#Cenario: Limpar o formulario sem acesso a conta
E clicar no botao que apaga as informacoes preenchidas
    Btn Limpar Formulario
Entao formulario estara sem os dados fornecidos
    Valida Tela Feedback    ${msgTelaFeedback}

#Cenario: Envio de Feedback com acesso a conta
Dado que desejo enviar um email ao sac da Altoro depois de ter acessado minha conta
    Fazer Login    ${usuario}    ${senha}
    Btn Feedback
    Valida Tela Feedback    ${msgTelaFeedback}
Quando validar que o nome ja vira preenchido
    Valida Nome Preenchido    ${nomeConta}
E preencher os dados restantes do formulario
    Insere Email          ${email}
    Insere Assunto        ${assunto}
    Insere Texto          ${texto}
#Cenario: Limpar o formulario com acesso a conta
Entao estara com nome preenchido mas sem o restante das informacoes
    Valida Nome Preenchido        ${nomeConta}
    Valida Tela Feedback          ${msgTelaFeedback}