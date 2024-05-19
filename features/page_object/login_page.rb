class LoginPage < SitePrism::Page

  set_url ('https://automationexercise.com/login')

  element :txt_username, :xpath, "//input[@data-qa='login-email']"
  element :txt_password, :xpath, "//input[@data-qa='login-password']"
  element :btn_login, :xpath, "//*[@data-qa='login-password']//following-sibling::button"
  element :lbl_error, :xpath, "//*[text()='Your email or password is incorrect!']"

  def input_username(username)
    txt_username.set(username)
  end

  def input_password(password)
    txt_password.set(password)
  end

  def click_btn_login
    btn_login.click
  end

  def error_login
    raise "Label error login is not visible" unless has_lbl_error?(visible:true)
  end

end
