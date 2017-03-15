# language: pt

@login1

Funcionalidade: realizar login e logout na pagina da Youse
  Para validar o processo de cadastro de usuario,
  Como usuario,
  Quero fazer o login no site da Youse

  Contexto: Home da Youse
    Dado que eu esteja na home da Youse e vou ate minha conta

  Cenário: Clicar em Minha Conta para fazer login
    Clicar no Campo email que deve ser preenchido com um email ja cadastrado
    O usuário deve poder fazer o login na pagina utilizando seu email
    Deve inserir sua senha valida cadastrada para entrar

    Dado que eu faça o login com um "usuario" valido ja cadastrado
    Quando eu clico no botão próximo passo
    Então sou redirecionado para inserir minha "senha" valida e concluir o processo de login
    E a mensagem de login deve aparecer e devo ver meu nome de usuário
    Quando eu clicar e acessar meu perfil após o login
    Então clico no botão para fazer o logout

