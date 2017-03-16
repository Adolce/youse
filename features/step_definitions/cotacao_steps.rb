# encoding: utf-8
# language: pt
require_relative "youse_test/features/specifications"

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

Dado(/^que eu sou direcionada para a proxima pagina da cotação$/) do 
   page.has_content?('Seu carro está avaliado em').should be_true
 end

Dado(/^que eu sou direcionada para a proxima pagina da cotação assistencias$/) do 
   page.has_content?('Sugestões de Assistências Youse para vc.').should be_true
 end

Dado(/^que eu sou direcionada para o proximo passo da cotação de auto$/) do
   page.has_content?('Conta aí um pouquinho mais sobre vc.').should be_true
  end

Dado(/^que sou direcionada para o ultimo passo da cotação de auto$/) do
   page.has_content?('Estamos cada vez mais perto de fechar seu seguro :D.').should be_true
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

Quando(/^ eu devo selecionar como uso o carro$/) do
    page.all(:xpath, "//select[@id='auto_order_flow_pricing_requirements_vehicle_attributes_usage']//option[2]").selected?
    page.all(:xpath, "//select[@id='auto_order_flow_pricing_requirements_vehicle_attributes_usage']//option[2]").click
  end

Quando(/^eu preencher o campo com um "([^"]*)"valido$/) do |auto_order_flow_pricing_requirements_vehicle_attributes_address_attributes_zipcode|
    click_on(:id, "auto_order_flow_pricing_requirements_vehicle_attributes_address_attributes_zipcode").click
    click_on(:id, "auto_order_flow_pricing_requirements_vehicle_attributes_address_attributes_zipcode").clear
    auto_page.type_auto_order_flow_pricing_requirements_vehicle_attributes_address_attributes_zipcode(auto_order_flow_pricing_requirements_vehicle_attributes_address_attributes_zipcode)
  end

Quando(/^eu preencher o campo data de "([^"]*)"$/) do|auto_order_flow_pricing_requirements_insured_person_attributes_date_of_birth|
    click_on(:id, "auto_order_flow_pricing_requirements_insured_person_attributes_date_of_birth").click
    click_on(:id, "auto_order_flow_pricing_requirements_insured_person_attributes_date_of_birth").clear
    auto_page.type_auto_order_flow_pricing_requirements_insured_person_attributes_date_of_birth(auto_order_flow_pricing_requirements_insured_person_attributes_date_of_birth)
  end

Quando(/^ eu selecionar a pessoas que mais dirige o carro$/) do
    page.all(:xpath, "//*[@id='auto_order_flow_pricing_requirements_driver_attributes_same_as_insured_person']//option[1]").selected?
    page.all(:xpath, "//*[@id='auto_order_flow_pricing_requirements_driver_attributes_same_as_insured_person']//option[1]").click
  end

Quando(/^eu devo selecionar uma opção de tempo que ja me ocorreu um sinistro ou não$/) do
     page.all(:xpath, "//select[@id='auto_order_flow_pricing_requirements_driver_attributes_years_since_last_claim']//option[5]").selected?
     page.all(:xpath, "//select[@id='auto_order_flow_pricing_requirements_driver_attributes_years_since_last_claim']//option[5]").click
    end

Quando(/^eu devo selecionar a opção de vale para qualquer batida$/) do
    page.find(:checkbox,:id "edit_auto_order_flow_coverages_selection_4365692").set(true)
  end

Quando(/^eu selecionar a opção danos materiais a terceiros$/) do
    page.find(:checkbox,:id, "switch_271767508301172521846465774592072297907").set(true)
  end

Quando(/^eu devo selecionar a opção acidentes de passageiros$/) do
    page.find(:checkbox, :id"switch_326718050531857522702224152008168861563").set(true)
  end

Quando(/^eu devo selecionar a opção danos corporais a terceiros$/) do
    page.find(:checkbox, :id,"switch_303862983940495640496241780109878231064").set(true)
  end

