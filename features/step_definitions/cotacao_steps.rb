# encoding: utf-8


##### Dado #####
Dado (/^que eu clique no link de Seguro Auto$/) do
  visit 'https://www.youse.com.br/'
  click_on "SEGURO AUTO"
end

Dado (/^que eu clique no link de cotacao$/) do
   click_on "FAZER COTAÇÃO"
end
Dado(/^eu sou direcionada para o proximo passo da cotacao$/) do 
 page.has_content?('1/4 Cotação').should be_true

 end


###### Quando #####

Quando(/^eu clico no campo Nome e preencho com um "([^"]*)" valido$/) do |auto_order_flow_lead_person_data_lead_person_attributes_name|
  click_on(:id, "auto_order_flow_lead_person_data_lead_person_attributes_name").click
  click_on(:id, "auto_order_flow_lead_person_data_lead_person_attributes_name").clear
  auto_page.type_auto_order_flow_lead_person_data_lead_person_attributes_name(auto_order_flow_lead_person_data_lead_person_attributes_name)

end

Quando(/^preencho o campo telefone com um "([^"]*)" valido$/) do |auto_order_flow_lead_person_data_lead_person_attributes_phone|
 click_on(:id, "auto_order_flow_lead_person_data_lead_person_attributes_phone").click
 click_on(:id, "auto_order_flow_lead_person_data_lead_person_attributes_phone").clear
 fill_in "auto_order_flow_lead_person_data_lead_person_attributes_phone", with: "(11) 9999-9999"
 end

Quando(/^eu clicar no botão para Cadastrar$/) do
  click_on(:name, "commit").click
end

Quando(/^eu selecionar uma marca de veiculo$/) do 
  page.all(:xpath, "//select[@id='auto_order_flow_pricing_requirements_vehicle_attributes_make']//option[5]").selected?
  page.all(:xpath, "//select[@id='auto_order_flow_pricing_requirements_vehicle_attributes_make']//option[5]").click
end

Quando(/^eu escolher o ano de fabricaçao automovel$/) do
    page.all(:xpath, "//select[@id='auto_order_flow_pricing_requirements_vehicle_attributes_year']//option[2]").selected?
    page.all(:xpath, "//select[@id='auto_order_flow_pricing_requirements_vehicle_attributes_year']//option[2]").click
end

Quando(/^eu selecionar o genero contratante$/) do 
    page.all(:xpath, "//select[@id='auto_order_flow_pricing_requirements_insured_person_attributes_gender']//option[3]").selected?
    page.all(:xpath, "//select[@id='auto_order_flow_pricing_requirements_insured_person_attributes_gender']//option[3]").click
end

Quando(/^eu clicar no botão para atualizar o cadastro$/) do 
 click_on(:name, "commit").click
end

###### Then #####

Então(/^devo preencher o campo de email com um "([^"]*)" valido$/) do |auto_order_flow_lead_person_data_lead_person_attributes_email|
   click_on(:id, "auto_order_flow_lead_person_data_lead_person_attributes_email").click
   click_on(:id, "auto_order_flow_lead_person_data_lead_person_attributes_email").clear
   login_page.type_auto_order_flow_lead_person_data_lead_person_attributes_email(auto_order_flow_lead_person_data_lead_person_attributes_email)
end

Então(/^ eu devo clicar no botao prosseguir$/) do 
   click_on(:name, "commit").click
 end

Então(/^ eu devo escolher um tipo de veiculo$/) do 
   page.all(:xpath, "//select[@id='auto_order_flow_pricing_requirements_vehicle_attributes_model']//option[4]").selected?
   page.all(:xpath, "//select[@id='auto_order_flow_pricing_requirements_vehicle_attributes_model']//option[4]").click
end

Então(/^ eu devo escolher uma versao de veiculo$/) do 
   page.all(:xpath, "//select[@id='auto_order_flow_pricing_requirements_vehicle_attributes_version']//option[4]").selected?
   page.all(:xpath, "//select[@id='auto_order_flow_pricing_requirements_vehicle_attributes_version']//option[4]").click
 end

 Então(/^eu devo preencher o campo data de "aniversário"o$/) do|auto_order_flow_pricing_requirements_vehicle_attributes_address_attributes_zipcode|
    click_on(:id, "auto_order_flow_pricing_requirements_insured_person_attributes_date_of_birth").click
    click_on(:id, "auto_order_flow_pricing_requirements_insured_person_attributes_date_of_birth").clear
    auto_page.type_auto_order_flow_pricing_requirements_insured_person_attributes_date_of_birth(auto_order_flow_pricing_requirements_insured_person_attributes_date_of_birth)
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
 

