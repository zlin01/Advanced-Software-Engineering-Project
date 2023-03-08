Feature: Sign In Page

    Scenario: User is on the sign in page
        When I am on the sign in page
        Then I should see "Sign In"

    Scenario: Sign in page includes email input field
        When I am on the sign in page
        Then I should see "Email"
        And I should see an input box for the email

    Scenario: Sign in page includes password field
        When I am on the sign in page
        Then I should see "Password"
        And I should see an input box for the password

    Scenario: Characters are not fully hidden
        When I am typing in the password input box
        Then I can see the characters I am entering