Quando(/^eu habilitar a opção assistencia a automovel$/) do
    page.find(:checkbox, :id,"switch_26348995585962685702029841959689860972").set(true)
  end

Quando (/^eu habilitar a opção carro reserva$/) do
    page.find(:checkbox, :id,"switch_311035941765665258893642145492952143290").set(true)
end

Quando(/^eu habilitar a opção vidros$/) do
    page.find(:checkbox, :id,"switch_186576300731181745094354146680061722079").set(true)
  end

Quando (/^eu habilitar a opção serviço leva e traz$/) do
    page.find(:checkbox, :id,"switch_191249382264507761249480702363008428950").set(true)
end

Quando (/^eu habilitar a opção serviço de historico veicular$/) do
    page.find(:id,"switch_200301665987320833325471743984916300509").set(true)
end

Quando(/^eu preencher o campo "([^"]*)" de forma completa $/) do|auto_order_flow_insured_person_data_insured_person_attributes_name'|
    click_on(:id, "auto_order_flow_insured_person_data_insured_person_attributes_name").click
    click_on(:id, "auto_order_flow_insured_person_data_insured_person_attributes_name").clear
    auto_page.type_auto_order_flow_insured_person_data_insured_person_attributes_name(auto_order_flow_insured_person_data_insured_person_attributes_name')
  end

Quando(/^eu seleciono o pais em que nasci$/) do
    page.find(:id, "auto_order_flow_insured_person_data_insured_person_attributes_nationality").set(value="BR")
  end

Quando (/^seleciono a minha renda familiar$/) do
    page.all(:xpath, "//select[@id='auto_order_flow_insured_person_data_insured_person_attributes_salary_range']//option[6]").select?
    page.all(:xpath, "//select[@id='auto_order_flow_insured_person_data_insured_person_attributes_salary_range']//option[6]").click
  end

Quando (/^eu preencho o "([^"]*)" do meu endereço$/) do |auto_order_flow_insured_person_data_insured_person_attributes_address_attributes_number|
    click_on(:id, "auto_order_flow_insured_person_data_insured_person_attributes_address_attributes_number").click
    click_on(:id, "auto_order_flow_insured_person_data_insured_person_attributes_address_attributes_number").clear
    auto_page.type_auto_order_flow_insured_person_data_insured_person_attributes_address_attributes_number
  end

Quando (/^seu preencho o campo com uma "([^"]*)" valida$/) do |auto_order_flow_vehicle_data_vehicle_attributes_license_plate|
    click_on(:id,"auto_order_flow_vehicle_data_vehicle_attributes_license_plate").click
    click_on(:id, "auto_order_flow_vehicle_data_vehicle_attributes_license_plate").clear
    auto_page.type_auto_order_flow_vehicle_data_attributes_license_plate(auto_order_flow_vehicle_data_vehicle_attributes_license_plate)
  end

Quando (/^eu seleciono a opção se é blindado ou não$/) do
    page.all(:xpath, "//select[@id='auto_order_flow_vehicle_data_vehicle_attributes_bullet_proof']//option[2]").select?
    page.all(:xpath, "//select[@id='auto_order_flow_vehicle_data_vehicle_attributes_bullet_proof']//option[2]").click
  end  

###### Entao #####

Então(/^ eu devo selecionar para quem se destina o seguro$/) do 
   page.all(:xpath, "//*[@id='auto_order_flow_lead_person_data_insured_person_attributes_same_as_lead_person']//option[1]").selected?
   page.all(:xpath, "//*[@id='auto_order_flow_lead_person_data_insured_person_attributes_same_as_lead_person']//option[1]").click
  end

