Feature: Retrieving a list of events via Ticket Master API

  Scenario: Retrieve a list of events via Ticket Master API
    Given the Ticket Master API endpoint is "https://app.ticketmaster.com/discovery/v2/events.json"
    And my API key is valid
    When I submit a GET request to the API endpoint with a valid query parameter
    Then the response status code should be 200
    And the response should contain a list of events
    And each event in the list should have the correct properties

  Scenario: Cannot search
    When I am on the search page
    Then I submit a GET request to the API endpoint with a valid query parameter
    Then I saw 502 error or 401 error or another error