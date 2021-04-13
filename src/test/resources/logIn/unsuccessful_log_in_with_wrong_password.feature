Feature: Jira's log in feature

  Scenario:
    Given the user is on the log in page.
    When the user enter username as username.
    And the user enter a wrong password as password.
    And the user clicks on the Log in button.
    Then the user get an error message.
    And the user can't see they avatar.