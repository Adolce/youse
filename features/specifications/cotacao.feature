# encoding: utf-8

@cotacao

Funcionalidade: realizar uma cotaçao de seguro auto na pagina da Youse
  Para validar o processo de cotacao de seguro para automovel,
  Como usuario,
  Quero fazer a cotacao de um seguro para automovel site da Youse

  Contexto: Home da Youse
    Dado que eu esteja na home da Youse e clico Seguro Auto

  Cenário: Clicar em Seguro Auto para fazer uma cotaçao de um Seguro para carro
    Clicar no link de Seguro Auto e ser redirecionado para a pagina de produto
    O usuário deve poder clicar em cotaçao
    Deve preencher todos os campos no formulario até chegar a parte de pagamento

    Given que eu clique no link de Seguro Auto
    Given que eu clique no link de cotaçao
    When eu clico no campo Nome e preencho com um "nome" valido
    When preencho o campo telefone com um "numero" valido
    Then devo preencher o campo de email com um "endereço" valido
    Then eu devo clicar no botao prosseguir
    Given eu sou direcionada para o proximo passo da cotacao
    Então deve aparecer uma mensagem que as senhas digitadas não são iguais
    Quando eu clicar novamente no campo senha e preencher
    Quando clicar novamente no campo confirmação de se senha e preencher com o mesmo valor do campo anterior
    Então eu devo clicar no botão para Cadastrar
    Então uma mensagem de Cadastro com Sucesso deve ser exibida
    Quando eu clicar em Minha Conta
    Então devo preencher o campo telefone com o "Numero"
    Quando eu clicar no botão para atualizar o cadastro
    Então a informação no meu perfil deve ser salva

