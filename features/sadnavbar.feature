Feature: Sign in navbar click
Scenario: As a user I want to click the sign in button
    Given a user is on the home page
    When the user clicks on the sign in button
    Then the user should not receive a 404 error and be directed to the sign in page


Scenario: As a user I want to click the sign in button
    Given a user is on the home page
    When the user clicks on the sign in button
    Then the user should not receive a 502 gateway error and be directed to the sign in page

Scenario: As a user I want to click the about button
    Given a user is on the home page
    When the user clicks on the about button
    Then the user should not receive a 502 gateway error and be directed to the about page

Scenario: As a user I want to click the sign-in button
    Given a user is on the home page
    When the user clicks on the about button
    Then the user should not receive a 404 gateway error and be directed to the sign-in page