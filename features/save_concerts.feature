Feature: Save concerts

    Scenario: Not signed in user tries to save a concert
        When I search for concerts
        Then I should not see a save concert button

    Scenario: User saves a concert
        Given I currently am signed in
        When I search for a concert
        And I click the save concert button
        And I go to my saved concerts page
        Then I should see that concert
    

    