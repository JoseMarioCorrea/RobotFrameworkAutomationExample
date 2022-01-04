***Settings***
Resource        ResourceBDD.robot
Resource        BDDpt-br.robot 
Suite Teardown  Fechar Navegador 

***Test Cases***
Cenário 01: Realizar pesquisa por teste Automatizado no Google e validar seu retorno
    Dado que usuário esteja localizado na tela inicial do google 
    Quando preencher o campo de pesquisa e clicar em pesquisar 
    Então deve realizar a pesquisa corretamente

Cenário 02: Acessar o site do RobotFramework e validar os textos da introdução 
    Dado que usuário esteja localizado na tela inicial do RobotFramework
    Quando localizar a introdução
    Então se o texto está escrito introduction  

