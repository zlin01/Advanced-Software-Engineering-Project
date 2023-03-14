Feature: About navbar click
Scenario: As a user I want to click the about button
    Given a user is on the home page
    When the user clicks on the about button
    Then the user should be taken to the about page

Scenario: As a user I want to click the sign-in button
    Given I am on the home page
    When I decide to click on the sign-in button
    Then I should be taken to the sign-in page
