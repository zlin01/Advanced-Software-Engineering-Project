Feature: Results

    Scenario: User searched for a concert
        When I search for a concert
        Then I should see the concert date
        And the concert location
        And the concert price

    Scenario: User searched for a concert
        When I search for a concert
        Then I should not see No concerts found

