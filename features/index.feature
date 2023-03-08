Feature: Index

    Scenario: User visits index page
        When I go to the index page
        Then I should see a title and description

    Scenario: User visits index page
        When I go to the index page
        Then I should not see a 404 error "Page not found"
    
    
    