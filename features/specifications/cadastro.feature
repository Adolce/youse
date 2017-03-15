# language: pt

@cadastro

Funcionalidade: realizar um cadastro na pagina da Youse
  Para validar o processo de cadastro de usuario,
  Como novo usuario,
  Quero fazer o meu cadastramento no site da Youse

  Contexto: Home da Youse
    Dado que eu esteja na home da Youse e vou ate minha conta

  Cenário: Clicar em Minha Conta para fazer meu cadastro
    Clicar no Campo nome de usuario que deve ser preenchido com um nome valido
    O usuário deve poder fazer um novo cadastro na pagina utilizando um email ainda não cadastrado
    Deve inserir uma senha valida para entrar

    Dado que eu clique no link de Cadastro
    Quando eu clico no campo Nome e preencho com um "nome" valido
    Quando Preencho o campo email com um "endereço" valido
    Então devo preencher o campo de senha com um "valor"
    Então preencher com o outra senha o campo confirmação de senha
    Quando eu clicar no botão para Cadastrar
    Então deve aparecer uma mensagem que as senhas digitadas não são iguais
    Quando eu clicar novamente no campo senha e preencher
    Quando clicar novamente no campo confirmação de se senha e preencher com o mesmo valor do campo anterior
    Então eu devo clicar no botão para Cadastrar
    Então uma mensagem de Cadastro com Sucesso deve ser exibida
    Quando eu clicar em Minha Conta
    Então devo preencher o campo telefone com o "Numero"
    Quando eu clicar no botão para atualizar o cadastro
    Então a informação no meu perfil deve ser salva


