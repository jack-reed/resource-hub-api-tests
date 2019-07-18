@tag
Feature: Post and Get Requests for Resource Booker API

  Background:
    * url baseUrl

  Scenario: Example GET Request for retrieving Resource Bookings

    * def oddSchema = { start: '#string', end: '#string', description: '#string', name: '#string', id: '#regex [A-z0-9]{24}', resourceId: '#regex [A-z0-9]{24}'}

    Given path '/Bookings'
    When method get
    Then status 200
    And match response ==

  """
    '#[] oddSchema'

  """