#language:pt
@login
Feature: realizar login e logout na pagina da Youse
Eu quero logar com um usuario ja cadastrado verificar a conta e fazer logout

scenario1: fazer login e logout na pagina da youse
Given que usuário possa acessar a tela de login da Youse
When informar um <Email> válido
When inserir uma <Senha> válida
Then o sistema deve mostrar o usuário logado
Then deve mostrar o perfil do usuário

Exemplos:
| Email                     | Senha  |
| "testes_sp@gamail.com"    | "Testes2017" | 
| "testes2017sp@gamail.com" | "2017testes" | 