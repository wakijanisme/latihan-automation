Given('saya akses halaman automationexercise.com') do
  visit 'https://automationexercise.com/'
end

When('saya click tombol sign in di homepage') do
  find(:xpath, "//a[@href='/login']").click
end

Then('saya beralih ke halaman login') do
  find(:xpath, "//h2[text()='Login to your account']").should be_visible
end

When('saya entry username di halaman login') do
  find(:xpath, "//input[@data-qa='login-email']").set("ogitest@gmail.com")
  find(:xpath, "//input[@data-qa='login-password']").set('Ogitest123')
end

When('saya click tombol login di halaman login') do
  find(:xpath, "//*[@data-qa='login-password']//following-sibling::button").click
end

Then('saya berhasil login') do
  # url harus https://automationexercise.com/
  assert_current_path("https://automationexercise.com/", wait: 5)
  # ada button Delete Account
  find(:xpath, "//*[contains(text(),'Delete Account')]").should be_visible
  #find(:xpath, "//*[text()='Ogi Test']").should be_visible
end

When('saya entry username {string} di halaman login') do |username|
  find(:xpath, "//input[@data-qa='login-email']").set(username)
end

When('saya entry password {string} di halaman login') do |password|
  find(:xpath, "//input[@data-qa='login-password']").set(password)
end

Given('saya memiliki data berikut:') do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  $listDataUser = table.hashes
end

When('saya entry username di halaman login berdasarkan data diatas') do
  find(:xpath, "//input[@data-qa='login-email']").set($listDataUser[1]['username'])
end

When('saya entry password di halaman login berdasarkan data diatas') do
  find(:xpath, "//input[@data-qa='login-password']").set($listDataUser[1]['password'])
end

Given('saya memiliki data berikut \(example):') do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  $listDataUser = table.hashes[0]
end

When('saya entry username di halaman login berdasarkan data diatas \(example)') do
  find(:xpath, "//*[@data-qa='login-email']").set($listDataUser['username'])
end

When('saya entry password di halaman login berdasarkan data diatas \(example)') do
  find(:xpath, "//*[@data-qa='login-password']").set($listDataUser['password'])
end
