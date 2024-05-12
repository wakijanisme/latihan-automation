Given('I am on the homepage automationexercise.com') do
  visit 'https://automationexercise.com/'
end

When('I click sign in on the homepage') do
  find(:xpath, "//a[@href='/login']").click
  expect(URI.parse(current_url)).to have_content("/login")
  find(:xpath, "//h2[text()='Login to your account']").should be_visible
end

When('I fill my credentials on the homepage') do
  find(:xpath, "//input[@data-qa='login-email']").set("ogitest@gmail.com")
  find(:xpath, "//input[@data-qa='login-password']").set('Ogitest123')
  find(:xpath, "//*[@data-qa='login-password']//following-sibling::button").click
end

Then('I should be logged in') do
  # url harus https://automationexercise.com/
  assert_current_path("https://automationexercise.com/", wait: 5)
  # ada button Delete Account
  find(:xpath, "//*[contains(text(),'Delete Account')]").should be_visible
  #find(:xpath, "//*[text()='Ogi Test']").should be_visible
end
