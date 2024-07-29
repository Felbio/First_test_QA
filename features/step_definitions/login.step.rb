Dado('que o usuario queira se logar') do 
  login.load 
end

Quando('ele digitar as credenciais validas') do
  @login.userLogin(CREDENTIAL[:user_one][:email], CREDENTIAL[:user_one][:password])
end

Então('deve acessar o site com sucesso') do
  home.checkLoginSuccessful
end