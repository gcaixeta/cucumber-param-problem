Feature: Select_categories
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: Select categories
    Given the following categories:
        |name|
        |name 1|
        |name 2|
        |name 3|
        |name 4|
    And I am on the home page
    When I check "Name 1"
    And I check "Name 4"
    And I press "Select Categories"
    Then I should see the following categories:
        |Name|
        |name 1|
        |name 4|
