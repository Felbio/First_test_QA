class HomePage < SitePrism::Page

  element :userName, :xpath, '//*[@id="ember1076"]/div[2]'
  element :navBarHome, :xpath, "//*[@id='global-nav']/div/nav/ul/li[1]/a/span"
  element :myIcon, :id, "ember19"

  def checkLoginSuccessful
    expect(userName.text).to eql "Felipe José de Oliveira"
    expect(navBarHome.text).to eql "Início"  
    expect(myIcon.text).to eql "Eu"  
  end
end
