Feature: Jira's log in feature

  Scenario:
    Given the user is on the log in page.
    When the user leaves the username empty.
    And the user leaves the password empty.
    And the user clicks the Log in button.
    Then the user sees an error message.
    And the user can't see they avatar.