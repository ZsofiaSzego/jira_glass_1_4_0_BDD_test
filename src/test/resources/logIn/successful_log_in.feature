Feature: Jira's log in feature

  Scenario:
    Given the user has a jira account.
    And the user is on the dashboard page.
    When the user enters the username as username.
    And the user enters the password as password.
    And the user clicks on the Log in button.
    Then the user can see they avatar.
    And the user can access they profile page.