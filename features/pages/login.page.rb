class LoginPage < SitePrism::Page

  element :emailField, :id, "username"
  element :passwordField, :id, "password"
  element :loginButton, :xpath, "//*[@id='organic-div']/form/div[3]/button"


  def userLogin
    emailField.set "feliciano@gmail.com"
    passwordField.set "Abc@123"
    loginButton.click
  end
end

