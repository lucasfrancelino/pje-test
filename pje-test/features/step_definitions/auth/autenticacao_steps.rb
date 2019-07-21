Dado('que eu acesso o sistema') do
    @login = LoginPage.new
    @login.load
    sleep 5
  end
  
  #HU - 001
  Quando("faco login com {string} e {string}") do |username, password|
    expect(@login.title.text).to eql 'JF1'
    fill_in 'username', with: username
    fill_in 'password', with: password
    click_button('Log in')
  end
  
  Entao('sou autenticado com sucesso') do
    expect(page).to have_content 'Bem vindo ao Sistema de Controle Orçamentário de Requisitados'
  end
  
  Entao("devo ver a mensagem {string}") do |mensagem_alerta|
    expect(@login.alert.text).to eql mensagem_alerta
  end