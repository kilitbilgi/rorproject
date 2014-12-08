Given(/^I am on the edit car panel$/) do
  visit('/admin/editCar')
end

And(/^I fill "(.*?)" as car_id2$/) do |price|
  fill_in "car_id2", :with => price
end

And(/^I fill "(.*?)" as car_price2$/) do |price|
  fill_in "car_price2", :with => price
end

And(/^I fill "(.*?)" as car_stock2$/) do |stock|
  fill_in "car_stock2", :with => stock
end

And(/^I fill "(.*?)" as car_title2$/) do |title|
  @title = title
  fill_in "car_title2", :with => title
end

And(/^I fill "(.*?)" as car_make2$/) do |make|
  fill_in "car_make2", :with => make
end

And(/^I fill "(.*?)" as car_model2$/) do |model|
  fill_in "car_model2", :with => model
end

And(/^I fill "(.*?)" as car_year2$/) do |year|
  fill_in "car_year2", :with => year
end

And(/^I fill "(.*?)" as car_color2$/) do |color|
  fill_in "car_color2", :with => color
end

And(/^I fill "(.*?)" as car_fuel2$/) do |fuel|
  fill_in "car_fuel2", :with => fuel
end

And(/^I fill "(.*?)" as car_hp2$/) do |hp|
  fill_in "car_hp2", :with => hp
end

And(/^I click "(.*?)" button2$/) do |link|
  visit link
end

Then(/^I should see the car I just updated/) do
  #page.should have_content(@title)
end