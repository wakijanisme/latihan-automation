Given('[page object] saya akses halaman automationexercise.com') do
  @landing_page = LandingPage.new
  @landing_page.load
end

When('[page object] saya click tombol sign in di homepage') do
  @landing_page.click_btn_sign_in
end

Then('[page object] saya beralih ke halaman login') do
  find(:xpath, "//h2[text()='Login to your account']").should be_visible
end

When('[page object] saya entry username {string} di halaman login') do |username|
  @login_page = LoginPage.new
  @login_page.input_username(username)
end

When('[page object] saya entry password {string} di halaman login') do |password|
  @login_page.input_password(password)
end

When('[page object] saya click tombol login di halaman login') do
  @login_page.click_btn_login
end

Then('[page object] saya berhasil login') do
  # url harus https://automationexercise.com/
  assert_current_path("https://automationexercise.com/", wait: 5)

  #validate halaman
  @dashboard_page = DashboardPage.new
  @dashboard_page.validate_page
end

Then('[page object] saya akan melihat pesan error {string}') do |error|
  find(:xpath, "//*[text()='#{error}']").should be_visible
end

Then('[page object] saya akan melihat pesan error email dan password salah') do
  @login_page.error_login
end
