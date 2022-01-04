*** Settings ***
Library     RequestsLibrary
Library     Collections

*** Variable ***
${HOST}     https://viacep.com.br/ws/
${CEP}      01001000


***Keywords***
####Cenário 01
Dado que usuário deseja consultar a localização de um cep 
    Abrir conexão com a API ViaCep

Quando realizar a requisição GET para consulta de endereço
    Realizar a requisição GET  

Então deve retornar o Status 200 e o body correto
    Validar o retorno do body

#### PASSOS 
Abrir conexão com a API ViaCep
    Create Session      consultaCEP     ${HOST}

Realizar a requisição GET
    ${RESPOSTA}       GET On Session  consultaCEP    ${HOST}${CEP}/json/
    Log                 Resposta: ${RESPOSTA.text}
Validar o retorno do body
    ${RESPOSTA}       GET On Session  consultaCEP    ${HOST}${CEP}/json/
    Status Should Be  200
    ${BODY}=    convert to string   ${RESPOSTA.content}
    ####valida se os dados estão presentes no body
    Should Contain  ${BODY}     cep
    Should Contain  ${BODY}     01001-000
    Should Contain  ${BODY}     logradouro
    Should Contain  ${BODY}     bairro
    Should Contain  ${BODY}     complemento
