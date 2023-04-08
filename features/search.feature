Feature: Search

    Scenario: User searches for a concert
        Given I am at the index page
        When I put a location in the search box
        And I click search
        Then I should be taken to the Results page
    
    Scenario: User searches for a concert
        When I put a location that does not exist in the search bar
        And I click the search button
        Then I should see no events found