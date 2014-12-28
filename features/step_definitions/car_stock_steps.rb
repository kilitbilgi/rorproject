And(/^I fill "(.*?)" as car\[stock\]$/) do |stock|
  fill_in "car[stock]", :with => stock
end