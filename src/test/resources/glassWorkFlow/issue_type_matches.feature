Feature: Feature: Jira's glass documentation

  Scenario:
    Given I am logged in jira.
    And I am on the 'Demo' project's 'Glass Documentation' page.
    When I click on the 'Issue Types' tab.
    And I click on 'Task'.
    Then I the 'Selected issue type' is 'Task (10002)'.