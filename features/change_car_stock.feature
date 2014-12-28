Feature: Change Car Stock
  As an admin
  I can change car Stock

  Scenario: Changing Car Stock
    Given I am on the change stock panel
    And I fill "3" as car_id
    And I fill "5" as car[stock]
    And I click "cars" button
    Then I should see the car I just updated