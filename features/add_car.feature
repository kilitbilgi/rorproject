Feature: Add a Car
  As an admin
  I want to add car

  Scenario: Add a Car
    Given I am on the admin panel
    When I click "Add Car" link
    And I fill "ferrari.png" as car_image
    And I fill "500" as car_price
    And I fill "10" as car_stock
    And I fill "Ferrari F40 Rent" as car_title
    And I fill "Ferrari" as car_make
    And I fill "F40" as car_model
    And I fill "2014" as car_year
    And I fill "Red" as car_color
    And I fill "Diesel" as car_fuel
    And I fill "250" as car_hp
    And I click "Submit" button
    Then I should see the car I just inserted
