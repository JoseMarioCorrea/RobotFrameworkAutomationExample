***Settings***
Resource        ResourceAPI.robot
Resource        BDDAPIpt-br.robot 

***Test Cases***
Cenário 01: Realizar pesquisa na API do ViaCep
    Dado que usuário deseja consultar a localização de um cep
    Quando realizar a requisição GET para consulta de endereço 
    Então deve retornar o Status 200 e o body correto


