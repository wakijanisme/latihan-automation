Before do |scenario|
  #page.windows[0].maximize
end

After do |scenario|
  sleep 5
end


Before ('@test-login') do
  page.windows[0].maximize
end

After ('@test-login') do
  puts "hooks setelah dijalankan"
end
