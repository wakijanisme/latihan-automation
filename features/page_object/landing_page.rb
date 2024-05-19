class LandingPage < SitePrism::Page

  set_url("https://automationexercise.com/")

  element :btn_sign_in, :xpath, "//a[@href='/login']"

  def click_btn_sign_in
    btn_sign_in.click
  end

end
