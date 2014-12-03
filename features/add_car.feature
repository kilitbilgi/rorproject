Feature: Add a Car
  As an admin
  I want to add car

  Scenario: Write a post to the blog
    Given I am on the admin panel
    When I click "Cars" link
    And I fill "ferrari.png" as ImageUrl
    And I fill "Test content" as content
    And I click "Post" button
    Then I should see the blog I just posted
