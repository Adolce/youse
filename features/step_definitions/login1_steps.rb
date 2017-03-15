# encoding: utf-8
require 'rspec'
require 'gherkin'
require 'cucumber'
require 'site_prism'
require 'capybara'
require 'syntax'
require 'rubygems'
require 'selenium-webdriver'

##### Dado #####
Dado (/^que eu esteja na home da Yousee e vou ate minha conta$/) do
   click_on(:link_text, "MINHA CONTA").click
end

Dado(/^que eu faça o login com um "([^"]*)" valido ja cadastrado$/) do |email|
 click_on "email"
 login_page.type_email(email)
end

###### Quando #####

Quando(/^eu clico no botão próximo passo$/) do
 click_on(:name, "commit").click
end

Quando(/^eu clicar e acessar meu perfil após o login$/) do
 click_on(:id, "my_account").click
 click_on(:id, "user_name").click
end

###### Então #####

Então(/^sou redirecionado para inserir minha "([^"]*)" valida e concluir o processo de login$/) do|user_password|
   click_on(:id, "user_password").click
   click_on "user_password"
   login_page.type_user_password(user_password)
   click_on(:name, "commit").click
end

Então(/^ a mensagem de login deve aparecer e devo ver meu nome de usuário$/) do 
    click_on(:css, "i.badge--close").click
    click_on(:link_text, "Olá, Testes").click
    page.has_content?('Olá, Testes').should be_true
end

Então(/^ clico no botão para fazer o logout$/) do 
   click_on(:id, "track_logout").click

end