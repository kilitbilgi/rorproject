Feature: Edit Car
  As an admin
  I can edit car information

  Scenario: Edit a Car
    Given I am on the edit car panel
    And I fill "3" as car_id2
    And I fill "500" as car_price2
    And I fill "10" as car_stock2
    And I fill "Ferrari F40 Rent" as car_title2
    And I fill "Ferrari" as car_make2
    And I fill "F40" as car_model2
    And I fill "2014" as car_year2
    And I fill "Red" as car_color2
    And I fill "Diesel" as car_fuel2
    And I fill "250" as car_hp2
    And I click "Submit" button2
    Then I should see the car I just updated