Então(/^devo preencher o campo de email com um "([^"]*)" valido$/) do |auto_order_flow_lead_person_data_lead_person_attributes_email|
   click_on(:id, "auto_order_flow_lead_person_data_lead_person_attributes_email").click
   click_on(:id, "auto_order_flow_lead_person_data_lead_person_attributes_email").clear
   auto_page.type_auto_order_flow_lead_person_data_lead_person_attributes_email(auto_order_flow_lead_person_data_lead_person_attributes_email)
  end

Então(/^ eu devo clicar no botao para prosseguir$/) do 
   if not click_button "PRÓXIMO PASSO"
   click_button (:name, "commit").click
  end
end

Então(/^ eu devo escolher um tipo de veiculo$/) do 
   page.all(:xpath, "//select[@id='auto_order_flow_pricing_requirements_vehicle_attributes_model']//option[4]").selected?
   page.all(:xpath, "//select[@id='auto_order_flow_pricing_requirements_vehicle_attributes_model']//option[4]").click
  end

Então(/^ eu devo escolher uma versao de veiculo$/) do 
   page.all(:xpath, "//select[@id='auto_order_flow_pricing_requirements_vehicle_attributes_version']//option[4]").selected?
   page.all(:xpath, "//select[@id='auto_order_flow_pricing_requirements_vehicle_attributes_version']//option[4]").click
  end

Então(/^eu devo especificar se o veiculo e novo ou usado$/) do
    page.all(:xpath, ".//select[@id='auto_order_flow_pricing_requirements_vehicle_attributes_brand_new']//option[3]").selected?
    page.all(:xpath, "//select[@id='auto_order_flow_pricing_requirements_vehicle_attributes_year']//option[3]").click
  end

Então(/^ seleciono se eu ja tenho ou não a posse do veiculo$/) do 
    page.all(:xpath, "//select[@id='auto_order_flow_pricing_requirements_vehicle_attributes_collected']//option[3]").selected?
    page.all(:xpath, "//select[@id='auto_order_flow_pricing_requirements_vehicle_attributes_collected']//option[3]").click
  end

Então(/^ eu digito a "([^"]*)" que vou retirar o veiculo$/) do |auto_order_flow_pricing_requirements_vehicle_attributes_collect_date|
    click_on(:id, "auto_order_flow_pricing_requirements_vehicle_attributes_collect_date").click
    click_on(:id, "auto_order_flow_pricing_requirements_vehicle_attributes_collect_date").clear
    auto_page.type_auto_order_flow_pricing_requirements_vehicle_attributes_collect_date (auto_order_flow_pricing_requirements_vehicle_attributes_collect_date)
  end

Então(/^eu devo selecionar o genero contratante$/) do 
    page.all(:xpath, "//select[@id='auto_order_flow_pricing_requirements_insured_person_attributes_gender']//option[3]").selected?
    page.all(:xpath, "//select[@id='auto_order_flow_pricing_requirements_insured_person_attributes_gender']//option[3]").click
  end

Então(/^eu devo selecionar o meu estado civil$/) do 
    page.all(:xpath, "//select[@id='auto_order_flow_pricing_requirements_insured_person_attributes_marital_status']//option[2]").selected?
    page.all(:xpath, "//select[@id='auto_order_flow_pricing_requirements_insured_person_attributes_marital_status']//option[2]").click
  end

Então(/^eu seleciono se desejo contratar ou não a opção motorista jovem$/) do
    page.all(:xpath, "//select[@id='auto_order_flow_pricing_requirements_driver_attributes_young_driver']//option[3]").selected?
    page.all(:xpath, "//select[@id='auto_order_flow_pricing_requirements_driver_attributes_young_driver']//option[3]").click
  end

Então(/^ eu devo clicar no botao proximo passo$/) do 
   if not click_button "PRÓXIMO PASSO"
   click_button (:name, "commit").click
  end
end

Então(/^seleciono o valor da cobertura para qualquer batida$/) do 
   page.find(:range,'coverages__selected_deductible').set(7002.0)
  end  

