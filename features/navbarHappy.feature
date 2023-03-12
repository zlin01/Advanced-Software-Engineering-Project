Feature: About navbar click
Scenario: As a user I want to click the about button
    Given a user is on the home page
    When the user clicks on the about button
    Then the user should be taken to the about page

Scenario: As a user I want to click the sign-in button
    Given a user is on the home page
    When the user clicks on the sign-in button
    Then the user should be taken to the sign-in page


Scenario: As a user I want to click the View Saved concerts button when im signed in
    Given a user is on the home page
    When the user clicks on the view Saved concerts page
    Then the user should be taken to the view saved concert page
