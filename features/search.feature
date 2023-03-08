Feature: Search

    Scenario: User searches for a concert
        Given I am at the index page
        When I put a URL in the search bar
        And I click search
        Then I should be taken to the Results page
    
    Scenario: User searches for a concert
        Given I am at the index page
        When I put a URL that is not for a concert in the search bar
        And I click search
        Then I should be taken to the Results page
        Then I should see No concerts found