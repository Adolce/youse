# encoding: utf-8
require 'rubygems'
require 'selenium-webdriver'
require 'rspec'
require 'gherkin'
require 'cucumber'
require 'site_prism'
require 'capybara'
require 'syntax'
require 'rescue'

##### Dado #####
Dado (/^que eu esteja na home da Youse e vou ate minha conta$/) do
  visit 'https://www.youse.com.br/'
  click_on(:link_text, "MINHA CONTA").click
end

Dado(/^que eu clique no link de Cadastro$/) do 
 click_on "CADASTRE-SE"
 end


###### Quando #####

Quando(/^eu clico no campo Nome e preencho com um "([^"]*)" valido$/) do |user_name|
  click_on(:css, "fieldset.floating-label-form__field").click
  click_on(:css, "label.floating-label-form__label").click
  click_on(:id, "user_name").click
  click_on(:id, "user_name").clear
  login_page.type_user_name(user_name)

end

Quando(/^Preencho o campo email com um "([^"]*)" valido$/) do |user_email|
  click_on(:xpath, "//label[@for='user_email']").click
  click_on(:id, "user_email").click
  click_on(:id, "user_email").clear
  login_page.type_user_email(user_email)

end

Quando(/^eu clicar no botão para Cadastrar$/) do
  click_on(:name, "commit").click

end

Quando(/^eu clicar novamente no campo senha e preencher$/) do |user_password|
  click_on(:id, "user_password").click
  click_on(:id, "user_password").clear
  login_page.type_user_password(user_password)

end

Quando(/^clicar novamente no campo confirmação de se senha e preencher com o mesmo valor do campo anterior$/) do |user_password_confirmation|
  click_on(:id, "user_password_confirmation").click
  click_on(:id, "user_password_confirmation").clear
  login_page.type_user_password_confirmation(user_password_confirmation)
end

Quando(/^eu clicar em Minha Conta$/) do 
 click_on(:id, "my_account").click
end

Quando(/^eu clicar no botão para atualizar o cadastro$/) do 
 click_on(:name, "commit").click
end

###### Então #####

Então(/^devo preencher o campo de senha com um "([^"]*)"$/) do |user_password|
   click_on(:id, "user_password").click
   click_on(:id, "user_password").clear
   login_page.type_user_password(user_password)
end

Então(/^ preencher com o outra senha o campo confirmação de "([^"]*)"$/) do |user_password_confirmation|
   click_on(:id, "user_password_confirmation").click
   click_on(:id, "user_password_confirmation").clear
   login_page.type_user_password_confirmation(user_password_confirmation)
   end

Então(/^ deve aparecer uma mensagem que as senhas digitadas não são iguais$/) do 
   page.has_content?('não é igual a Senha').should be_true
end

Então(/^eu devo clicar no botão para Cadastrar$/) do 
   click_on(:name, "commit").click
 end

 Então(/^uma mensagem de Cadastro com Sucesso deve ser exibida$/) do
    page.has_content?(:css, "div.flash-message__text").should be_true
    click_on(:css, "div.flash-message__text").click
    click_on(:css, "i.badge--close").click
  end

Então(/^ devo preencher o campo telefone com o ([^"]*)"$/) do |user_phone|
   click_on(:id, "user_phone").click
   click_on(:id, "user_phone").clear
   user_page.type_user_phone(user_phone)
   end

   Então(/^a informação no meu perfil deve ser salva$/) do
    click_on(:css, "div.flash-message__text").click
    click_on(:css, "i.badge--close").click
    click_on(:link_text, "NOTIFICAÇÕES").click
 end
 

