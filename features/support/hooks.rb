Before do |scenario|
  #page.windows[0].maximize
end

After do |scenario|
  sleep 5
end


Before ('@test-login')
  page.windows[0].maximize
end

After ('@test-login')
  puts "hooks setelah dijalankan"
end
