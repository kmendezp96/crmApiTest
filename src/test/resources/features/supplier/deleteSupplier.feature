Feature: delete supplier
  As a CRM administrator
  I want to delete one supplier
  So the unnecessary suppliers won't be on the system

  Scenario Outline: delete a supplier
    Given I have access to CRM "supplier" service with "all permission"
    When i delete the supplier with"<id>"
    Then the system response with a "204" status code
    And the supplier with that "<id>" must not exists
    Examples:
      | id  |
      | 9a77106e-d4fa-4d42-95a6-0d145d6a5f2a |