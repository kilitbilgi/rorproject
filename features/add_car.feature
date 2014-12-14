Feature: Add a Car
  As an admin
  I want to add car
  So that admin can add car to his stock

  Scenario: Add a Car
    Given I am on the add car panel
    And I fill "ferrari.png" as car[image]
    And I fill "500" as car[price]
    And I fill "10" as car[stock]
    And I fill "Ferrari F40 Rent" as car[title]
    And I fill "Ferrari" as car[make]
    And I fill "F40" as car[model]
    And I fill "2014" as car[year_info]
    And I fill "Red" as car[color]
    And I fill "Diesel" as car[fueltype]
    And I fill "250" as car[hp]
    And I click "addCar" button
    Then I should see the car I just inserted
