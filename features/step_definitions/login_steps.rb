# encoding: utf-8
require 'rubygems'
require 'selenium-webdriver'
require 'rspec'
require 'gherkin'
require 'cucumber'
require 'site_prism'
require 'capybara'
require 'syntax'

Given(/^que usuário possa acessar a tela de login da Youse$/) do
 visit 'https://www.youse.com.br/'
end

When(/^informar um "([^"]*)" válido$/) do |email|
  click_on "email"
  login_page.type_email(email)
  click_on(:name, "commit").click
end

When(/^inserir uma "([^"]*)" válida$/) do |user_password|
  click_on(:id, "user_password").click
  click_on "user_password"
  login_page.type_user_password(user_password).click
  click_on(:name, "commit").click
end

Then(/^o sistema deve mostrar o usuário logado$/) do
  click_on(:css, "i.badge--close").click
  click_on(:link_text, "Olá, Testes").click

end

Then(/^E deve mostrar o perfil do usuário$/) do 
  click_on(:id, "my_account").click
  click_on(:id, "user_name").click
  page.has_content?('Olá, Testes').should be_true
end