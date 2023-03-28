Feature: Save concerts
    
    Scenario: User searches for a concert
        Given I am signed in
        When I search for a concert
        Then I should see a save concert button

    Scenario: User saves a concert
        Given I am signed in
        And have searched for a concert
        When I click the save concert button
        Then the button text change to "saved"
    
    Scenario: Not signed in user tries to save a concert
        Given I am not signed in
        When I try to save a concert
        Then I should see a message 
        And it should say "You cannot save concerts when you are not signed in"

    