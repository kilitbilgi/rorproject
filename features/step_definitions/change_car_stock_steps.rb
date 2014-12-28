Given(/^I am on the change stock panel$/) do
  visit("/admin/changeStock")
end
And(/^I fill "(.*?)" as car_id$/) do |id|
  fill_in "car_id", :with => id
end
