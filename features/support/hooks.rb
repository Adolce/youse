Before '@login' do
  visit 'https://www.youse.com.br/'

  
end

After '@login' do
  click_on(:id, "track_logout").click
end


Before '@login1' do
  visit 'https://www.youse.com.br/'
 
  
end

After '@login' do
  click_on(:id, "track_logout").click
end