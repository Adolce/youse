# encoding: utf-8
# language: pt


@cotacao

Funcionalidade: realizar uma cotaçao de seguro auto na pagina da Youse
  Para validar o processo de cotacao de seguro para automovel,
  Como usuario,
  Quero fazer a cotacao de um seguro para automovel no site da Youse

  Contexto: Home da Youse
    Dado que eu esteja na home da Youse e clico Seguro Auto

  Cenário: Clicar em Seguro Auto para fazer uma cotaçao de um Seguro para carro
    Clicar no link de Seguro Auto e ser redirecionado para a pagina de produto
    O usuário deve poder clicar em cotaçao
    Deve preencher todos os campos no formulario até chegar a parte de pagamento

    Dado que eu clique no link de Seguro Auto
    Dado que eu clique no link de cotaçao
    Quando eu clico no campo Nome e preencho com um "nome" valido
    Então eu devo selecionar para quem se destina o seguro
    Quando preencho o campo telefone com um "numero" valido
    Então devo preencher o campo de email com um "endereço" valido
    Então eu devo clicar no botao para prosseguir
    
    Dado eu sou direcionada para o proximo passo da cotacao
    Quando eu selecionar uma marca de veiculo
    Então eu devo escolher um tipo de veiculo
    Quando eu escolher o ano de fabricaçao automovel
    Então eu devo escolher uma versao de veiculo
    Então eu devo especificar se o veiculo e novo ou usado
    Quando eu devo selecionar como uso o carro
    Então seleciono se eu ja tenho ou não a posse do veiculo
    Então eu digito a "data" que vou retirar o veiculo
    Quando eu preencher o campo com um "cep" valido
    Então eu devo selecionar o genero contratante
    Quando eu preencher o campo data de "aniversário"
    Então eu devo selecionar meu estado civil
    Quando eu selecionar a pessoas que mais dirige o carro
    Então eu seleciono se desejo contratar ou não a opção motorista jovem
    Quando eu devo selecionar uma opção de tempo que ja me ocorreu um sinistro ou não
    Então devo clicar no botão proximo passo


    Dado que eu sou direcionada para a proxima pagina da cotação
    Quando eu devo selecionar a opção de vale para qualquer batida
    Então seleciono o valor da cobertura para qualquer batida
    Quando eu selecionar a opção danos materiais a terceiros
    Então seleciono o valor da cobertura para danos a terceiros
    Quando eu selecionar a opção acidentes de passageiros
    Então seleciono o valor da cobertura para acidentes de passageiros
    Quando eu devo selecionar a opção danos corporais a terceiros
    Então seleciono o valor da cobertura para danos corporais a terceiros
    Então clico no botão proximo e avanço ao passo seguinte

    Dado que eu sou direcionada para a proxima pagina da cotação assistencias
    Quando eu habilitar a opção assistencia a automovel
    Então eu devo habilitar a opção chaveiro
    Quando eu habilitar a opção carro reserva
    Então eu seleciono as opções de carro reserva
    Quando eu habilitar a opção vidros
    Então eu habilito a opção Farois laternas e retrovisores
    Quando eu habilitar a opção serviço leva e traz
    Então eu habilito a opção restituição de ipva
    Quando eu habilitar a opção serviço de historico veicular
    Então clico no botão próximo passo da cotação

    Dado que eu sou direcionada para o proximo passo da cotação de auto
    Quando eu preencher o campo "nome" de forma completa
    Então eu preencho o campo "cpf" com um valor valido
    Quando eu seleciono o pais em que nasci
    Então eu seleciono a opção de "profissão"
    Quando seleciono a minha renda familiar
    Então eu preencho o "numeral" da minha residencia
    Quando eu preencho o "complemento" do meu endereço
    Então eu clico no botão para finalizar a cotação e ir para o pagamento


    Dado que sou direcionada para o ultimo passo da cotação de auto
    Quando eu preencho o campo com uma"placa" valida
    Então eu seleciono a opção se o carro possui ou não adaptações
    Quando eu seleciono a opção se é blindado ou não
    Então eu valido a mensagem ao final do processo de contação sem prosseguir o pagamento
 
