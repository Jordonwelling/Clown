Feature: This is my first feature file this week.

  Scenario: Adopting a puppy
    Given on home page
    When view details
    Then complete process
    Then fill out the information

  Scenario: Adopting two puppies
    Given on home page
    When view details
    Then add another
    Then view details number two
    Then complete process
    Then fill out the information

  Scenario: Adopting three puppies
    Given on home page
    When view details
    Then add another
    Then view details number two
    Then add third
    Then complete process
    Then fill out the information

  Scenario Outline: Verify two puppies
    Given on home page
    When view details
    Then add another
    Then view details number two
    Then verify "<puppy name>" on line item 1
    And amounts "<price>" on line item 1
    Then the total "57.94"
    Examples:
    |puppy name|price|
    |Brook     |34.95|
    |Hanna     |22.99|

  Scenario: Verify home page
    Given on home page
    When i see the logo
    And the side menu
    Then it is complete
