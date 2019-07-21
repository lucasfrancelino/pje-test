class LoginPage < SitePrism::Page
    set_url '/'
  
    element :title, '#kc-header-wrapper'
    element :username_input, '#username'
    element :password_input, '#password'
    
    element :log_in_button, '#kc-login'
    
    element :alert, '.kc-feedback-text'
    
    def logar(username, password)
      username_input.set username
      password_input.set password
      log_in_button.click
    end
  
    def sair
      menu.solicita_sair
    end
  end