Feature: Jira's log in feature

  Scenario:
    Given the user is logged in.
    When the user clicks on they avatar.
    And the user clicks on Log Out.
    Then the user can't see they avatar.
    And the user gets a message that says:'You are now logged out.'
    And the user can't see they profile page.