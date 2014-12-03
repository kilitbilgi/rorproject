Feature: Change Car Availability
  As an admin
  I can change car availability

  Scenario: Changing Car Availability
    Given I am on the admin panel
    When I click "Cars" link
    And I fill "3" as ID
    And I fill "5" as stock
    And I click "Submit" button
    Then I should see the car I just updated