Before do |scenario|
  #page.windows[0].maximize
end

After do |scenario|
  #sleep 3
  #take_screenshot
end

AfterStep do |scenario|
  # sleep 3
  # take_screenshot
end

# After do |scenario|
#   # sleep 3
#   take_screenshot if scenario.failed?
# end


Before ('@test-login') do
  page.windows[0].maximize
end

After ('@test-login') do
  puts "hooks setelah dijalankan"
end

at_exit do
  # generate_report

  # # Kernel.exit(0)
end