Então(/^seleciono o valor da cobertura para danos a terceiros$/) do 
   page.find(:range,'coverages__selected_lmi').set(150.000)
  end 

Então(/^seleciono o valor da cobertura para acidentes de passageiros$/) do 
   page.find(:range,'coverages__selected_lmi').set(150.000)
  end

Então(/^seleciono o valor da cobertura para danos corporais a terceiros$/) do 
   page.find(:range,'coverages__selected_lmi').set(154.000)
  end

Então(/^ Então clico no botão proximo e avanço ao passo seguinte$/) do
   if not click_button "PRÓXIMO PASSO"
   click_button (:name, "commit").click
  end
end

Então(/^ eu eu devo habilitar a opção chaveiro$/) do 
   page.find(:checkbox, :id,"switch_52206348848688344240826477701842689784").set(true)
  end

Então(/^ eu seleciono as opções de carro reserva$/) do 
   page.find(:radio_button, :id,"radio_button_190821166034444456324632238619010381620").set(true)
   page.find(:radio_button, :id,"radio_button_31131630924737084832267907116618398300").set(true)
  end

Então(/^eu habilito a opção Farois laternas e retrovisores$/) do 
   page.find(:checkbox, :id,"switch_327986764981613866633171056985088877831").set(true)
  end

Então(/^eu habilito a opção restituição de ipva$/) do 
   page.find(:checkbox, :id,"switch_77347356110147751374418505421827979670").set(true)
  end

Então(/^clico no botão próximo passo da cotação$/) do 
   if not click_button "PRÓXIMO PASSO"
   click_button (:name, "commit").click
  end
end

Então(/^ eu eu devo habilitar a opção chaveiro$/) do 
   page.find(:checkbox, :id,"switch_52206348848688344240826477701842689784").set(true)
  end     

Então(/^eu preencho o campo "([^"]*)" com um valor valido$/) do |auto_order_flow_insured_person_data_insured_person_attributes_cpf|
   click_on(:id, "auto_order_flow_insured_person_data_insured_person_attributes_cpf").click
   click_on(:id, "auto_order_flow_insured_person_data_insured_person_attributes_cpf").clear
   auto_page.type_auto_order_flow_insured_person_data_insured_person_attributes_cpf(auto_order_flow_insured_person_data_insured_person_attributes_cpf)
  end

Então(/^eu seleciono a opção de "([^"]*)"$/) do |input.select2-search__field|
   click_on(:css, "input.select2-search__field").click
   click_on(:css, "input.select2-search__field").clear
   auto_page.type_input.select2-search__field(input.select2-search__field)
   click_on(:id, "select2-auto_order_flow_insured_person_data_insured_person_attributes_occupation-container").click
  end

Então(/^eu preencho o "([^"]*)" da minha residencia$/) do |auto_order_flow_insured_person_data_insured_person_attributes_address_attributes_number|
   click_on(:id, "auto_order_flow_insured_person_data_insured_person_attributes_address_attributes_number").click
   click_on(:id, "auto_order_flow_insured_person_data_insured_person_attributes_address_attributes_number").clear
   auto_page.type_auto_order_flow_insured_person_data_insured_person_attributes_address_attributes_number(auto_order_flow_insured_person_data_insured_person_attributes_address_attributes_number)
  end  

Então(/^eu clico no botão para finalizar a cotação e ir para o pagamento$/) do 
   if not click_button "PRÓXIMO PASSO"
   click_button (:name, "commit").click
  end
end

Então(/^eu seleciono a opção se o carro possui ou não adaptações$/) do
   page.all(:xpath, "//select[@id='adapted']//option[1]").selected?
   page.all(:xpath, "//select[@id='adapted']//option[1]").click
  end 

Então(/^eu valido a mensagem ao final do processo de contação sem prosseguir o pagamento$/) do
   page.has_content?('Pronto! Um seguro do seu jeito.').should be_true
  end  
