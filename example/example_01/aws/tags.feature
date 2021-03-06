Feature: Resources should be properly tagged
  In order to keep track of resource ownership
  As engineers
  We'll enforce tagging on all resources

  Scenario: Ensure all resources have tags
    Given I have resource that supports tags defined
    Then it must contain tags

  Scenario Outline: Ensure that specific tags are defined
    Given I have resource that supports tags defined
    When it contains tags
    Then it must contain <tags>

  Examples:
  | tags        |
  | Name        |
  | application |
  | role        |
  | environment |