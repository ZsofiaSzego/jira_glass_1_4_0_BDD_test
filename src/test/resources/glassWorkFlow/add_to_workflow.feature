Feature: Jira's glass documentation

  Scenario:
    Given I am logged in jira.
    And I am on the 'PANDA' project's 'Glass Documentation' page.
    When I click on the 'Project settings' tab.
    And I click on 'Workflows'.
    And I click on the 'Edit'.
    And I enter my adminstrator password.
    And I hit confirm.
    And I click on 'Add transition'.
    And I enter 'test' as name.
    And I hit 'Add' button.
    And I click on 'Publish'.
    And I selected 'No'.
    And I click on 'Publish'.
    And I navigate back to the project's glass page.
    And I select 'Task' from the 'Issue type' tab.
    Then I can see 'test' in the 'Transitions' tab, under 'Workflow Transations'.