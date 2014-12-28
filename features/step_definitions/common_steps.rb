Given(/^I am on the add car panel$/) do
  visit('/admin/addCar')
end

And(/^I fill "(.*?)" as car\[price\]$/) do |price|
  fill_in "car[price]", :with => price
end

And(/^I fill "(.*?)" as car\[stock\]$/) do |stock|
  fill_in "car[stock]", :with => stock
end

And(/^I fill "(.*?)" as car\[title\]$/) do |title|
  @title = title
  fill_in "car[title]", :with => title
end

And(/^I fill "(.*?)" as car\[make\]$/) do |make|
  fill_in "car[make]", :with => make
end

And(/^I fill "(.*?)" as car\[model\]$/) do |model|
  fill_in "car[model]", :with => model
end

And(/^I fill "(.*?)" as car\[year_info\]$/) do |year|
  fill_in "car[year_info]", :with => year
end

And(/^I fill "(.*?)" as car\[color\]$/) do |color|
  fill_in "car[color]", :with => color
end

And(/^I fill "(.*?)" as car\[fueltype\]$/) do |fuel|
  fill_in "car[fueltype]", :with => fuel
end

And(/^I fill "(.*?)" as car\[hp\]$/) do |hp|
  fill_in "car[hp]", :with => hp
end

And(/^I click "(.*?)" button$/) do |link|
  visit link
end