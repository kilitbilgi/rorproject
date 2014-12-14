Given(/^I am on the add car panel$/) do
  visit('/admin/addCar')
end

And(/^I fill "(.*?)" as car[image]$/) do |url|
  fill_in "car_image", :with => url
end

And(/^I fill "(.*?)" as car_price$/) do |price|
  fill_in "car_price", :with => price
end

And(/^I fill "(.*?)" as car_stock$/) do |stock|
  fill_in "car_stock", :with => stock
end

And(/^I fill "(.*?)" as car_title$/) do |title|
  @title = title
  fill_in "car_title", :with => title
end

And(/^I fill "(.*?)" as car_make$/) do |make|
  fill_in "car_make", :with => make
end

And(/^I fill "(.*?)" as car_model$/) do |model|
  fill_in "car_model", :with => model
end

And(/^I fill "(.*?)" as car_year$/) do |year|
  fill_in "car_year", :with => year
end

And(/^I fill "(.*?)" as car_color$/) do |color|
  fill_in "car_color", :with => color
end

And(/^I fill "(.*?)" as car_fuel$/) do |fuel|
  fill_in "car_fuel", :with => fuel
end

And(/^I fill "(.*?)" as car_hp$/) do |hp|
  fill_in "car_hp", :with => hp
end

And(/^I click "(.*?)" button$/) do |link|
  visit link
end

Then(/^I should see the car I just inserted$/) do
  #page.should have_content(@title)
end