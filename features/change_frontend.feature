Feature: Change Frontend
  As an admin
  I can change title and welcome text

  Scenario: Changing Frontend
    Given I am on the admin panel
    When I click "Options" link
    And I fill "Rent a Car" as title
    And I fill "Start Renting" as welcome_text
    And I click "Submit" button
    Then I should see title and welcome text I just updated