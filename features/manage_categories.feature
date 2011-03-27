Feature: Manage categories
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: Register new category
    Given I am on the new category page
    When I fill in "Name" with "name 1"
    And I press "Create"
    Then I should see "name 1"

  Scenario: Delete category
    Given the following categories:
      |name|
      |name 1|
      |name 2|
      |name 3|
      |name 4|
    When I delete the 3rd category
    Then I should see the following categories:
      |Name|
      |Name 1|
      |Name 2|
      |Name 4|
