Feature: Add a Car
  As an admin
  I want to add car

  Scenario: Write a post to the blog
    Given I am on the admin panel
    When I click "admin/cars" link
    And I fill "ferrari.png" as imageUrl
    And I fill "500" as price
    And I fill "10" as stock
    And I fill "Ferrari F40 Rent" as title
    And I fill "Ferrari" as make
    And I fill "F40" as model
    And I fill "2014" as year
    And I fill "Red" as color
    And I fill "Diesel" as fuel
    And I fill "250" as hp
    And I click "Submit" button
    Then I should see the car I just inserted
