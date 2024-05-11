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
  fill_in 'password', with: 'Ogitest123'
  click_on "Login"
end

Then('I should be logged in') do
  find(:xpath, "//*[text()='Ogi Test']").should be_visible
end
