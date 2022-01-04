*** Settings ***
Library     SeleniumLibrary

*** Variable ***
${BROWSER}              chrome
${URL}                  https://google.com.br/  
${URL2}                 https://robotframework.org/   
${CAMPO_PESQUISAR}      name=q
${BOTAO_PESQUISAR}      name=btnK
${PESQUISA}             Teste Automatizado
${RESULTADO}            id=result-stats
${INTRODUCAO}           id=introduction

***Keywords***
####Cenário 01
Dado que usuário esteja localizado na tela inicial do google 
    Acessar o site do Google

Quando preencher o campo de pesquisa e clicar em pesquisar
    Preencher o campo de pesquisa e pesquisar 

Então deve realizar a pesquisa corretamente
    Validar o retorno da pesquisa 

#### PASSOS 
Acessar o site do Google
    Open Browser    ${URL}  ${BROWSER}
    Wait Until Element Is Visible   ${CAMPO_PESQUISAR}

Preencher o campo de pesquisa e pesquisar
    Input Text     ${CAMPO_PESQUISAR}    ${PESQUISA}
    Press Keys     ${CAMPO_PESQUISAR}    ENTER

Validar o retorno da pesquisa   
    Wait Until Element Is Visible   ${RESULTADO}


####Cenário 02
Dado que usuário esteja localizado na tela inicial do RobotFramework
    Acessar o site do RobotFramework

Quando localizar a introdução
    Localizar a introdução

Então se o texto está escrito introduction  
    Validar o texto presente

###Passos cenário 02
Acessar o site do RobotFramework
    Go To    ${URL2}  
    
Localizar a introdução
    Wait Until Element Is Visible   ${INTRODUCAO}

Validar o texto presente
    Element Text Should Be      ${INTRODUCAO}       INTRODUCTION
  
Fechar Navegador
    Close Browser
