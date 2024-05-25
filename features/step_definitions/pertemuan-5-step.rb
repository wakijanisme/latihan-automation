Given('saya berada di halaman google.com') do
  visit ("https://www.google.com/")
end

When('saya mengetikan keyword {string}') do |keyword|
  find(:xpath, "//textarea[@name='q']").set(keyword)
end

Then('saya tekan enter') do
  find(:xpath, "//textarea[@name='q']").send_keys(:enter)
end

Then('saya berhasil mendapatkan hasil pencarian {string}') do |keyword|
  #expect(find(:xpath, "//textarea[@name='q']").text(keyword))#.to be(keyword)
  sleep 2
  expect(find(:xpath, "//textarea[@name='q']").text).to eq(keyword)
  expect(URI.parse(current_url)).to have_content("search?q=#{keyword}")
end
