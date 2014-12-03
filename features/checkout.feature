Feature: Checkout
  As a member
  I can checkout

  Scenario: Changing Membership
    Given I am on the admin panel
    When I click "kilitbilgi@gmail.com" email
    And I select "Admin" as type
    And I click "Submit" button
    Then I should member I just updated