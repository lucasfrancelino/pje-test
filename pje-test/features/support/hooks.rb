Before('@seccional') do
  @login = LoginPage.new
  
  @username = 'AM19203'
  @password = 'AM19203'
  @login.load
  @login.logar(@username, @password)
  sleep 3
end
  
After('@logout') do
  sleep 5
  @login = LoginPage.new
  @login.sair
end

After do |scenario|
  nome_cenario = scenario.name.tr(' ','_').downcase!
  nome_cenario = nome_cenario.gsub(/([_@#!%()\-=;><,{}\~\[\]\.\/\?\"\*\^\$\+\-]+)/,'')
  screenshot = "logs/shots/#{nome_cenario}.png"
  page.save_screenshot(screenshot)
  embed(screenshot, 'image/png', 'Clique aqui para ver a evidência!')
end