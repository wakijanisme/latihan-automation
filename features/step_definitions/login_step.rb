Given('I am on the homepage automationexercise.com') do
  visit 'https://automationexercise.com/'
end

When('I click sign in on the homepage') do
  pending
  #find(xpath, "//a[@href='/login']").click
  #expect(URI.parse(current_url)).to have_content("/login")
  #find
end

When('I fill my credentials on the homepage') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('I should be logged in') do
  pending # Write code here that turns the phrase above into concrete actions
end
