Feature: Retrieving a list of events via Ticket Master API
  As a developer
  I want to ensure that the Ticket Master API returns the correct list of events
  So that the application can display the list of events to the user

  Scenario: Retrieve a list of events via Ticket Master API
    Given the Ticket Master API endpoint is "https://app.ticketmaster.com/discovery/v2/events.json"
    And my API key is valid
    When I submit a GET request to the API endpoint with a valid query parameter
    Then the response status code should be 200
    And the response should contain a list of events
    And each event in the list should have the correct properties