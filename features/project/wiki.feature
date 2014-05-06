Feature: Project Wiki
  Background:
    Given I sign in as a user
    And I own project "Shop"
    Given I visit project wiki page

  Scenario: Add new page
    Given I create the Wiki Home page
    Then I should see the newly created wiki page

  Scenario: Pressing Cancel while editing a brand new Wiki
    Given I click on the Cancel button
    Then I should be redirected back to the Edit Home Wiki page

  Scenario: Edit existing page
    Given I have an existing Wiki page
    And I browse to that Wiki page
    And I click on the Edit button
    And I change the content
    Then I should see the updated content

  Scenario: Pressing Cancel while editing an existing Wiki page
    Given I have an existing Wiki page
    And I browse to that Wiki page
    And I click on the Edit button
    And I click on the Cancel button
    Then I should be redirected back to that Wiki page

  Scenario: View page history
    Given I have an existing wiki page
    And That page has two revisions
    And I browse to that Wiki page
    And I click the History button
    Then I should see both revisions

  Scenario: Destroy Wiki page
    Given I have an existing wiki page
    And I browse to that Wiki page
    And I click on the Edit button
    And I click on the "Delete this page" button
    Then The page should be deleted

  Scenario: View all pages
    Given I have an existing wiki page
    And I browse to that Wiki page
    And I click on the "Pages" button
    Then I should see the existing page in the pages list

  Scenario: Image in wiki repo shown on the page
    Given I have an existing Wiki page with images linked on page
    And I browse to wiki page with images
    Then Image should be shown on the page

  Scenario: File does not exist in wiki repo
    Given I have an existing Wiki page with images linked on page
    And I browse to wiki page with images
    And I click on image link
    Then I should see the new wiki page form

  Scenario: File exists in wiki repo
    Given I have an existing Wiki page with images linked on page
    And I browse to wiki page with images
    And I click on existing image link
    Then I should see the image from wiki repo
