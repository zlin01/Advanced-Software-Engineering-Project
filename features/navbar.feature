Feature: Navbar

    Scenario: User clicks Home
        Given I am not on the home page
        When I click on Home in the navbar
        Then it should navigate me to the home page
    
    Scenario: User clicks Sign In
        Given I am not signed in
        When I click on Sign In in the navbar
        Then it should navigate me to the sign in page
    
    Scenario: User clicks View Saved Concerts
        Given I am signed in
        When I click on View Saved Concerts in the navbar
        Then it should navigate me to the saved concerts page
    
        